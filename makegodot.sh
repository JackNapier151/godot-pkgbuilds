#! /usr/bin/env bash
# vim: ft=bash fileencoding=utf-8 sts=4 sw=4 et:
# -*- coding: utf-8 -*-

srdir='/run/media/odin/338a9a65-34d3-49ef-92f0-76fd53c407ce/AUR/Godot'

directories=(
'godot-base' # 1 packages

'godot-dev-bin' # 8 packages
'godot-alpha-bin' # 9 packages
'godot-beta-bin' # 21 packages
'godot-rc-bin' # 21 packages
'godot-stable-rc-bin' # 20 packages
'godot-stable-bin' # 20 packages

'godot4-dev-bin' # 8 packages
'godot4-alpha-bin' # 9 packages
'godot4-beta-bin' # 21 packages

'godot3-alpha-bin' # 13 packages
'godot3-beta-bin' # 21 packages
'godot3-rc-bin' # 21 packages
'godot3-stable-rc-bin' # 20 packages
'godot3-stable-bin' # 20 packages

'godot2-rc-bin' # 8 packages
'godot2-stable-bin' # 8 packages

'godot1-stable-bin' # 8 packages

#'godot-git' # 1 packages
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
    cd ${1}
    makepkg -c --sign --allsource
    makepkg -c --sign
    makerepo ${1}
    cd ..
}

gitupdate (){
    eval $(ssh-agent -s)
    ssh-add /home/odin/.ssh/jacknapier151gmail
    git add .
    read -p "Commit: " input
    git commit -m "${input}"
    git push -u origin master
    pkill ssh-agent
}

main (){
    for makedir in "${directories[@]}"  
    do
        makeapp ${makedir}
    done
    rmbrokenlinks
    gitupdate
}

main
