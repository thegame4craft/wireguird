if [[ -f "/etc/os-release" ]]; then
    source "/etc/os-release"
    if [[ "${ID}" == "fedora" ]]; then
        echo "not supported yet"
        #sudo dnf install wireguard-tools gtk3-devel golang resolvconf
    elif [[ "${ID}" == "ubuntu" ]]; then
        sudo apt install wireguard-tools libgtk-3-dev libayatana-appindicator3-dev golang-go resolvconf
    elif [[ "${ID}" == "debian" ]]; then
        sudo apt install wireguard-tools libgtk-3-dev libayatana-appindicator3-dev golang-go resolvconf
    elif [[ "${ID}" == "arch" ]]; then
        sudo pacman -S wireguard-tools gtk3 libayatana-appindicator go openresolv
    fi
fi
