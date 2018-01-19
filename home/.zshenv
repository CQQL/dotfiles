# Initialize rustup
export PATH="$HOME/.cargo/bin:$PATH"

# Initialize pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - --no-rehash)"
eval "$(pyenv virtualenv-init -)"

# Make my utilities available on PATH
export PATH="$HOME/.local/bin:$PATH"

# Set editor
export EDITOR="vim"

# Use the system libstdc++ because the emulator won't start otherwise
export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
