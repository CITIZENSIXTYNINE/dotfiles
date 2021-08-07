#!/bin/bash
# For this script to work, you'll need to have Powercord injected into your client.

# Ansi color code variables
red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"

printf "\nPowercord-Quick-Install v1 - A simple script that installs all the plugins and themes C69 uses\n\n${red}NOTE THAT THIS ISN'T AN INJECTOR, THIS IS A SCRIPT THAT GIT CLONES REPOS${reset}\n\n"
printf "${blue}Please note that when entering your themes/plugins folder, you have to specify it to the filesystem level, like this:\n\n /home/(your user)/(folder where powercord is)/powercord/src/Powercord/(plugins or themes folder)${reset}\n\n"
printf "Now please enter your THEMES folder:\n"
read ThemesFolder
printf "Now enter your PLUGINS folder\n"
read PluginsFolder
printf "Folders set as:\n\n Themes Folder = $ThemesFolder\n Plugins Folder = $PluginsFolder\n\n"
printf "Downloading and Installing Plugins\n"
cd $PluginsFolder
git clone https://github.com/yuwui/powercord-greentext
git clone https://github.com/VenPlugs/petpet
git clone https://github.com/E-boi/Powercord-BlurNSFW
git clone https://github.com/BlueWoIf/StreamerModeOnGoLive
git clone https://github.com/SammCheese/Do-Not-Slowmode-Me
git clone https://github.com/Killerjet101/quick-mention
git clone https://github.com/RazerMoon/vcTimer
git clone https://github.com/9qz/powercord-mute-folder
git clone https://github.com/TaiAurori/channel-locker
git clone https://github.com/luimu64/stallman-powercord
git clone https://github.com/E-boi/Privacy-Tab
git clone https://github.com/jaimeadf/who-reacted
git clone https://github.com/Litleck/DM-Typing-Indicator
git clone https://github.com/NurMarvin/SnowflakeInfo
git clone https://github.com/relative/quick-reply
git clone https://github.com/cyyynthia/pronoundb-powercord
git clone https://github.com/powercord-community/permission-viewer
git clone https://github.com/A-Trash-Coder/Quick-Bot-Invite
git clone https://github.com/21Joakim/copy-avatar-url
git clone https://github.com/powercord-community/badges-everywhere
git clone https://github.com/powercord-community/quickstar
git clone https://github.com/cyyynthia/mutuals-quick-ban
printf "Plugins Installed\n"
printf "Downloading and Installing Themes\n"
cd $ThemesFolder
git clone https://github.com/NYRI4/Discolored
git clone https://github.com/CITIZENSIXTYNINE/Drakula
git clone https://github.com/Discord-Theme-Addons/refined-user-connections
printf "Your Powercord installation should now have all the shizz C69 uses\n"
