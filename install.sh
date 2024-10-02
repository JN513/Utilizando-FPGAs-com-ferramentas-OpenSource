#!/bin/bash

# Função para instalar dependências no Debian/Ubuntu
install_debian() {
    echo "Detectado Debian/Ubuntu. Instalando TeX Live..."
    sudo apt update
    sudo apt install -y texlive-full
}

# Função para instalar dependências no Fedora
install_fedora() {
    echo "Detectado Fedora. Instalando TeX Live..."
    sudo dnf install -y texlive-scheme-full
}

# Função para instalar dependências no Arch
install_arch() {
    echo "Detectado Arch. Instalando TeX Live..."
    sudo pacman -Syu --noconfirm texlive-bin texlive-basic texlive-binextra
}

# Detectando a distribuição
if [ -f /etc/os-release ]; then
    . /etc/os-release
    case "$ID" in
        debian)
            install_debian
            ;;
        ubuntu)
            install_debian
            ;;
        fedora)
            install_fedora
            ;;
        arch)
            install_arch
            ;;
        *)
            echo "Distribuição não suportada: $ID"
            exit 1
            ;;
    esac
else
    echo "Não foi possível detectar a distribuição."
    exit 1
fi

echo "Instalação do pdflatex e suas dependências concluída!"

