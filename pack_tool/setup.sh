#!/bin/bash

FILE="$HOME/.config/packtool/config.yaml"

if [[ -f $FILE ]];then
		echo "Config detected."
		echo "Edit config directly if necessary:"
		echo "$FILE"
		exit 0
else
		pip3 install fire
		echo 'export PATH="'$PWD':$PATH"' >> ~/.bashrc
		echo "pack added to PATH."
		source ~/.bashrc
		chmod +x pack
		mkdir -p ~/.config/packtool/tmp
		echo "tmp_path: $HOME/.config/packtool/tmp/" >> ~/.config/packtool/config.yaml
		echo "log_path: $HOME/.config/packtool/history.log" >> ~/.config/packtool/logs.log
		echo "config folder created: ~/.config/packtool/"
fi
