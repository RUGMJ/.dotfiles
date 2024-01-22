#!/bin/bash

source packages.sh

cp base.md README.md

merge_readmes() {
    local package_name="$1"
    local readme_path="$package_name/README.md"

    if [ -f "$readme_path" ]; then
        echo -e "\n\n## $package_name\n\n" >> README.md
        cat "$readme_path" >> README.md
    fi
}

for_each_package merge_readmes
