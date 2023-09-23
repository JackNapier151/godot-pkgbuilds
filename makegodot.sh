#! /usr/bin/env bash
# vim: ft=bash fileencoding=utf-8 sts=4 sw=4 et:
# -*- coding: utf-8 -*-

srdir='/directorio/en/el/que/estoy/' # Manual
srdir=$(cat ./makegodot.env) # In .env file (rename by removing .bak)

directories=(
'godot-base'

# 'godot-meta'

# 'godot-git'

'godot4-dev-bin'
'godot4-alpha-bin'
'godot4-beta-bin'
'godot4-rc-bin'
'godot4-stable-rc-bin'
'godot4-stable-bin'

'godot3-alpha-bin'
'godot3-beta-bin'
'godot3-rc-bin'
'godot3-stable-rc-bin'
'godot3-stable-bin'

'godot2-stable-rc-bin'
'godot2-stable-bin'

'godot1-stable-bin'
)

makerepo () {
	ln -s ${srdir}/${1}/*.pkg.tar.zst ${srdir}/godot-repo/
	ln -s ${srdir}/${1}/*.pkg.tar.zst.sig ${srdir}/godot-repo/
	repo-add -R -n -p ${srdir}/godot-repo/godot.db.tar.zst ${srdir}/${1}/*.pkg.tar.zst
}

rmbrokenlinks (){
	for link in $(find "${srdir}/godot-repo/" -xtype l);do
		echo "$(tput setaf 1) $link $(tput sgr 0)"
		rm -f $link
	done
}

makeapp () {
	makepkg -c --sign --allsource
	makepkg -c --sign
}

controlssh (){
	if [[ "$1" == "init" ]] ; then
		eval $(ssh-agent -s)
		ssh-add /home/odin/.ssh/jacknapier151gmail
	fi

	if [[ "$1" == "close" ]] ; then
		pkill ssh-agent
	fi
}

gitupdate (){
	git add .
	read -p "Commit: " input
	git commit -m "${input}"
	git push -u origin master
}

main (){
	for makedir in "${directories[@]}"  
	do
		cd "${makedir}"
		makeapp
		makerepo ${makedir}
		cd ..
	done
	rmbrokenlinks
	controlssh "init"
	gitupdate
	controlssh "close"
}

main
