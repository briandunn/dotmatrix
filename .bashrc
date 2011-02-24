source ~/.profile
#(non-login interactive shell)
#bash completion
BASH_COMPLETION_PATH=`/usr/local/bin/brew --prefix`/etc/bash_completion
if [ -f $BASH_COMPLETION_PATH ]; then
  . $BASH_COMPLETION_PATH
fi
