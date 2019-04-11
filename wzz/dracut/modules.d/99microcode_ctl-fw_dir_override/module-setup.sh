#!/bin/bash

# Hack in additional firmware directories for supported caveats.
#
# SPDX-License-Identifier: CC0-1.0

check() {
	return 0
}

install() {
	local FW_DIR=/lib/firmware
	local DATA_DIR=/usr/share/microcode_ctl/ucode_with_caveats
	local CFG_DIR="/etc/microcode_ctl/ucode_with_caveats"
	local check_caveats=/usr/libexec/microcode_ctl/check_caveats

	local verbose_opt
	local cc_out
	local path
	local ignored
	local do_skip_host_only
	local p

	verbose_opt=
	[ 4 -gt "$stdloglvl" ] || verbose_opt="-v"

	# HACK: we override external fw_dir variable in order to get
	#       an additional ucode based on the kernel version.
	dinfo "  microcode_ctl module: mangling fw_dir"

	[ -z "$fw_dir_l" ] || {
		dinfo "    microcode_ctl: avoid touching fw_dir as" \
		      "it has been changed (fw_dir_l is '$fw_dir_l')"

		return 0
	}

	# Reset fw_dir to avoid inclusion of kernel-version-specific directories
	# populated with microcode for the late load
	[ "x$fw_dir" != \
	  "x/lib/firmware/updates /lib/firmware /lib/firmware/$kernel" ] || {
		fw_dir="/lib/firmware/updates /lib/firmware"
		dinfo "    microcode_ctl: reset fw_dir to \"${fw_dir}\""
	}

	while read -d "/" -r i; do
		dinfo "    microcode_ctl: processing data directory " \
		      "\"$DATA_DIR/$i\"..."

		if ! cc_out=$($check_caveats -e -k "$kernel" -c "$i" $verbose_opt)
		then
			dinfo "    microcode_ctl: kernel version \"$kernel\"" \
			      "failed early load check for \"$i\", skipping"
			continue
		fi

		path=$(printf "%s" "$cc_out" | sed -n 's/^paths //p')
		[ -n "$path" ] || {
			ignored=$(printf "%s" "$cc_out" | \
					sed -n 's/^skip_cfgs //p')

			if [ -n "$ignored" ]; then
				dinfo "    microcode_ctl: configuration" \
				      "\"$i\" is ignored"
			else
				dinfo "    microcode_ctl: no microcode paths" \
				      "are associated with \"$i\", skipping"
			fi

			continue
		}

		if [ "x" != "x$hostonly" ]; then
			do_skip_host_only=0

			local sho_overrides="
				$CFG_DIR/skip-host-only-check
				$CFG_DIR/skip-host-only-check-$i
				$FW_DIR/$kernel/skip-host-only-check
				$FW_DIR/$kernel/skip-host-only-check-$i"

			for p in $(echo "$sho_overrides"); do
				[ -e "$p" ] || continue

				do_skip_host_only=1
				dinfo "    microcode_ctl: $i; skipping" \
				      "Host-Only check, since \"$p\" exists."
				break
			done
		else
			do_skip_host_only=1
		fi

		if [ 0 -eq "$do_skip_host_only" ]; then
			local hostonly_passed=0
			local ucode
			local uvendor
			local ucode_dir=""

			ucode=$(get_ucode_file)
			uvendor=$(get_cpu_vendor)

			case "$uvendor" in
			Intel)
				ucode_dir="intel-ucode"
				;;
			AMD)
				ucode_dir="and-ucode"
				;;
			*)
				dinfo "    microcode_ctl: unknown CPU" \
				      "vendor: \"$uvendor\", bailing out of" \
				      "Host-Only check"
				continue
				;;
			esac

			# $path is a list of globs, so it needs special care
			for p in $(printf "%s" "$path"); do
				find "$DATA_DIR/$i" -path "$DATA_DIR/$i/$p" \
					-print0 \
				    | grep -zFxq \
					"$DATA_DIR/$i/$ucode_dir/$ucode" \
				    || continue

				dinfo "    microcode_ctl: $i: Host-Only" \
				      "mode is enabled and" \
				      "\"$ucode_dir/$ucode\" matches \"$p\""

				hostonly_passed=1
				break
			done

			[ 1 -eq "$hostonly_passed" ] || {
				dinfo "    microcode_ctl: $i: Host-Only mode" \
				      "is enabled and ucode name does not" \
				      "match the expected one, skipping" \
				      "caveat (\"$ucode\" not in \"$path\")"
				continue
			}
		fi

		dinfo "      microcode_ctl: $i: caveats check for kernel" \
		      "version \"$kernel\" passed, adding" \
		      "\"$DATA_DIR/$i\" to fw_dir variable"
		fw_dir="$DATA_DIR/$i $fw_dir"
	done <<-EOF
	$(find "$DATA_DIR" -maxdepth 1 -mindepth 1 -type d -printf "%f/")
	EOF

	dinfo "    microcode_ctl: final fw_dir: \"${fw_dir}\""
}

