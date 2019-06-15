# Use global profile when available
if [ -f /usr/share/defaults/etc/profile ]; then
	. /usr/share/defaults/etc/profile
fi
# allow admin overrides
if [ -f /etc/profile ]; then
	. /etc/profile
fi

# Start neofetch for bling-bling
neofetch

#--------------- ALIASES -----------------

# 1. CLEAR LINUX

# -> Updates/Installs/Removals of native swupd packages
alias checkupd="sudo swupd check-update"
alias update="sudo swupd update"
alias installpk="sudo swupd bundle-add"
alias removepk="sudo swupd bundle-remove"

# -> Updates/Installs/Removals of flatpak packages
alias flatup="flatpak update"
alias flatinstall="flatpak install"
alias flatremove="flatpak uninstall"
alias flatclean="flatpak uninstall --unused"
