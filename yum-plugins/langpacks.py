# -*- coding: utf-8 -*-
#
# Conditional language support packages, via a yum plugin
#
# Copyright © 2009-2013 Red Hat, Inc.
#
# Authors: Bill Nottingham <notting@redhat.com>
#          Jens Petersen <petersen@redhat.com>
#          Parag Nemade <pnemade@redhat.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

from yum.plugins import TYPE_CORE

from yum.constants import *

import fnmatch
import glob
import locale
import os
import rpm

import yum.Errors
import yum.misc, sys

class _lazy_import_langtable:

    def __init__(self):
        self.mod = None

    def __getattr__(self, name):
        if self.mod is None:
            import langtable
            self.mod = langtable
        return getattr(self.mod, name)

langtable = _lazy_import_langtable()

def iterparse(filename):
    try:
        for e in yum.misc.cElementTree_iterparse(filename):
            yield e
    except SyntaxError, e:
        print >>sys.stderr, '%s: %s' % (filename, str(e))

requires_api_version = '2.5'
plugin_type = TYPE_CORE

langs = []
langinstalled = []
whitelisted_locales = ['en_AU', 'en_CA', 'en_GB', 'pt_BR', 'pt_PT', 'zh_CN', 'zh_TW']
conditional_pkgs = {}

def _setup_conditional_pkgs(repos):
    # This takes ~0.2 seconds to init, so only do it if we need to
    if not conditional_pkgs:
        my_postreposetup_hook(repos)

conffile = None

def get_unique_language_names(alllanglist):
    uniq_lang_list = []
    dup = 0
    processed = 0
    for item in alllanglist :
      if item.count('_') or len(item) < 4:
	processed = processed + 1
	langname = langtable.language_name(languageId=item, languageIdQuery="en").encode("UTF-8")

	if len(langname) < 1:
           uniq_lang_list.append(langname)

	if langname not in uniq_lang_list:
           uniq_lang_list.append(langname)
	else :
           dup = dup + 1
      else:
        if item not in uniq_lang_list:
           uniq_lang_list.append(item)
	else:
	   dup = dup + 1

    return sorted(uniq_lang_list)

def read_available_langpacks (base = None):
    yb = base

    srchpkglist = []
    skip_pkg_list = ['devel', 'browser', 'debuginfo', 'music', 'overrides',
                         'Brazil', 'British', 'Farsi', 'LowSaxon', 'cs_CZ',
                         'mysql', 'common', 'examples', 'ibase', 'odbc',
                         'postgresql', 'static']
    langlist = []
    seen = set()

    for basepkg in conditional_pkgs:
        conds = conditional_pkgs[basepkg]
        pkg_pat = conds[0]
        # Special case to skip tesseract packages
        if not (pkg_pat.startswith("tesseract-langpack-")):
           srchpkglist.append(pkg_pat[:-2])

    res = yb.searchGenerator(['name'], srchpkglist)
    res = sorted(res, key=lambda x: x[0])

    for item in srchpkglist:
        srchpkg = item
        for (pkg, values) in res:
            if pkg.name not in seen:
                if pkg.name.startswith(srchpkg):
                   # lidx to find index from where shortlang code start in pkg.name
	           lidx = srchpkg.count('-')
		   langsplit = pkg.name.split('-')
	           # lname is available language pack
		   lname = langsplit[lidx]
		   # Special case for parsing packages alphabet_sounds_*
		   if lname.startswith("alphabet_sounds_"):
		      lname = lname[16:]
	           seen.add(pkg.name)

		   if lname not in langlist:
		      if lname not in skip_pkg_list:
		           langlist.append(lname)

    return (seen, langlist)

def lc_to_langname(lc):
    return langtable.language_name(languageId=lc, languageIdQuery="en").encode("UTF-8")

def langname_to_lc(langname):
    return langtable.languageId(languageName=langname)

def read_installed_langpacks():
    global conffile
    if not conffile:
        return []
    ret = []
    try:
        f = open(conffile,"r")
        list = f.readlines()
        f.close()
    except (IOError, OSError), e:
        return []
    for item in list:
        item = item.strip()
        ret.append(item)
    return ret

def write_installed_langpacks(list):
    global conffile
    if not conffile:
        return
    dir = os.path.dirname(conffile)
    if not os.path.exists(dir):
        try:
            os.makedirs(dir, 0755)
        except (IOError, OSError), e:
            return
    try:
        tmp = open(conffile + ".tmp", "w+")
        for line in list:
            tmp.write(line + "\n")
        tmp.close()
        os.rename(conffile + ".tmp", conffile)
    except (IOError, OSError), e:
        return

def add_langpack_to_installed_list(langs):
    modified = 0
    list = read_installed_langpacks()
    for lang in langs:
        if lang not in list:
            list.append(lang)
            modified = 1
    if modified:
        write_installed_langpacks(list)

def remove_langpack_from_installed_list(langs):
    modified = 0
    removelang = ""
    list = read_installed_langpacks()
    for lang in langs:
        if len(lang) > 3 and lang.find("_") == -1:
	   removelang = langname_to_lc(lang)
        else:
           removelang = lang
        if removelang in list:
            list.remove(removelang)
            modified = 1
    if modified:
        write_installed_langpacks(list)

def config_hook(conduit):
    global langs
    global conffile

    (lang, encoding) = locale.getdefaultlocale()
    # LANG=C returns (None, None). Set a default.
    if lang == None:
        lang = "en"
    conflist = conduit.confString('main', 'langpack_locales', default=lang)
    if conflist:
        tmp = conflist.split(",")
        for confitem in tmp:
            confitem = confitem.strip()
            conduit.info(3, "Adding %s to language list" % (confitem,))
            langs.append(confitem)
    if os.environ.has_key("LANGUAGE"):
        list = os.environ["LANGUAGE"].split(':')
        for confitem in list:
            confitem = confitem.strip()
            conduit.info(3, "Adding %s to language list" % (confitem,))
            langs.append(confitem)

    parser = conduit.getOptParser()
    if not parser:
        return
    if hasattr(parser, 'plugin_option_group'):
        parser = parser.plugin_option_group

    if hasattr(conduit._base, 'registerCommand'):
        conduit.registerCommand(LanginstallCommand())
        conduit.registerCommand(LangremoveCommand())
        conduit.registerCommand(LanglistCommand())
        conduit.registerCommand(LanginfoCommand())
        conduit.registerCommand(LangavailableCommand())

def init_hook(conduit):
    global langs
    global conffile

    # Do this here to avoid recursion
    yb = conduit._base
    conffile = yb.conf.persistdir + '/plugins/langpacks/installed_langpacks'
    list = read_installed_langpacks()
    for lang in list:
        if not lang.startswith("#"):
            conduit.info(3, "Adding %s to language list" % (lang,))
            langs.append(lang)

# This takes ~0.2 seconds to init, so don't do it for non-transaction commands.
# This does mean we might end up downloading the groups file in postresolve,
# but meh.
def my_postreposetup_hook(repos):
    global conditional_pkgs

    for repo in repos:
        try:
            infile = repo.getGroups()
        except yum.Errors.YumBaseError:
            continue

        if not infile:
            continue
        infile = yum.misc.decompress(infile, check_timestamps=True)
        for event, elem in iterparse(infile):
            if elem.tag == "langpacks":
                for child in elem.getchildren():
                    if child.tag != "match":
                        continue
                    name = child.get("name")
                    install = child.get("install")

                    if name not in conditional_pkgs:
                        conditional_pkgs[name] = []
                    conditional_pkgs[name].append(install)

def get_matches(sack, list):
    ret = []
    for match in list:
        p = sack.searchProvides(match)
        if p:
            ret = ret + p
    return ret

def get_uniq_available_pkgs(pkgs):
   uniq_list = []
   for pkg in pkgs:
     try:
       pkgname = str(pkg)
       woarch = pkgname.rsplit('.', 1)[0]
       worel = woarch.rsplit('-', 1)[0]
       wover = worel.rsplit('-', 1)[0]
     except Exception, e:
       print '%s **** %s' % (e, pkg)
       continue

     check_epoch = wover.find(":", 0, len(wover))
     if check_epoch != -1 :
          uniq_list.append(wover[check_epoch+1:])
     else :
          uniq_list.append(wover)
   return sorted(uniq_list)

def get_matches_from_repo(langpack_pkgs, lang):
    avl_langpack_pkgs = []
    #Check if lang is empty, case like input mara, marat
    if len(lang) == 0:
        return avl_langpack_pkgs
    lname = lc_to_langname(lang)
    lang = "-" + lang
    for pkgs in langpack_pkgs:
        if len(lang) < 5 and lang.find("_") == -1:
            if pkgs.find(lang, len(pkgs)-len(lang), len(pkgs)) > 0 :
                avl_langpack_pkgs.append(pkgs)
            if lname:
                if pkgs.find(lname, len(pkgs)-len(lname), len(pkgs)) > 0 :
                    avl_langpack_pkgs.append(pkgs)

        if len(lang) > 4:
            if lang.find("_") != -1:
               mainlang = lang[0:lang.find("_")]
               if lang.find("_CN") != -1 and pkgs.find("-CN") != -1:
                   # this check to ensure Release_notes package 
                   # not listed twice for langinfo of zh_CN
                   # only show man-pages-zh-CN
                   if pkgs.find("man-pages") != -1:
                      avl_langpack_pkgs.append(pkgs)
               if pkgs.find(lang, len(pkgs)-len(lang), len(pkgs)) > 0:
                   avl_langpack_pkgs.append(pkgs)
               # if input pt_BR then show for pt and pt_BR
               # if input zh_CN then show for zh and zh_CN
               elif pkgs.find(mainlang, len(pkgs)-len(mainlang), len(pkgs)) > 0:
                     avl_langpack_pkgs.append(pkgs)

               if lname:
                   if pkgs.find(lname, len(pkgs)-len(lname), len(pkgs)) > 0:
                       avl_langpack_pkgs.append(pkgs)

    return sorted(avl_langpack_pkgs)

def get_matches_from_ts(lang, base = None):
    yb = base
    sack = base.pkgSack

    pkgmatches = []
    for basepkg in conditional_pkgs:
        if yb.rpmdb.searchNevra(name=basepkg) or yb.tsInfo.matchNaevr(name=basepkg):
            conds = conditional_pkgs[basepkg]
            patterns = map(lambda x: x % (lang,), conds)
            shortlang = lang.split('_')[0]
            if shortlang != lang:
                patterns = patterns + map(lambda x: x % (shortlang,), conds)
            for p in patterns:
                if p not in pkgmatches:
                    pkgmatches.append(p)

    pkgs = get_matches(sack, pkgmatches)
    pkgs_uniq = get_uniq_available_pkgs( pkgs)
    return pkgs_uniq

def add_deps_to_ts(conduit, po):
    global langinstalled

    conds = conditional_pkgs[po.name]
    sack = conduit.getRepos().getPackageSack()
    yb = conduit._base
    for lang in langs:
        lang = lang[:-6]
        if lang.find("zh_CN") != -1 and po.name.find("man-pages") != -1:
           try:
              yb.install(pattern="man-pages-zh-CN")
              if lang not in langinstalled:
                  langinstalled.append(lang)
           except yum.Errors.YumBaseError:
              conduit.info(5,"Failed to install package man-pages-zh-CN")
              continue
        if lang.find("zh_CN") != -1 and po.name.find("libreoffice-core") != -1:
           try:
              yb.install(pattern="libreoffice-langpack-zh-Hans")
              if lang not in langinstalled:
                  langinstalled.append(lang)
           except yum.Errors.YumBaseError:
              conduit.info(5,"Failed to install package libreoffice-langpack-zh-Hans")
              continue
        # This is strange case where pt_BR works but not zh_CN, hardcode this
        if lang.find("zh_CN") != -1 and po.name.find("gimp-help") != -1:
           try:
              yb.install(pattern="gimp-help-zh_CN")
              if lang not in langinstalled:
                  langinstalled.append(lang)
           except yum.Errors.YumBaseError:
              conduit.info(5,"Failed to install package gimp-help-zh_CN")
              continue
        if lang.find("zh_TW") != -1 and po.name.find("libreoffice-core") != -1:
           try:
              yb.install(pattern="libreoffice-langpack-zh-Hant")
              if lang not in langinstalled:
                  langinstalled.append(lang)
           except yum.Errors.YumBaseError:
              conduit.info(5,"Failed to install package libreoffice-langpack-zh-Hant")
              continue
        if lang.find("pt_BR") != -1 and po.name.find("libreoffice-core") != -1:
           try:
              yb.install(pattern="libreoffice-langpack-pt-BR")
              if lang not in langinstalled:
                  langinstalled.append(lang)
           except yum.Errors.YumBaseError:
              conduit.info(5,"Failed to install package libreoffice-langpack-zh-Hant")
              continue
        else: 
            pkgs = get_matches(sack, list = map(lambda x: x % (lang,), conds))
            if not pkgs and lang != '*':
                shortlang = lang.split('_')[0]
                pkgs = get_matches(sack, list = map(lambda x: x % (shortlang,), conds))
            for pkg in pkgs:
                if yb.rpmdb.searchNevra(name=pkg.name):
                    continue
                if yb.tsInfo.matchNaevr(name=pkg.name):
                    continue
                if hasattr(conduit, 'registerPackageName'):
                    conduit.registerPackageName("yum-langpacks")
                try:
                   yb.install(pattern=pkg.name)
                   if lang not in langinstalled:
                      langinstalled.append(lang)
                except yum.Errors.YumBaseError:
                    conduit.info(5,"Failed to install package %s" % (pkg.name,))
                    continue

def remove_deps_from_ts(conduit, po):
    conds = conditional_pkgs[po.name]
    yb = conduit._base
    pkgmatches = []
    for c in conds:
        for lang in langs:
            pkgmatches.append(c % (lang,))
            shortlang = lang.split('_')[0]
            pkgmatches.append(c % (shortlang,))
    if not pkgmatches:
        return
    for pkg in get_matches(yb.rpmdb, pkgmatches):
        if hasattr(conduit, 'registerPackageName'):
            conduit.registerPackageName("yum-langpacks")
        try:
            yb.remove(pattern=pkg.name)
        except yum.Errors.YumBaseError:
            conduit.info(5,"Failed to remove package %s" % (pkg.name,))
            continue

def add_matches_from_ts(conduit, lang, base = None):
    global langinstalled

    if conduit:
        yb = conduit._base
        sack = conduit.getRepos().getPackageSack()
    else:
        yb = base
        sack = base.pkgSack
    pkgmatches = []

    for basepkg in conditional_pkgs:
        if yb.rpmdb.searchNevra(name=basepkg) or yb.tsInfo.matchNaevr(name=basepkg):
            conds = conditional_pkgs[basepkg]
            patterns = map(lambda x: x % (lang,), conds)
            shortlang = lang.split('_')[0]
            if shortlang != lang:
                patterns = patterns + map(lambda x: x % (shortlang,), conds)
            for p in patterns:
                if p not in pkgmatches:
                    pkgmatches.append(p)

    # This is special case to cover package name man-pages-zh-CN
    # which should have been named as man-pages-zh_CN
    if lang.find("zh_CN") != -1:
       pkgmatches.append("man-pages-zh-CN")

    pkgs = get_matches(sack, pkgmatches)
    for pkg in pkgs:
        if yb.rpmdb.searchNevra(name=pkg.name):
            continue
        if yb.tsInfo.matchNaevr(name=pkg.name):
            continue
        if conduit and hasattr(conduit, 'registerPackageName'):
            conduit.registerPackageName("yum-langpacks")
        try:
            yb.install(pattern=pkg.name)
            if lang not in langinstalled:
                langinstalled.append(lang)
        except yum.Errors.YumBaseError:
            if conduit:
                conduit.info(5,"Failed to install package %s" %(pkg.name,))
            continue

def remove_matches_from_ts(conduit, lang, base = None):
    if conduit:
        yb = conduit._base
    else:
        yb = base
    pkgmatches = []
    for conds in conditional_pkgs.values():
        patterns = map(lambda x: x % (lang,), conds)
        shortlang = lang.split('_')[0]
        if shortlang != lang:
            patterns = patterns +  map(lambda x: x % (shortlang,), conds)
        for p in patterns:
            if p not in pkgmatches:
                pkgmatches.append(p)

    # This is special case to cover package name man-pages-zh-CN
    # which should have been named as man-pages-zh_CN
    if lang.find("zh_CN") != -1:
       pkgmatches.append("man-pages-zh-CN")

    pkgs = get_matches(yb.rpmdb, pkgmatches)
    for pkg in pkgs:
        if conduit and hasattr(conduit, 'registerPackageName'):
            conduit.registerPackageName("yum-langpacks")

        try:
            yb.remove(pattern=pkg.name)
        except yum.Errors.YumBaseError:
            if conduit:
                conduit.info(5,"Failed to remove package %s" %(pkg.name,))
            continue

def postresolve_hook(conduit):
    _setup_conditional_pkgs(conduit.getRepos().listEnabled())

    yb = conduit._base
    groups_added = []
    groups_removed = []
    for member in conduit.getTsInfo().getMembers():
        if member.output_state in (TS_INSTALL, TS_TRUEINSTALL):
            for g in member.groups:
                if g in groups_added:
                    continue
                group = yb.comps.return_group(g)
                if group.langonly:
                    add_matches_from_ts(conduit, group.langonly)
                    groups_added.append(group.groupid)
            po = member.po
            if po.name in conditional_pkgs:
                add_deps_to_ts(conduit, po)
        if member.output_state in (TS_ERASE, TS_OBSOLETED):
            for g in member.groups:
                if g in groups_removed:
                    continue
                group = yb.comps.return_group(g)
                if group.langonly:
                    remove_matches_from_ts(conduit, group.langonly)
                    groups_removed.append(group.groupid)
            po = member.po
            if po.name in conditional_pkgs:
                remove_deps_from_ts(conduit, po)

def posttrans_hook(conduit):
    if langinstalled:
        add_langpack_to_installed_list(langinstalled)

class LanginstallCommand:
    def getNames(self):
        return ['langinstall']

    def getUsage(self):
        return "[langinstall lang1|lang2|...]"

    def getSummary(self):
        return "Install appropriate language packs for a language"

    def doCheck(self, base, basecmd, extcmds):
        pass

    def doCommand(self, base, basecmd, extcmds):
        if base.conf.uid != 0:
            return 1, ['You need to be root to perform this command.']
        base.repos.doSetup()
        _setup_conditional_pkgs(base.repos.listEnabled())
        for lang in extcmds:
            if len(lang) > 3 and lang.find("_") == -1:
                add_matches_from_ts(None, langname_to_lc(lang), base)
	    else:
                add_matches_from_ts(None, lang, base)
        (code, msgs) = base.buildTransaction()
        if code == 1:
            return code, msgs
        if len(base.tsInfo) == 0:
            return 0, ['No langpacks to install for: %s' % (' '.join(extcmds))]
        rc = base.doTransaction()
        if type(rc) == type((0,)) and len(rc) == 2:
            return rc
        elif rc < 0:
            return 1, ['Language pack installation aborted!']
        else:
            return rc, ['Language packs installed for: %s' % (' '.join(langinstalled))]

class LangremoveCommand:
    def getNames(self):
        return ['langremove']

    def getUsage(self):
        return "[langremove lang1|lang2|...]"

    def getSummary(self):
        return "Remove installed language packs for a language"

    def doCheck(self, base, basecmd, extcmds):
        pass

    def doCommand(self, base, basecmd, extcmds):
        if base.conf.uid != 0:
            return 1, ['You need to be root to perform this command.']
        base.repos.doSetup()
        _setup_conditional_pkgs(base.repos.listEnabled())
        for lang in extcmds:
            if len(lang) > 3 and lang.find("_") == -1:
               remove_matches_from_ts(None, langname_to_lc(lang), base)
            else:
               remove_matches_from_ts(None, lang, base)
        (code, msgs) = base.buildTransaction()
        if code == 1:
            return code, msgs
        if len(base.tsInfo) == 0:
            remove_langpack_from_installed_list(extcmds)
            return 0, ['No langpacks to remove for: %s' % (' '.join(extcmds))]
        rc =  base.doTransaction()
        if type(rc) == type((0,)) and len(rc) == 2:
            return rc
        elif rc < 0:
            return 1, ['Language pack removal aborted!']
        else:
            remove_langpack_from_installed_list(extcmds)
            return rc, ['Language packs removed for: %s' % (' '.join(extcmds))]

class LanglistCommand:
    def getNames(self):
        return ['langlist']

    def getUsage(self):
        return "[langlist]"

    def getSummary(self):
        return "List installed languages"

    def doCheck(self, base, basecmd, extcmds):
        pass

    def doCommand(self, base, basecmd, extcmds):
        list = read_installed_langpacks()
        if list:
           print "Installed languages:"
           for item in list:
               if not item.startswith("#"):
                   print "\t" + lc_to_langname(item)
        else:
            print("No langpacks installed")

        return 0, [""]

class LanginfoCommand:
    def getNames(self):
        return ['langinfo']

    def getUsage(self):
        return "[langinfo lang1|lang2|...]"

    def getSummary(self):
        return "List languages information"

    def doCheck(self, base, basecmd, extcmds):
        pass

    def doCommand(self, base, basecmd, extcmds):
        base.repos.doSetup()
        _setup_conditional_pkgs(base.repos.listEnabled())
        (langpack_pkgs, ra_list) = read_available_langpacks(base)

        for lang in extcmds:
            print "Language-Id={0}".format(lang)
            if len(lang) == 1:
                print "Not a valid input"
                return 0, [""]
            # Case to handle input like zh_CN, pt_BR
            elif lang in whitelisted_locales and len(lang) > 3 and lang.find("_") != -1:
                list_pkgs = get_matches_from_repo(langpack_pkgs, lang)
                # check RHEL7 release notes package
                if lang.find("pt_BR") != -1:
                   relnotpkg = "Red_Hat_Enterprise_Linux-Release_Notes-7-" + "pt-BR"
                   list_pkgs.append("libreoffice-langpack-pt-BR")
                if lang.find("zh_CN") != -1:
                   relnotpkg = "Red_Hat_Enterprise_Linux-Release_Notes-7-" + "zh-CN"
                   list_pkgs.append("libreoffice-langpack-zh-Hans")
                if lang.find("zh_TW") != -1:
                   relnotpkg = "Red_Hat_Enterprise_Linux-Release_Notes-7-" + "zh-TW"
                   list_pkgs.append("libreoffice-langpack-zh-Hant")
                for pkg in langpack_pkgs:
                    if pkg.find(relnotpkg) != -1:
                       list_pkgs.append(pkg)
                       break
            # Case for full language name input like Japanese
            elif len(lang) > 3 and lang.find("_") == -1:
                if len(langname_to_lc(lang)) == 0:
                   print "Not a valid language name"
                   return 0, [""]

                list_pkgs = get_matches_from_repo(langpack_pkgs, langname_to_lc(lang))
                # check RHEL7 release notes package
                relnotpkg = "Red_Hat_Enterprise_Linux-Release_Notes-7-" + langname_to_lc(lang)
                for pkg in langpack_pkgs:
                    if pkg.find(relnotpkg) != -1:
                       list_pkgs.append(pkg)
                       break
            # General case to handle input like ja, ru, fr, it
            else:
                if lang.find("_") == -1:
                     list_pkgs = get_matches_from_repo(langpack_pkgs, lang)
                     # check RHEL7 release notes package
                     relnotpkg = "Red_Hat_Enterprise_Linux-Release_Notes-7-" + lang
                     for pkg in langpack_pkgs:
                         if pkg.find(relnotpkg) != -1:
                            list_pkgs.append(pkg)
                            break
                # Case to not process mr_IN or mai_IN locales
                else:
                     list_pkgs = []
            for pkg in list_pkgs:
		print "  " + pkg
	    if len(list_pkgs) == 0:
                 print "No langpacks to show for languages: {0}".format(lang)
        return 0, [""]

class LangavailableCommand:
    def getNames(self):
        return ['langavailable']

    def getUsage(self):
        return "[langavailable lang1|lang2|...]"

    def getSummary(self):
        return "Check available languages"

    def doCheck(self, base, basecmd, extcmds):
        pass

    def doCommand(self, base, basecmd, extcmds):
        base.repos.doSetup()
        _setup_conditional_pkgs(base.repos.listEnabled())

        (language_packs, ra_list) = read_available_langpacks(base)
        langlist = get_unique_language_names(ra_list)

        if not extcmds:
            print "Displaying all available language:-"
            for litem in langlist:
                print "{0} [{1}]".format(litem, langname_to_lc(litem))
        else:
            for lang in extcmds:
                if len(lang) > 3 and lang.find("_") == -1:
                    if lang.lower() in map(str.lower, langlist):
                        print "{0} is available".format(lang)
                    else:
                        print "{0} is not available".format(lang)
                else:
                    if lc_to_langname(lang) in langlist:
                        print "{0} is available".format(lang)
                    else:
                        print "{0} is not available".format(lang)

        return 0, [""]

