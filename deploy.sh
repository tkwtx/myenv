#!/bin/bash

dotfiles=(.zshrc)

for file in "${dotfiles[@]}"; do
    ln -sv $file ~/
done
