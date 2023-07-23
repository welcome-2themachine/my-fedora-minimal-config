# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

shopt -s checkwinsize
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias wake-bastion='ssh ssh.nobodyhome.dev wake-bastion'
alias update="sudo dnf update && sudo flatpak update && sudo snap refresh && neofetch"
alias update-posh="curl -s https://ohmyposh.dev/install.sh | sudo bash -s"
eval "$(oh-my-posh --init --shell bash --config ~/.config/poshthemes/catppuccin.omp.json)"

unset rc
