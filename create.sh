#!/usr/bin/env bash

function usage {
    echo "usage: $0 <vm_type> <vm_provider>"
    echo "  supported options for vm_type are:"
    echo "    alma9"
    echo "    fedora_35"
    echo "    fedora_36"
    echo "    ubuntu_20.04"
    echo "    ubuntu_22.04"
    echo "  supported options for vm_provider are:"
    echo "    parallels (default)"
    echo "    virtualbox"
    exit 1
}

if [[ -z $1 ]]; then
    usage
elif [[ ! -z $1 && \
    $1 != "alma9" \
    && $1 != "fedora_35" \
    && $1 != "fedora_36" \
    && $1 != "ubuntu_20.04" \
    && $1 != "ubuntu_22.04" \
]]; then
    usage
fi

vm_provider=""

if [[ -z $2 ]]; then
    vm_provider="parallels"
elif [[ ! -z $2 && $2 != "virtualbox" && $2 != "parallels" ]]; then
    usage
else
    vm_provider=$2
fi

if [[ $1 == "ubuntu_"* || $1 == "fedora_"* ]]; then
    base_folder=$(echo $1 | cut -d '_' -f 1)
    sub_folder=$(echo $1 | cut -d '_' -f 2)

    cd $base_folder/$sub_folder
else
    cd $1
fi

export OS_ARCH=$1-$(uname -m)
vagrant up --provider=$vm_provider
cd -
