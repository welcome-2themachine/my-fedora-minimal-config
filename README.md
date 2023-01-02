# fedora-minimal-config
Setup fedora on a Dell XPS 15 9520

This is not fully automated - you will have to be on keyboard to approve installs, and catch bugs.

Scripts are builder for user: mechanicus - change all instances of this if you want to update the username (sorry, v2 of this walktrhough will come with whatever username you choose)

# Instructions
1. Install Fedora Server 37
	- select custom install
	- select encrypted storage
2. Run: sudo dnf update then reboot
3. chmod +x control-script.sh
4. ./control-script.sh
5. System will reboot after the control script is finished - be warned
6. Enjoy a super slim fedora (should be under 1k packages)

# Cleanup
1. Install the following Gnome Extensions (https://extensions.gnome.org/local/)
	- Clipboard Indicator (https://extensions.gnome.org/extension/779/clipboard-indicator/)
	- Dash to Dock for COSMIC (https://extensions.gnome.org/extension/5004/dash-to-dock-for-cosmic/)
		Position and Size
		- Show on all monitors
		- Position on screen: Bottom
		- Dock Allignment: Center
		- Intelligent autohide
			- Enable in fullscreen mode
			- Push to show
			- Dodge Windows
			- All windows
		- Dock Size Limit 90%
		- Icon Size Limit 40px
		Launchers (checked / on)
		- show open window previews
		- show urgent windows despite current workspace
		- keep the focused application always visible in the dash
		- only if mounted
		Behavior
		- Use keybaord shortcuts to activate apps
		- Click action: Launch a new instance
		- Scroll action: Cycle through windows
		Appearance
		- Shrink the dash
		- Cusomize the dash color (black)
		- Opacity: 80%
		- Show overview on startup
		- Border radius 15px
		- Margin 4px
	- Gnome 4x UI Improvements (https://extensions.gnome.org/extension/4158/gnome-40-ui-improvements/)
	- GTK Title Bar (https://extensions.gnome.org/extension/1732/gtk-title-bar/) set to both
	- Native Window Placement (https://extensions.gnome.org/extension/18/native-window-placement/)
	- Simple System Monitor (https://extensions.gnome.org/extension/4506/simple-system-monitor/)
	- Volume Mixer https://extensions.gnome.org/extension/5446/quick-settings-tweaker/
		- CPU: 
		- Memory: 
		- Download: 
		- Upload: 
		- Font: agave Nerd Font 14
		- Itep Separator | 
	- User Themes
2. Tweaks: 
	- General: all on
	- Appearance:
		- Cursor: default
		- Icons: default
		- Shell: Flat-Remix-Miami-Dark-fullPanel
		- Legacy: Flat-Remix-GTK-Grey-Darkest-Solid
	- Fonts:
		- Iterface / Document: agave Nerd Font r 11
		- Monospace: agave Nerd Font Mono r
		- Lecacy: agave Nerd Font Bold
	- KB / Mouse:
		- Acceleration Profile: Adaptive
		- All on
		- Fingers
	- Top Bar: Date, Seconds
	- Window Titlebars: Toggle Maximize, Minimize
	- Windows: Center New Windows
3. Other Apps
	- Chrome
4. Sign in to everything (chrome, discord, signal, code etc)
5. Fix grub2
	- Edit /etc/default/grub
	- change GRUB_TIMEOUT=5 to GRUB_TIMEOUT=0
6. Fix the lvm
	- lvextend -l +100%FREE /dev/fedora/root
	- xfs_growfs /dev/fedora/root