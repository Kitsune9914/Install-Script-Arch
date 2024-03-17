#!/bin/bash

echo "--- Instalando o YAY ---"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && yay -Y --gendb

echo "--- Instalando o GUFW ---"
sudo pacman -S gufw

echo "--- Ativando o daemon de bluetooth ---"
sudo systemctl start bluetooth.service --now
echo "--- Ativado ---"

MENU="
1 - Wine
2 - Ignorar
"

echo "$MENU"

Wine="--- Instalando o Wine ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Wine"
                sudo pacman -S wine-staging && winetricks
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Snap
2 - Ignorar
"

echo "$MENU"

Snap="--- Instalando o suporte a Snap ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Snap"
                git clone https://aur.archlinux.org/snapd.git && cd snapd && makepkg -si && sudo systemctl enable --now snapd.socket && sudo ln -s /var/lib/snapd/snap /snap
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

echo "--- Instalando o VLC e codecs multimidia ---"
sudo pacman -S vlc ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

MENU="
1 - ZSH
2 - Ignorar
"

echo "$MENU"

ZSH="--- Instalando o ZSH ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
         1)
                echo "$ZSH"
                sudo pacman -S zsh
         ;;

         2)
                echo "$Ignorar"
         ;;

         *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
         ;;
esac

MENU="
1 - Firefox
2 - LibreWolf
3 - Ignorar
"

echo "$MENU"

Firefox="--- Instalando o Firefox ---"
LibreWolf="--- Instalando o LibreWolf ---"
Ignorar="--- Não instalar ---"

read -p "Ecolha uma Opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Firefox"
                sudo pacman -S firefox
        ;;

        2)
                echo "$LibreWolf"
                yay -s librewolf
        ;;

        3)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Thunderbird
2 - Ignorar
"

echo "$MENU"

Thunderbird="--- Instalando o Thunderbird ---"
Ignorar="--- Não Instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Thunderbird"
                flatpak install flathub org.mozilla.Thunderbird
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Ungoogled
2 - Ignorar
"

echo "$MENU"

Ungoogled="--- Instalando o Ungoogled Chromium ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Ungoogled"
                yay -S ungoogled-chromium
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

echo "--- Instalando Suporte a NTFS ---"
sudo pacman -S ntfs-3g

echo "--- Instalando o CUPS ---"
sudo pacman -S cups ; sudo systmctl enable --now cups.service ; sudo systemctl enable --now cups.socket ; sudo systemctl enable --now cups.path ; sudo pacman -S system-config-printer ; sudo usermod -aG lp $USER ; sudo pacman -S sane-airscan sane-gt68xx-firmware skanlite ; sudo usermod -aG saned,sacanner $USER ; sudo pacman -S gutenprint

MENU="
1 - Pamac
2 - Ignorar
"

echo "$MENU"

Pamac="--- Instalar o PAMAC ---"
Ignorar="--- Nao instalar ---"

read -p "Escolha uma Opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Pamac"
                yay -S pamac-aur ; sudo pacman -Rdd discover
        ;;

        2)
                echo "$Ignorar"
        ;;
        
        *)      
                echo "--- Opção $OPCAO desconhecida ---"
                exit 1
        ;;
esac

MENU="
1 - Torrent
2 - Ignorar
"

echo "$MENU"

Torrent="--- Instalando ferramentas de Torrent ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Torrent"
                flatpak install flathub com.ktechpit.torrhunt ; flatpak install flathub org.qbittorrent.qBittorrent
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Steam
2 - Flatpak
3 - Ignorar
"

echo "$MENU"

Steam="--- Versão Nativa da Steam ---"
Flatpak="--- Versão Flatpak da Steam ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma Opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Steam"
                sudo pacman -S steam
        ;;

        2)      
                echo "$Flatpak"
                flatpak install flathub com.valvesoftware.Steam
        ;;
        
        3)
                echo "$Ignorar"
        ;;
                
        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - LutrisNative
2 - LutrisFlatpak
3 - Ignorar
"

echo "$MENU"

LutrisNative="--- Instalando o Lutris Nativo ---"
LutrisFlatpak="--- Instalando a versão flatpak do Lutrist ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO 

case "$OPCAO" in
        1)
                echo "$LutrisNative"
                sudo pacman -S lutris
        ;;

        2)
                echo "$LutrisFlatpak"
                flatpak install flathub net.lutris.Lutris
        ;;

        3)
                echo "Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Itch
2 - Ignorar
"

echo "$MENU"

Itch="--- Instalando o Itch.io ---"
Ignorar="--- Não Instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Itch"
                flatpak install flathub io.itch.itch
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Heroic
2 - Ignorar
"

echo "$MENU"

Heroic="--- Instalando o Heroic Games Launcher ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Heroic"
                flatpak install flathub com.heroicgameslauncher.hgl
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - ProtonQT
2 - Flatpak
3 - Ignorar
"

echo "$MENU"

ProtonQT="--- Versão nativa (AUR) do Proton-QT Up ---"
Flatpak="--- Versão Flatpak do Proton-QT Up ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma Opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$ProtonQT"
                yay -S protonup-qt
        ;;
          
        2)
                echo "$Flatpak"
                flatpak install flathub net.davidotek.pupgui2
        ;;
        
        3)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Goverlay
2 - Ignorar
"

echo "$MENU"

Goverlay="--- Instalando o Goverlay e componentes ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Goverlay"
                sudo pacman -S mangohud lib32-mangohud goverlay
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;        
esac

MENU="
1 - Stable
2 - PTB
3 - Canary
4 - Flatpak
5 - Ignorar
"

echo "$MENU"

Stable="--- Versão estavel do Discord ---"
PTB="--- Versão Testing do Discord ---"
Canary="--- Versão Nightly do Discord ---"
Flatpak="--- Versão Flatpak do Discord ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Stable"
                sudo pacman -S Discord
        ;;
	 
        2)      
                echo "$PTB"
                yay -S discord-ptb
        ;;

        3)
                echo "$Canary"
                yay -S discord-canary
        ;;

        4)
                echo "$Flatpak"
                flatpak install flathub com.discordapp.Discord
        ;;

        5)
                echo "$Ignorar"
        ;;

        *)      echo "--- Opção $OPCAO desconhecida! ---"     
                exit 1
        ;;           
esac

MENU="
1 - Vscodium
2 - Ignorar
"

echo "$MENU"

Vscodium="--- Instalando o Vscodium ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Vscodium"
                yay -S vscodium-bin
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;                
esac

MENU="
1 - BetterNative
2 - BetterPTB
3 - BetterCanary
4 - BetterFlatpak
5 - Ignorar
"

echo "$MENU"

BetterNative="--- Instalando o Better Discord na versão padrão ---"
BetterPTB="--- Instalando o Better Discord na versão PTB ---"
BetterCanary="--- Instalando o Better Discord na versão Canary ---"
BetterFlatpak="--- Instalando o Better Discord na versão Flatpak ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$BetterNative"
                curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl && chmod +x betterdiscordctl && sudo mv betterdiscordctl /usr/local/bin && betterdiscordctl install
        ;;

        2)
                echo "$BetterPTB"
                curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl && chmod +x betterdiscordctl && sudo mv betterdiscordctl /usr/local/bin && betterdiscordctl --flavor PTB install
        ;;

        3)
                echo "$BetterCanary"
                curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl && chmod +x betterdiscordctl && sudo mv betterdiscordctl /usr/local/bin && betterdiscordctl --flavor Canary install
        ;;

        4)
                echo "$BetterFlatpak"
                curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl && chmod +x betterdiscordctl && sudo mv betterdiscordctl /usr/local/bin && betterdiscordctl --d-install flatpak install 
        ;;

        5)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"        
                exit 1
        ;;                        
esac

echo "--- Instalando o JAVA ---"
sudo pacman -S jdk-openjdk

MENU="
1 - LatteDock
2 - Ignorar
"

echo "$MENU"

LatteDock="Instalar o Latte Dock ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$LatteDock"
                sudo pacman -S latte-dock
        ;;
        
        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Tilix
2 - Ignorar
"

echo "$MENU"

Tilix="--- Instalando o Tilix ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Tilix"
                pacman -S tilix
        ;;

        2)
                echo "$Ignorar"
        ;;

        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;        
esac

MENU="
1 - DosboxStaging
2 - DosboxX
3 - Dosboxsvn
4 - Flatpak
5 - XFlatpak
6 - StagingFlatpak
"

echo "$MENU"

DosboxStaging="--- Instalando o DosBox Staging ---"
DosboxX="--- Instalando o DosBox X ---"
Dosboxsvn="--- Instalando o DosBox svn ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$DosboxStaging"
                yay -S dosbox-staging
        ;;

        2)
                echo "$DosboxX"
                yay -S dosbox-x
        ;;

        3)
                echo "$Dosboxsvn"
                yay -S dosbox-svn
        ;;

        4)
                echo "$Flatpak"
                flatpak install flathub com.dosbox.DOSBox
        ;;
        
        5)
                echo "$XFlatpak"
                flatpak install flathub com.dosbox_x.DOSBox-X
        ;;

        6)
                echo "$StagingFlatpak"
                flatpak install flathub io.github.dosbox-staging
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - PPSSPP
2 - Ignorar
"

echo "$MENU"

PPSSPP="--- Instalando o PPSSPP ---"
Ignorar="--- Não Instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$PPSSPP"
                flatpak install flathub org.ppsspp.PPSSPP
        ;;

        2)
                echo "$Ignorar"   
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - DuckStation
2 - Ignorar
"

echo "$MENU"

DuckStation="--- Instalando o DuckStation ---"
Ignorar="--- Não Instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$DuckStation"
                flatpak install flathub org.duckstation.DuckStation
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Retroarch
2 - Ignorar
"

echo "$MENU"

Retroarch="--- Instalando o Retroarch ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Retroarch"
                flatpak install flathub org.libretro.RetroArch
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Ironwail
2 - Ezquake
3 - Vkquake
4 - Ignorar
"

echo "$MENU"

Ironwail="--- Instalando o Ironwail ---"
Ezquake="--- Instalando o Ezquake ---"
Vkquake="--- Instalando o Vkquake ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Ironwail"
                yay -S ironwail
        ;;

        2)
                echo "$Ezquake"
                yay -S ezquake
        ;;

        3)
                echo "$Vkquake"
                yay -S vkquake
        ;;

        4)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Qzdl
2 - DoomRunner
3 - Ignorar
"

echo "$MENU"

DoomRunner="--- Instalando o Doom Runner ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Qzdl"
                yay -S qzdl
        ;;

        2)
                echo "$DoomRunner"
                flatpak install flathub io.github.Youda008.DoomRunner
        ;;

        3)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Zandronum
2 - Ignorar
"

echo "$MENU"

Zandronum="--- Instalando o Zandronum ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Zandronum"
                flatpak install flathub com.zandronum.Zandronum
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - ScummVM
2 - Ignorar
"

echo "$MENU"

ScummVM="--- Instalando o ScummVM ---"
Ignorar="--- Não Instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$ScummVM"
                flatpak install flathub org.scummvm.ScummVM
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Prism
2 - Sklauncher
3 - Ignorar
"

echo "$MENU"

Prism="--- Instalando o Prism Launcher ---"
Sklauncher="--- Instalando o Sklauncher ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Prism"
                flatpak install flathub org.prismlauncher.PrismLauncher
        ;;

        2)
                echo "$Sklauncher"
                yay -S sklauncher-bin
        ;;

        3)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - MinePi
2 - Ignorar
"

echo "$MENU"

MinePi="--- Instalando o Minecraft Pi Edition Reborn ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$MinePi"
                flatpak install flathub com.thebrokenrail.MCPIReborn
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Grapejuice
2 - Ignorar
"

echo "$MENU"

Grapejuice="--- Instalando o Grapejuice ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Grapejuice"
                flatpak install flathub net.brinkervii.grapejuice
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - SuperModel
2 - Ignorar
"

echo "$MENU"

SuperModel="--- Instaladn o Super Model ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$SuperModel"
                flatpak install flathub com.supermodel3.Supermodel
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;

esac

MENU="
1 - AM2RLauncher
2 - Ignorar
"

echo "$MENU"

AM2RLauncher="--- Instalando o AM2R Launcher e o Atomic ---"
Ignorar="Não instalar"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$AM2RLauncher"
                flatpak install flathub io.github.am2r_community_developers.AM2RLauncher ; flatpak install flathub io.github.am2r_community_developers.Atomic
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Whatsie
2 - Ignorar
"

echo "$MENU"

Whatsie="--- Instalando o Whatsie ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Whatsie"
                yay -S whatsie-git
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
        ;;
esac

MENU="
1 - Tilix
2 - Ignorar
"

echo "$MENU"

Tilix="--- Instalando o Tilix ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Tilix"
                pacman -S tilix
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;        
esac

MENU="
1 - Bottles 
2 - Ignorar
"

echo "$MENU"

Bottles="--- Instalando o Bottles ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Bottles"
                flatpak install flathub com.usebottles.bottles
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

MENU="
1 - Neovim
2 - Ignorar
"

echo "$MENU"

Neovim="--- Instalando o Neovim ---"
Ignorar="--- Não instalar ---"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
        1)
                echo "$Neovim"
                sudo pacman -S neovim
        ;;

        2)
                echo "$Ignorar"
        ;;

        *)
                echo "--- Opção $OPCAO desconhecida! ---"
                exit 1
        ;;
esac

echo "--- Parabens você finalizou o Script não há nada mais pra fazer agora :) ---"