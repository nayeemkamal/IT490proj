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
		echo "pack added to PATH in bashrc."
		source ~/.bashrc
		chmod +x pack
		mkdir -p ~/.config/packtool/tmp
		mkdir ~/.config/packtool/new_packages
		mkdir ~/.config/packtool/backup
		touch $HOME/.config/packtool/logs.log
		echo "tmp_path: $HOME/.config/packtool/tmp/" >> ~/.config/packtool/config.yaml
		echo "log_path: $HOME/.config/packtool/logs.log" >> ~/.config/packtool/config.yaml
		echo "new_pkg_path: $HOME/.config/packtool/new_packages/" >> ~/.config/packtool/config.yaml
		echo "backup_path: $HOME/.config/packtool/backup/" >> ~/.config/packtool/config.yaml

		echo "config folder created: ~/.config/packtool/"
fi

