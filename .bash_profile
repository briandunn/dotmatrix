source ~/.bashrc
case $- in
	*i*)    # do things for interactive shell
	#chose editor
	export EDITOR=vim

	#setup ssh agent
	SSHAGENT=/usr/bin/ssh-agent
	SSHAGENTARGS="-s"
	if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
	   eval `$SSHAGENT $SSHAGENTARGS`
	   trap "kill $SSH_AGENT_PID" 0
	fi
	#setup ls colors
	alias ls="ls -G"
	alias ll="ls -h1"
	export CLICOLOR=1
	export LSCOLORS=ExFxCxDxBxegedabagacad
	alias vi=vim

	#different prompt
	GREEN="\[\033[1;32m\]" 
	BLUE="\[\033[0;34m\]" 
	BLACK="\[\033[0m\]" 
	export PS1="$GREEN\u@\h $BLUE\w $ $BLACK"

	# do non-login interactive shell stuff
    ;;
esac
