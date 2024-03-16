# Install-Script-Arch
Um script de pos instalação do arch linux feito por mim

### Recursos 

- Instalação automática de pacotes
- Configuração de certos recursos do sistema
- Instalação automática do yay
- Instalação de Lojas de games automaticamente podendo optar pela versão nativa ou flatpak

# ⚠️  Atenção
  
Este script só funciona no Arch Linux e em seus derivados, logo nada fora disso ele ira funcionar

### Execução

Antes de começar dê as permissões de execução para ambos os scripts (Arch Install.sh e Flatpak.sh)

```sh
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
