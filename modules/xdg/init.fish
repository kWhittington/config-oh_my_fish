# Set XDG variables.
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_DIRS "/usr/local/share/:/usr/share/"
set -x XDG_CONFIG_DIRS "/etc/xdg"
