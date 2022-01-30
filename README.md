# sh -c "$(curl -fsSL
https://raw.github.com/groksrc/dotfiles-local/master/README.md)"

# creates a new ssh key pair
ssh-keygen -t rsa -f "$HOME/.ssh/id_rsa" -P "";

# prompts for a password
ssh-keygen -p -f "$HOME/.ssh/id_rsa" -P "";

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";

# makes Homebrew available in this terminal
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/drew/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)";

# install vscode
brew install --cask visual-studio-code;

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

# install dotfiles
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles;

# install 
brew install rcm;

# rcup the default dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup

# clone local dotfiles
git clone git://github.com/groksrc/dotfiles-local.git

# install iterm2 integration
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash;


