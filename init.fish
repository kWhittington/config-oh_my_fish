# Set $HOME_CONFIG if it doesn't exist
set -q HOME_CONFIG; or set -x HOME_CONFIG "$HOME/.config"
set -q OMF_MODULES; or set -x OMF_MODULES "$OMF_CONFIG/modules"

# http://stackoverflow.com/questions/10873437/
# unable-to-locate-an-executable-at-usr-bin-java-bin-java-1
set -x JAVA_HOME /Library/Java/Home

# Cocos JS
set -x COCOS_CONSOLE_ROOT /usr/local/Cellar/cocos2d-js/tools/cocos2d-console/bin
set -gx PATH $COCOS_CONSOLE_ROOT $PATH
set -x ANT_ROOT /usr/local/bin/

# RVM
rvm default

function start_handler_dev
  # Handler environment variables for db connection:
  set -x ALERTBUSDB_HOST (docker-machine ip default)
  set -x ALERTBUSDB_NAME ongo_dev
  set -x ALERTBUSDB_PASSWORD newcontext
  set -x CONSOLEDB_HOST (docker-machine ip default)
  set -x CONSOLEDB_NAME fxs_console_development
  set -x CONSOLEDB_PASSWORD newcontext
  docker_daemon_start
end

function docker_daemon_start
  bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'
end

function remove_skype
  rm -rf /Applications/Skype.app/
  rm -rf ~/Library/Application Support/Skype*
  rm -rf ~/Library/Preferences/com.skype.skype.plist
end

source $OMF_MODULES/xdg/init.fish
