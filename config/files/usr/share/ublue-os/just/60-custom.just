import '100-bling.just'
import '61-framework.just'
# Include some of your custom scripts here!

homedir := env_var('HOME')

clone-my-dotfiles: setup-starship
	git clone https://git.sr.ht/~nesv/emacs.d {{homedir}}/.emacs.d
	git clone https://git.sr.ht/~nesv/hypr {{homedir}}/.config/hypr
	git clone https://git.sr.ht/~nesv/kitty {{homedir}}/.config/kitty
	git clone https://git.sr.ht/~nesv/helix {{homedir}}/.config/helix

setup-nvim:
	git clone --depth=1 https://github.com/wbthomason/packer.nvim {{homedir}}/.local/share/nvim/site/pack/packer/start/packer.nvim
	git clone https://git.sr.ht/~nesv/nvim {{homedir}}/.config/nvim
	nvim +PackerSync +qall
	
setup-starship:
	git clone https://git.sr.ht/~nesv/starship /tmp/git.sr.ht-nesv-starship
	make -C /tmp/git.sr.ht-nesv-starship install
	rm -rf /tmp/git.sr.ht-nesv-starship
