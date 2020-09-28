#! /bin/bash

#this is to setup a new hard drive for myself startting from a minimul install on Ubuntu 18.04
#give options for master, user, or minimal install

#run as root
if [[ "${UID}" -ne 0 ]]
then
        echo 'Root or nothin Bud' >&2
        exit 1
fi

GIT(){
echo "What is the username as you entered for the setup proccess?"
echo "the name the is dispayed befor the @ on the command line...."
read varname

${git} https://github.com/Tracy365/wifite2.git
#cd wifite2
#sudo ${PY}
#cd ..
#echo "move wifite2 dir into 'git' dir"
#echo "be prepaired to repeat this operation"
#echo "copy and paste: "
#echo "'sudo python setup.py install -y'"
#echo "cd .."
#echo
#read -p "ENTER TO COTINUE"

${git} https://github.com/danielmiessler/SecLists.git
#echo "move seclists dir into 'git' dir"
#echo "copy in second window:"
#echo "mkdir payload"
#echo "cd payload"
#read -p "ENTER TO CONTIUE"
#echo "cd .."

${git} https://github.com/1tayH/noisy.git
#read -p "ENTER TO CONTINUE"
#echo "move noisy dir into 'git' dir"
#${git} https://github.com/1tayH/noisy.git
#echo "cd noisy"
#echo "pip install requests -y"
#echo
#echo "Next the config for noisy"
#echo "in second terminal open README.md"
#read -p "press ENTER when you are ready to continue."
#echo
#echo "python noisy.py --config config.json"
#read -p "Press ENTER when ready to continue"

${git} https://github.com/aanarchyy/bully.git
#echo "move bully dir into 'git' dir"
#echo "cd bully"
#echo "cd src"
#echo "sudo make instal"
#echo "cd .."
#echo "cd .."
#read -p "Press ENTER when reafy to continue"

${git} https://github.com/ZerBea/hcxdumptool.git
#echo "move hcxdumptool dir into 'git' dir"
#echo "cd hcxdumptool"
#echo "run cat README.md in secnd terminal when inside hcxdumptool dir."
#echo "WHEN COMPLETED RUN setup3.txt"
#echo "Follow insrtuctions for current distro."
#read -p "hit ENTER when completed to contue setup"


sudo chown $varname git
sudo chown $varname noisy
sudo chown $varname bully
sudo chown $varname hcxdumptool
sudo chown $varname wifite2
sudo chown $varname SecLists

}

GIT_README(){
echo 'WIFITE2'
echo "move wifite2 dir into 'git' dir"
echo "be prepaired to repeat this operation"
echo "copy and paste: "
echo "sudo python setup.py install -y"

echo 'SECLISTS'
echo 'move seclists dir into 'git' dir'

echo 'NOISY'
echo "move noisy dir into 'git' dir"
echo "cd noisy"
echo "pip install requests -y"
echo "Next the config for noisy"
echo "in second terminal open README.md"
echo "python noisy.py --config config.json"

echo 'BULLY'
echo "move bully dir into 'git' dir"
echo "cd bully"
echo "cd src"
echo "sudo make instal"

echo 'hcxdumptool'
echo "move hcxdumptool dir into 'git' dir"
echo "cd hcxdumptool"
echo "run cat README.md"
echo 'Follow insrtuctions for current distro.'
}

SET_UP(){
echo "Follow instructions as suits your harddisk:"
echo
echo 'config file for ubuntu 18.04 LTS'

echo 'https://www.youtube.com/watch?v=BLVtxpm5c2A&t=604s'
echo
echo '1. update manager-'
echo
echo '2. drivers-'
echo
echo '3. synaptic package manager-search in ubuntu software and install'

echo "4. minimize to dock-gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'"

echo "5. swappy use-gedit admin:///etc/sysctl.conf"
echo "enter your password"
echo "scroll to the bottom and enter:"
echo "vm.swappiness = 15"
echo
echo "6. reduce ssd writes-gedit admin:///etc/fstab"
echo "enter password"
echo "in front of every partition enter [noatime,] except swp"
echo
echo "7. firewall-open synaptic"
echo "   search: gufw"
echo "   right click and mark for instal"
echo "   click aply and run it"
echo "   open firewall and turn on"
echo
echo "8. ubuntu settings-open settings and goto dock and select where to place dock(taskbar) and size of icons"
echo
echo "9. move apps button-open synaptic"
echo "   search for dconf"
echo "   select the editer to install"
echo "   open deconf and go to:"
echo "   org>Gnome>Shell>extentions>dash-to-dock"
echo "   search for show-apps-at-top and turn on"
echo
echo "10. gnome tweeks-open synaptic"
echo "    search for:"
echo "    gnome-tweak-tool [advanced optins]"
echo "    flat-remix, select all 3"
echo "    install"
echo "    open and goto:"
echo "    extentions:  turn off dash to dock,"
echo "    apearence:"
echo "         aplications: flat remix darkest solid"
echo "         icons: loginicons"
echo
echo "11. gnome extentions- install chrome-gnome-shell from synaptic"
echo "    go to the website:"
echo "    https://extensions.gnome.org"
echo "    [look for dash-to-panel:"
echo "    dash to dock"
echo "    user themes"
echo "    screan shot tool"
echo "    ]"
echo
echo "12. themes-"
echo
echo "13. backups-"
echo
echo "14. clean system-"
echo
echo "15. google chrome- install grom google or from usb"
echo " from usb copy to desired folder and right click open with"
echo " other program: software installer"
echo                                                                                                                                   125,1         29%
echo "16. spotify-look for it in softwar manager[not synaptic]"
echo
echo "17. laptop tweeks-open synaptic and search:"
echo "        tlp"
echo "        select the package that has tlp in the name[exclusive], agree"
echo "        to the second package and install"
echo "        open the terminal window"
echo "        run 'sudo tlp start'"
echo
read -p "Press ENTER when ready to finish"
}

usage(){
        #diplay the usage/install options M-full inasall, u-user, music/media, m-minimal 
        echo "Usage: ${0} [-M] [-u] [-b]"
        echo '-M full master copy install. includes hacking tools'
        echo '-u user install. includes media player and git + some tools'
        echo '-b minimal install. only basic user progams'
        exit 1
}

PPA(){
        #adding the repos
        sudo add-apt-repository ppa:daniruiz/flat-remix
        sudo add-apt-repository ppa:mikhailnov/pulseeffects
}



up="sudo apt -y"
down="update"
over="upgrade"
now="sudo apt -y install"
git="git clone"
M="mkdir"
PY="python setup.py install"

MASTER(){

${up} ${down}
${up} ${over}

PPA

${now} vlc
${now} vim
${now} git
${now} ipcalc
${now} chrome-gnome-shell
${now} htop
${now} gnome-tweak-tools
${now} bleachbit
${now} aircrack-ng
${now} python3
${now} python-pip
${now} mdk3s
${M} git
${now} hashcat
${now} reaver
${now} build-essential
${now} libpcap-dev
${now} aircrack-ng
${now} pixiewps
${now} tshark macchanger
${now} pyrit
${now} libcurl4-openssl-dev
${now} libssl-dev
sudo snap install pycharm-community --classic
${now} net-tools


${up} ${down}
${up} ${over}

${now} pulseaudio pulseeffects --install-recommends

SET_UP


if [[ "${?}" -ne 0 ]]
        then
                echo "The script failed...."
                exit 1
        else
                echo "Alle done"
        fi

}


USER(){

${up} ${down}
${up} ${over}

PPA

${now} vlc
${now} vim
${now} git
${now} ipcalc
${now} chrome-gnome-shell
${now} htop
${now} gnome-tweak-tools
${now} bleachbit
${now} aircrack-ng
${now} python3
#${now} pip
${now} mdk3s
#${M} git
${now} hashcat
${now} reaver
${now} build-essential
${now} libpcap-dev
${now} aircrack-ng
${now} pixiewps
${now} tshark macchanger
${now} pyrit
${now} libcurl4-openssl-dev
${now} libssl-dev

${up} ${down}
${up} ${over}

${now} pulseaudio pulseeffects --install-recommends


if [[ "${?}" -ne 0 ]]
        then
                echo "The script failed...."
                exit 1
        else
                echo "Alle done"
        fi

}

MINIMAL(){

${up} ${down}
${up} ${over}

PPA

${now} vlc
${now} vim

${up} ${down}
${up} ${over}

${now} pulseaudio pulseeffects --install-recommends


if [[ "${?}" -ne 0 ]]
        then
                echo "The script failed...."
                exit 1
        else
                echo "Alle done"
        fi

}

#remove the optins while leaving the remaining arguments
shift "$(( OPTIND - 1 ))"

#if the user doent suply atleast one argument then give them help
if [[ "${#}" -lt 1 ]]
then
        usage
fi

if [[ "${1}" = -M ]]
then
        MASTER
elif
        [[ "${1}" = -u ]]
then
        USER
elif
        [[ "${1}" = -b ]]
then
        MINIMAL
else
        echo "Suply valid option:"
        usage
fi


