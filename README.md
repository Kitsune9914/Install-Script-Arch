# Install-Script-Arch
Um script de pos instalação do arch linux feito por mim para uso pessoal mas que caso alguém o ache util também sinta-se a vontade para usa-lo

### Recursos 

- Instalação automática de pacotes
- Configuração de certos recursos do sistema
- Instalação automática do yay
- Instalação de Lojas de games automaticamente

# ⚠️  Atenção
  
Este script só funciona no Arch Linux e em seus derivados (E que tenham o ZSH ou você tenha instalado ), logo nada fora disso ele ira funcionar

E o script utiliza o yay pra instalar os pacotes do AUR

### Caso não tenha o ZSH instalado

Execute

```
sudo pacman -S zsh
```
Assim o ZSH será instalado

### Execução

Antes de começar dê as permissões de execução para ambos os scripts:

```
chmod +x "Arch Install.sh" Flatpak.sh
```
E execute o Flatpak.sh com:
```
./Flatpak.sh
```
Como o Flatpak nescessita que o computador reinicie pra ser instalado corretamente só execute o Arch Install.sh se tiver Executado o Flatpak.sh e instalado o Suporte a Flatpak, pois alguns apps do Arch Install.sh prescisam do Flatpak instalado

E vai aparecer algo semelhante a isso no seu terminal (No caso tenha multiplas escolhas)

```
1 - Firefox
2 - Librewolf
3 - Ignorar

Escolha uma opção:
```

E selecione a opção que mais lhe agradar
