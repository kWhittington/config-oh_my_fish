set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_CERT_PATH /Users/kwhittin/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1
# http://stackoverflow.com/questions/10873437/
# unable-to-locate-an-executable-at-usr-bin-java-bin-java-1
set -x JAVA_HOME /Library/Java/Home

# Cocos JS
set -x  COCOS_CONSOLE_ROOT /Users/kwhittin/Downloads/cocos2d-js/tools/cocos2d-console/bin
set -gx PATH $COCOS_CONSOLE_ROOT $PATH
set -x ANT_ROOT /usr/local/bin/
