#!/usr/bin/env bash

function usage {
    echo "usage: $0 <vm_type>"
    echo "  supported options for vm_type are:"
    echo "    alma"
    echo "    fedora_38"
    echo "    fedora_39"
    echo "    rocky9"
    echo "    ubuntu_20.04"
    echo "    ubuntu_22.04"
    exit 1
}

if [[ -z $1 ]]; then
    usage
elif [[ ! -z $1 && \
    $1 != "alma9" \
    && $1 != "fedora_38" \
    && $1 != "fedora_39" \
    && $1 != "rocky9" \
    && $1 != "ubuntu_20.04" \
    && $1 != "ubuntu_22.04" \
]]; then
    usage
fi

if [[ $1 == "ubuntu_"* || $1 == "fedora_"* ]]; then
    base_folder=$(echo $1 | cut -d '_' -f 1)
    sub_folder=$(echo $1 | cut -d '_' -f 2)

    cd $base_folder/$sub_folder
else
    cd $1
fi

export OS_ARCH=$1-$(uname -m)
vagrant ssh -- -X
cd -
