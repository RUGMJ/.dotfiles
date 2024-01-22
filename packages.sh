#!/usr/bin/env bash

ignored_directories=("./" "./.git" "./.github")

for_each_package ()
{
	local func="$1"
	local packages=($(find ./ -maxdepth 1 -type d))

	for package in "${packages[@]}"; do
		if [[ ! " ${ignored_directories[@]} " =~ " $package " ]]; then
			package_name="${package#./}"

			$func "$package_name"
		fi
	done
}
