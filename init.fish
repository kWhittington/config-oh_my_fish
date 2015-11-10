# http://stackoverflow.com/questions/10873437/
# unable-to-locate-an-executable-at-usr-bin-java-bin-java-1
set -x JAVA_HOME /Library/Java/Home

# Cocos JS
set -x COCOS_CONSOLE_ROOT /usr/local/Cellar/cocos2d-js/tools/cocos2d-console/bin
set -gx PATH $COCOS_CONSOLE_ROOT $PATH
set -x ANT_ROOT /usr/local/bin/

function docker_daemon_start
  bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'
end
