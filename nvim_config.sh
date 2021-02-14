#!/bin/bash

config="${HOME}/.config"

if [[ -d "${config}" ]]; then
    nvim=$(ls -la $config | grep nvim)
    if [[ $nvim ]]; then
        echo "It seems that your nvim config files aready exists !"
        exit
    fi
    git clone https://github.com/zengshenggit/nvim "$config/nvim"
fi

