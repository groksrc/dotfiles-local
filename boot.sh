# make code
mkdir -p code;

# install 1Password
brew install --cask 1password;

read -p "1Password is installed. Ready to continue?" -n 1 -r;
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

# creates a new ssh key pair
ssh-keygen -t rsa -f "$HOME/.ssh/id_rsa" -P "";

# prompts for a password
ssh-keygen -p -f "$HOME/.ssh/id_rsa" -P "";

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";

# makes Homebrew available in this terminal
eval "$(/opt/homebrew/bin/brew shellenv)";

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

# install dotfiles
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles;

# install 
brew install rcm;

# rcup the default dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup -x boot.sh

# clone local dotfiles
git clone git://github.com/groksrc/dotfiles-local.git

# install iterm2 integration
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash;

# install vscode
brew install --cask visual-studio-code;

# install slack
brew install --cask slack;

# install brave
brew install --cask brave-browser;

# install chrome
brew install --cask google-chrome;

# install firefox
brew install --cask firefox;

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;

# install node
nvm install --lts;
