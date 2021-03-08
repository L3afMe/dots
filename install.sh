# L3af's Dots installer

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RESET='\033[0m'

# Prompt yes/no
function prompt_yn {
	while true
	do
		read -p "$* [y/n]: " yn
		case $yn in
			[Yy]*) return 1 ;;
			[Nn]*) return 0 ;;
		esac
	done
}

# Update outdated packages
echo -e " -- Updating system packages"
sudo pacman -Sqyu --noprogressbar

# Setup pacman packages
echo -e " -- Installing pacman packages"
sudo pacman -Sq --noconfirm --needed --noprogressbar \
	git         \
	hub         \
	bat         \
	exa         \
	starship    \
	qutebrowser \
	kitty       \
	xmonad      \
	base-devel  \
	nodejs      \
	npm         \
	ruby        \
	python      \
	python-pip

# Check for yay
echo -e " -- Checking for yay"
if ! command -v yay &> /dev/null
then
	# Install yay
	echo -e " -- Installing yay"
	cd /opt
	sudo git clone https://aur.archlinux.org/yay.git
	CUR_USER=$(whoami)
	sudo chown -R $CURUSER:users ./yay
	cd yay
	makepkg -si
fi

# Setup yay packages
echo -e " -- Installing AUR packages with yay"
yay -Sq --batchinstall --sudoloop   --noupgrademenu \
	--nocleanmenu  --noeditmenu --norebuild     \
	--noredownload --noconfirm  --noprogressbar \
	elvish

# Set default shell for all users
echo -e " -- Setting default to Elvish"
ELVISH_PATH=$(command -v elvish)
for USER in $(grep -v -e 'nologin' -e 'git-shell' -e "$ELVISH_PATH" /etc/passwd | sed 's/:.*//g')
do
	sudo chsh --shell $ELVISH_PATH $USER
done

# Install neovim dependencies
echo -e " -- Installing neovim dependencies"
npm list -g | grep -q 'yarn'           || sudo npm install --global yarn
npm list -g | grep -q 'neovim'         || sudo npm install --global neovim
gem list | grep -q 'neovim'            || gem install neovim
python3 -m pip list | grep -q 'pynvim' || python3 -m pip install pynvim

VIM_PLUG_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload"
if [ ! -d $VIM_PLUG_DIR ]
then
	echo -e " -- Installing vim-plug"
	sh -c 'curl -sfLo "$VIM_PLUG_DIR/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

# Clone repo
cd ~

# Check that there's no dots directory already
if [ -d 'dots' ]
then
	# If exists prompt if should remove
	echo -e "${RED} !! ~/dots already exists${RESET}"
	if prompt_yn " ?? Remove current ~/dots directory?"
	then
		echo -e "${RED} !! Aborted install${RESET}"
		exit
	fi

	rm -rf dots
fi
echo -e " -- Cloning L3afMe/dots to ~/dots"
git clone -q https://github.com/L3afMe/dots

# Backup old config
BACKUP=0
CONFIG_PATH=${XDG_CONFIG_HOME:-.config}
if ! prompt_yn " ?? Backup old config?"
then
	mkdir "dots/backup"
	BACKUP=1
fi

# Backup or remove old config
if [ -d ".elvish" ]
then
	if [ $BACKUP == 1 ]
	then
		echo -e " -- Backing up old elvish config"
		mv .elvish dots/backup/elvish
	fi

	echo -e " -- Removing old elvish config"
	rm -rf .elvish
fi

for DIR in kitty nvim qutebrowser
do
	if [ -d "$CONFIG_PATH/$DIR" ]
	then
		if [ $BACKUP == 1 ]
		then
			echo -e " -- Backing up old $DIR config"
			mv "$CONFIG_PATH/$DIR" "dots/backup/"
		fi

		echo -e " -- Removing old $DIR config"
		rm -rf "$CONFIG_PATH/$DIR"
	fi
done

# Setup Elvish
echo -e " -- Setting up Elvish"
mkdir ".elvish"
ln -s ~/dots/elvish/rc.elv .elvish/
ln -s ~/dots/elvish/starship.toml .elvish/

# Setup nvim
echo -e " -- Setting up nvim"
mkdir -p "$CONFIG_PATH/nvim/colors"
ln -s ~/dots/nvim/init.vim "$CONFIG_PATH/nvim/"
ln -s ~/dots/nvim/coc-settings.json "$CONFIG_PATH/nvim/"
ln -s ~/dots/nvim/colors/rose-pine-light.vim "$CONFIG_PATH/nvim/colors"

# Setup qutebrowser
echo -e " -- Setting up qutebrowser"
mkdir "$CONFIG_PATH/qutebrowser"
ln -s ~/dots/qutebrowser/config.py "$CONFIG_PATH/qutebrowser/"
ln -s ~/dots/qutebrowser/autoconfig.yml "$CONFIG_PATH/qutebrowser/"

# Setup Kitty
echo -e " -- Setting up kitty"
mkdir "$CONFIG_PATH/kitty"
ln -s ~/dots/kitty/kitty.conf "$CONFIG_PATH/kitty/"
ln -s ~/dots/kitty/rose-pine-dawn.conf "$CONFIG_PATH/kitty/"

# Finished!!
echo -e "${GREEN} -- Successfully setup symlinks${RESET}"
