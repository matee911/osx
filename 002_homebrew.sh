# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew doctor

# OS X now comes with git but you can't easily manage it's version, 
# so i've decided to take it from homebrew
brew install git
brew install bash-completion
brew install zsh-completions
brew install ack
