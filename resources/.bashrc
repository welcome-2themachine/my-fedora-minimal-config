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
alias update="sudo dnf update && sudo flatpak update && neofetch"
alias gfx-hybrid="supergfxctl -m hybrid"
alias gfx-integrated="supergfxctl -m integrated"

#eval "$(oh-my-posh --init --shell bash --config ~/.config/poshthemes/night-owl.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config ~/.config/poshthemes/space.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config ~/.config/poshthemes/bubbles.omp.json)"
eval "$(oh-my-posh --init --shell bash --config ~/.config/poshthemes/bubblesextra.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config ~/.config/poshthemes/clean-detailed.omp.json)"


unset rc
