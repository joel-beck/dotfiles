#!/usr/bin/env bash

# Given a list of vscode extensions created by `code --list-extensions`, this script
# installs these extensions on a new machine.

vscode_extensions_txt_path="./../vscode/extensions.txt"

if [[ -z "$vscode_extensions_txt_path" ]]; then
    echo "Please provide a path to the file containing the list of vscode extensions."
    exit 1
fi

if [[ ! -f "$vscode_extensions_txt_path" ]]; then
    echo "The provided path does not point to a file."
    exit 1
fi

while read -r extension; do
    code --install-extension "$extension"
done <"$vscode_extensions_txt_path"
