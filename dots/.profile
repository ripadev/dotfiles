export PATH=$PATH:~/.local/bin

# Setup for Ruby gem
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
