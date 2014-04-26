# This file is processed on each interactive invocation of bash.

# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# Don't put duplicate lines or lines starting with spaces in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# Set the history length, see HISTSIZE and HISTFILESIZE in bash(1).
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command, and if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# avoid problems with scp -- don't process the rest of the file if non-interactive
[[ $- != *i* ]] && return

# Enable color support, should work with all modern terminals.
if [ "$TERM" != "dumb" ]; then

  # Enable colors.
  if [ "`uname`" != "SunOS" ]; then
    eval `dircolors -b`
    alias ls="ls --color=auto"
    alias grep="grep --color=auto"
    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
  fi

  # Nice pretty color prompt with the current host and our current directory.
  PS1="\[\033[01;31m\]\u@\h:\[\033[01;31m\]\w\[\033[00m\]$ "
  # This prompt causes problems with wrapping lines
  #PS1="\e[0;31m\w $\e[m "
fi

# ease of use
alias ..="cd .."
alias l="ls -CF"
alias ll="ls -l"
alias la="ls -A"
alias e="vim"

# default for Purdue CS students
alias mail=mailx

# bash ease of use tweaks
set show-all-if-ambiguous on
set show-all-if-unmodified on
set completion-ignore-case on

# exports
export PATH=$PATH:/p/android-sdk/bin
export PATH=/opt/csw/gcc3/bin:$PATH
export PATH=${PATH}:/p/xinu/bin
export PATH=${PATH}:~/devenv/ag

PATH=/p/oracle10g/bin:${PATH}
ORACLE_HOME=/p/oracle10g
LD_LIBRARY_PATH=/p/oracle10g/lib:${LD_LIBRARY_PATH}
export PATH ORACLE_HOME LD_LIBRARY_PATH

#if [[ "$TERM" != "screen-256color" ]] ; then
#  # Attempt to discover a detached session and attach
#  # it, else create a new session
#
#  WHOAMI=$(whoami)
#  if tmux has-session -t $WHOAMI 2>/dev/null; then
#    tmux -2 attach-session -t $WHOAMI
#  else
#    tmux -2 new-session -s $WHOAMI
#  fi
#else
#
#  # One might want to do other things in this case,
#  # here I print my motd, but only on servers where
#  # one exists
#
#  # If inside tmux session then print MOTD
#  MOTD=/etc/motd.tcl
#  if [ -f $MOTD ]; then
#    $MOTD
#  fi
#fi

# Nice colors for dircolors.
eval `dircolors ~/devenv/dircolors-solarized/dircolors.256dark`
