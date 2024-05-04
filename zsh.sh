#!/usr/bin/zsh

show_menu() {
	echo "1. Oh My Zsh"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Oh My Zsh"
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
		;;
	2)
		echo "--- Ignorando ---"
		;;

	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, Tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	read choice
	process_choice
	printf "Escolha uma Opção: "

	if [ $chocie -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. YAY (Se estiver no Manjaro)"
	echo "2. YAY (Se estiver no Arch Linux)"
	echo "3. Ignorar"
	echo "4. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o YAY para o Manjaro ---"
		sudo pacman -S yay
		;;
	2)
		echo "--- Instalando o YAY para o Arch Linux ---"
		sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && yay -Y --gendb
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

show_menu() {
	echo "1. UFW"
	echo "2. GUFW"
	echo "3. Ignorar"
	echo "4. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o UFW ---"
		sudo pacman -S ufw
		;;
	2)
		echo "--- Instalando o GUFW ---"
		sudo pacman -S gufw
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

echo "--- Ativando o Daemon de Bluetooth"
sudo systemctl bluetooth.service --now
echo "--- Ativado ---"

show_menu() {
	echo "1. Wine"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "Você escolheu a Opção 1"
		sudo pacman -S wine-staging winetricks
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "Saindo..."
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "Selecione uma opção:"
	echo "1. Snap"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Suporte a Snap ---"
		git clone https://aur.archlinux.org/snapd.git && cd snapd && makepkg -si && sudo systemctl enable --now snapd.socket && sudo ln -s /var/lib/snapd/snap /snap
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "Saindo..."
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

echo "--- Instalando o VLC e codecs multimidia ---"
sudo pacman -S vlc ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

show_menu() {
	echo "1. Firefox"
	echo "2. Librewolf"
	echo "3. Ignorar"
	echo "4. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Firefox ---"
		sudo pacman -S firefox
		;;
	2)
		echo "--- Instlando o Librewolf ---"
		yay -S librewolf
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

show_menu() {
	echo "1. Thunderbird"
	echo "2. Thunderbird Flatpak"
	echo "3. Ignorar"
	echo "4. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Thunderbird ---"
		sudo pacman -S thunderbird
		;;
	2)
		echo "--- Instalando a Versão Flatpak do Thunder Bird ---"
		flatpak install flathub org.mozilla.Thunderbird
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... --"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

echo "--- Instalando Suporte a NTFS ---"
sudo pacman -S ntfs-3g

echo "--- Instalando o CUPS ---"
sudo pacman -S cups && sudo systemctl enable --now cups.service && sudo systemctl enable --now cups.socket && sudo systemctl enable --now cups.path && sudo pacman -S system-config-printer && sudo usermod -aG lp $USER && sudo pacman -S sane-airscan sane-gt68xx-firmware skanlite && sudo usermod -aG saned,scanner $USER && sudo pacman -S gutenprint

show_menu() {
	echo "1. Ungoogled Chromium"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Ungoogled Chromium ---"
		yay -S ungoogled-chromium
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Pamac"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instlando o Pamac ---"
		yay -S pamac-aur && sudo pacman -Rs discover
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. qBittorrent nativo"
	echo "2. qBittorrent Flatpak"
	echo "3. Torrhunt"
	echo "4. Instalar ambos (qBittorrent nativo)"
	echo "5. Instalar ambos (qBittorrent Flatpak)"
	echo "6. Ignorar"
	echo "7. Sair"
}
process_choice() {
	case $choice in
	1)
		echo "--- Instalando o qBittorrent ---"
		sudo pacman -S qbittorrent
		;;
	2)
		echo "--- Instalando o qBittorrent Flatpak ---"
		flatpak install org.qbittorrent.qBittorrent
		;;
	3)
		echo "--- Instalando o Torrhunt ---"
		flatpak install flathub com.ktechpit.torrhunt
		;;
	4)
		echo "--- Instalando o qBittorrent (nativo) e o Torrhunt ---"
		sudo pacman -S qbittorrent && latpak install flathub com.ktechpit.torrhunt
		;;
	5)
		echo "--- Instalando o qBittorrent (Flatpak) e o Torrhunt ---"
		flatpak install flathub com.ktechpit.torrhunt && flatpak install flathub org.qbittorrent.qBittorrent
		;;
	6)
		echo "--- Ignorando ---"
		;;
	7)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 6 ]; then
		break
	fi
done

show_menu() {
	echo "1. Steam"
	echo "2. Steam Flatpak"
	echo "3. Ignorar"
	echo "4. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando a versão nativa da Steam ---"
		sudo pacman -S steam
		;;
	2)
		echo "--- Instalando a versão flatpak da Steam ---"
		flatpak install flathub com.valvesoftware.Steam
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

show_menu() {
	echo "1. Lutris Nativo"
	echo "2. Lutris Flatpak"
	echo "3. Ignorar"
	echo "4. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instlando a versão nativa do Lutris ---"
		sudo pacman -S lutris
		;;
	2)
		echo "--- Instalando a versão flatpak do Lutris ---"
		flatpak install flathub net.lutris.Lutris
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

echo "--- Instalndo o Bottles ---"
flatpak install flathub com.usebottles.bottles

show_menu() {
	echo "1. Itch.io"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Itch.io ---"
		flatpak install flathub io.itch.itch
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		;;
	*)
		echo "--- Opção inválida tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Heroic Games Launcher"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Heroic Games Launcher ---"
		flatpak install flathub com.heroicgameslauncher.
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		;;
	*)
		echo "--- Opção inválida tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. ProtonupQT Nativo"
	echo "2. ProtonupQT Flatpak"
	echo "3. Ignorar"
	echo "4. Saindo"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o ProtonupQT nativo ---"
		yay -S protonup-qt
		;;
	2)
		echo "--- Instalando o ProtonupQT Flatpak ---"
		flatpak install flathub net.davidotek.pupgui2
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente. ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

show_menu() {
	echo "1. Goverlay e Componentes"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Goverlay e seus componentes ---"
		sudo pacman -S mangohud lib32-mangohud goverlay
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Vscodium"
	echo "2. Notepad QQ"
	echo "3. Vim"
	echo "4. Neovim"
	echo "5. Ignorar"
	echo "6. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Vscodium ---"
		yay -S vscodium-bin
		;;
	2)
		echo "--- Instalando o Notepad QQ ---"
		sudo pacman -S notepadqq
		;;
	3)
		echo "--- Instalando o VIM ---"
		sudo pacman -S vim
		;;
	4)
		echo "--- Instalando o NeoVim"
		sudo pacman -S neovim
		;;
	5)
		echo "--- Ignorando ---"
		;;
	6)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ----"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 5 ]; then
		break
	fi
done

echo "--- Instalando o Java ---"
sudo pacman -S jdk-openjdk

show_menu() {
	echo "1. Dosbox Staging"
	echo "2. Dosbox X"
	echo "3. Dosbox SVN"
	echo "4. Dosbox Flatpak"
	echo "5. Dosbox X Flatpak"
	echo "6. Dosbox Staging Flatpak"
	echo "7. Ignorar"
	echo "8. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instlando o Dosbox Staging ---"
		yay -S dosbox-staging
		;;
	2)
		echo "--- Instalando o Dosbox X ---"
		yay -S dosbox-x
		;;
	3)
		echo "--- Instalando o Dosbox SVN ---"
		yay -S dosbox-svn
		;;
	4)
		echo "--- Instalando a Versão Flatpak do Dosbox ---"
		flatpak install flathub com.dosbox.DOSBox
		;;
	5)
		echo "--- Instalando a Versão Flatpak do Dosbox X ---"
		flatpak install flathub com.dosbox_x.DOSBox-X
		;;
	6)
		echo "--- Instalando a Versão Flatpak do Dosbox Staging ---"
		flatpak install flathub io.github.dosbox-staging
		;;
	7)
		echo "--- Ignorando ---"
		;;
	8)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 7 ]; then
		break
	fi
done

show_menu() {
	echo "1. PPSSPP"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o PPSSPP ---"
		flatpak install org.ppsspp.PPSSPP
		;;

	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... --"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. DuckSation"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o DuckStation ---"
		flatpak install org.duckstation.DuckStation
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Retroarch"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Retroarch ---"
		flatpak install flathub org.libretro.RetroArch
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. MAME Nativo"
	echo "2. MAME Flatpak"
	echo "3. Ignorar"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o MAME ---"
		sudo pacman -S mame
		;;
	2)
		echo "--- Instalando o MAME Flatpak ---"
		flatpak install flathub org.mamedev.MAME
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

show_menu() {
	echo "1. Ironwail"
	echo "2. Ezquake"
	echo "3. Vkquake"
	echo "4. Ignorar"
	echo "5. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Ironwail ---"
		yay -S ironwail
		;;
	2)
		echo "--- Instalando o Ezquake ---"
		yay -S ezquake
		;;
	3)
		echo "--- Instalando o Vkquake ---"
		yay -S vkquake
		;;
	4)
		echo "--- Ignorando ---"
		;;
	5)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 4 ]; then
		break
	fi
done

show_menu() {
	echo "1. Qzdl"
	echo "2. Doomrunner"
	echo "3. Ignorar"
	echo "4. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Qzdl ---"
		yay -S qzdl
		;;
	2)
		echo "--- Instalando o Doomrunner ---"
		flatpak install flathub io.github.Youda008.DoomRunner
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

echo "--- Instalando o Zandronum ---"
flatpak install flathub com.zandronum.Zandronum

echo "--- Instalando o ScummVM ---"
flatpak install flathub org.scummvm.ScummVM

show_menu() {
	echo "1. Prism Launcher"
	echo "2. SKlauncher"
	echo "3. Ignorar"
	echo "4. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Prism Launcher ---"
		flatpak install flathub org.prismlauncher.PrismLauncher
		;;
	2)
		echo "--- Instalando o Sklauncher ---"
		yay -S sklauncher-bin
		;;
	3)
		echo "--- Ignorando ---"
		;;
	4)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 3 ]; then
		break
	fi
done

show_menu() {
	echo "1. Mine Pi"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Minecraft Pi edition Reborn ---"
		flatpak install flathub com.thebrokenrail.MCPIReborn
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Super Model"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Super Model ---"
		flatpak install flathub com.supermodel3.Supermodel
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. AM2Rlauncher"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o AM2Rlauncher ---"
		flatpak install flathub io.github.am2r_community_developers.AM2RLauncher && flatpak install flathub io.github.am2r_community_developers.Atomic
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente Novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Discord"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Discord ---"
		flatpak install flathub com.discordapp.Discord
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Whatsie (Whatsapp)"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Whatsie (Whatsapp) ---"
		yay -S whatsie-git
		;;
	2)
		echo "--- Ignorar ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Tilix"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Tilix ---"
		sudo pacman -S tilix
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção Inválida, tente noamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Continuar"
	echo "2. Terminar por aqui"
}

process_choice() {
	case $choice in
	1)
		echo "--- Continuando... ---"
		;;
	2)
		echo "--- Finalizando o Script... ---"
		exit 0
		;;
	*)
		echo "Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Deseja finalizar o Script por aqui? (Existem outras coisas a seguir): "
	read choice
	process_choice

	if [ $choice -eq 1 ]; then
		break
	fi
done

show_menu() {
	echo "1. Poppins"
	echo "2. JetBrains Mono"
	echo "3. Ambos"
	echo "4. Ignorar"
	echo "5. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando a Fonte Poppins ---"
		yay -S ttf-poppins
		;;
	2)
		echo "--- Instalando a Fonte JetBrains Mono ---"
		sudo pacman -S ttf-jetbrains-mono
		;;
	3)
		echo "--- Instalando Ambas as Fontes ---"
		yay -S ttf-poppins && sudo pacman -S ttf-jetbrains-mono
		;;
	4)
		echo "--- Ignorando ---"
		;;
	5)
		echo "--- Saindo... ---"
		exit 0
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma fonte para instalar: "
	read choice
	process_choice

	if [ $choice -eq 4 ]; then
		break
	fi
done

show_menu() {
	echo "1. Arduino IDE"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando a IDE do Arduino ---"
		sudo pacman -S arduino
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Flips"
	echo "2. Ignorar"
	echo "3. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Flips ---"
		flatpak install flathub com.github.Alcaro.Flips
		;;
	2)
		echo "--- Ignorando ---"
		;;
	3)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 2 ]; then
		break
	fi
done

show_menu() {
	echo "1. Getter Robo Wallpapers"
	echo "2. Gundam Wallpapers"
	echo "3. Mazinger Z Wallpapers"
	echo "4. Mountain Wallpapers"
	echo "5. Florest Wallpapers"
	echo "6. Arch Linux Wallpapers"
	echo "7. Hacker Wallpapers"
	echo "8. Office Wallpapers"
	echo "9. Ignorar"
	echo "10. Sair"
}

process_choice() {
	case $choice in
	1)
		echo "--- Instalando o Pack de Wallpapers de Getter Robo ---"
		wget https://wallpapercave.com/wp/wp9701934.png && wget https://c4.wallpaperflare.com/wallpaper/218/876/915/anime-mechs-super-robot-taisen-getter-robo-getter-robo-armageddon-hd-wallpaper-preview.jpg && wget https://c4.wallpaperflare.com/wallpaper/400/688/1020/shin-getter-1-getter-robo-armageddon-getter-robo-super-robot-wars-anime-hd-wallpaper-preview.jpg && wget https://wallpapercave.com/wp/wp9701931.png
		;;
	2)
		echo "--- Instalando o Pack de Wallpapers de Gundam ---"
		wget https://r4.wallpaperflare.com/wallpaper/697/83/698/mobile-suit-gundam-gundam-anime-mech-zaku-ii-hd-wallpaper-59e0986d61da2d5bc66728efb02156ed.jpg && wget https://r4.wallpaperflare.com/wallpaper/903/472/923/mobile-suit-gundam-gundam-mech-master-grade-wallpaper-7bb62c4d3321cfd91594fbf90ddcaca0.jpg && wget https://r4.wallpaperflare.com/wallpaper/847/430/471/anime-mobile-suit-gundam-unicorn-wallpaper-4f6649e3698428af5d9e45c13d7eee85.jpg && wget https://r4.wallpaperflare.com/wallpaper/99/251/781/mobile-suit-mobile-suit-gundam-gundam-00-exia-anime-mech-hd-wallpaper-e9f0d8edb1da0dcb8647e8af6091860d.jpg
		;;
	3)
		echo "--- Instalando o Pack de Wallpapers de Mazinger Z ---"
		wget https://r4.wallpaperflare.com/wallpaper/401/349/258/mazinger-z-mazinger-z-series-anime-mech-super-robot-wars-hd-wallpaper-b5525e34223c860dca9162ebccaf632d.jpg && wget https://wallpapercave.com/wp/wp1906228.png
		;;
	4)
		echo "--- Instalando o Pack de Wallpapers de Montanha ---"
		wget https://512pixels.net/downloads/macos-wallpapers/10-10.jpg && wget https://512pixels.net/downloads/macos-wallpapers/10-11.jpg && wget https://512pixels.net/downloads/macos-wallpapers/10-12.jpg && wget https://512pixels.net/downloads/macos-wallpapers/10-13.jpg && wget https://512pixels.net/downloads/macos-wallpapers/10-15-Day.jpg
		;;
	5)
		echo "--- Instalando o Pack de Wallpapers de Floresta ---"
		wget https://r4.wallpaperflare.com/wallpaper/428/376/851/forest-4k-desktop-background-hd-wallpaper-c816fdd8e0505ca8000cb11eb862c48a.jpg && wget https://r4.wallpaperflare.com/wallpaper/285/172/9/sunset-8k-forest-4k-wallpaper-f3fbc3fd7d29db258fb6527708db28e8.jpg && wget https://r4.wallpaperflare.com/wallpaper/803/347/759/anime-natural-light-landscape-forest-studio-ghibli-hd-wallpaper-48365d3810f05c08a02cc19e888214ba.jpg
		;;
	6)
		echo "--- Instalando o Pack de Wallpapers do Arch Linux ---"
		wget https://r4.wallpaperflare.com/wallpaper/629/215/581/arch-linux-linux-dark-gray-archlinux-wallpaper-2271c2e03d06be6b5a18725570182942.jpg && wget https://r4.wallpaperflare.com/wallpaper/292/314/336/arch-linux-archlinux-linux-operating-system-wallpaper-09b0489d716acd2ba67768afb0c166ed.jpg && wget https://r4.wallpaperflare.com/wallpaper/261/752/850/black-arch-linux-linux-arch-wallpaper-9799ca4bf6daa5e5bcbd68f0183729a3.jpg && wget https://r4.wallpaperflare.com/wallpaper/633/411/831/linux-gradient-unix-arch-linux-technology-hd-wallpaper-59c0885d41ba0dcb46f7d88fa051668d.jpg
		;;
	7)
		echo "-- Instalando o Pack de Wallpapers de Hacker ---"
		wget https://r4.wallpaperflare.com/wallpaper/220/987/639/ubuntu-linux-terminal-hacker-wallpaper-89c028fdb18addbb1637384fb0f1860d.jpg && wget https://r4.wallpaperflare.com/wallpaper/168/815/785/computer-the-room-hacker-the-world-at-night-wallpaper-3d3cd7535fdab5d1ca88d75fef1ecb67.jpg && wget https://r4.wallpaperflare.com/wallpaper/895/606/408/1920x1080-px-anarchy-computer-hacker-wallpaper-e900183d415add6b76c7888f10a1466d.jpg && wget https://r4.wallpaperflare.com/wallpaper/66/41/250/interfaces-hacking-computer-futuristic-wallpaper-e98088dd41ba5d3b7657989fb0b1c66d.jpg
		;;
	8)
		echo "--- Instalando o Pack de Wallpapers de Office ---"
		wget https://c1.wallpaperflare.com/path/427/745/192/notebook-natural-laptop-macbook-497500668a927f46aa19fafb668d8702.jpg && wget https://c1.wallpaperflare.com/path/499/312/897/paper-business-finance-document-ee8ec662dc3d8d4d4b1b9e23b06df252.jpg && wget https://c0.wallpaperflare.com/path/962/46/466/accounting-banking-calculator-clipboard-8f4106518c98a459daecb2ee3fa5f1f5.jpg && wget https://c1.wallpaperflare.com/path/624/667/690/computer-laptop-work-place-camera-031458eedaa48a81743d7dd8f580ab80.jpg
		;;
	9)
		echo "--- Ignorar ---"
		;;
	10)
		echo "--- Saindo... ---"
		exit 0
		;;
	*)
		echo "--- Opção inválida, tente novamente ---"
		;;
	esac
}

while true; do
	show_menu
	printf "Escolha uma opção: "
	read choice
	process_choice

	if [ $choice -eq 9 ]; then
		break
	fi
done

show_menu() {
  echo "1. HPlip"
  echo "2. HPlip (AUR)"
  echo "3. Ignorar"
  echo "4. Sair"
}

process_choice() {
  case $choice in
    1)
      echo "--- Instalando o HPlip ---"
      sudo pacman -S hplip
      ;;
    2)
      echo "--- Instalando o HPlip do AUR ---"
      yay -S hplip
      ;;
    3)
      echo "--- Ignorando ---"
      ;;
    4)
      echo "--- Saindo... ---"
      exit 0
      ;;
    *)
      echo "--- Opção inválida, tente novamente ---"
      ;;
  esac
}

while true; do
  show_menu
  printf "Escolha uma opção: "
  read choice
  process_choice

  if [ $choice -eq 3 ]; then
    break
  fi
done

echo "--- Parabéns o Script foi Finalizado :) ---"
