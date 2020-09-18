# ~/.profile: executed by Bourne-compatible login shells.
force_color_prompt=yes
if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
     . ~/.bashrc
  fi
fi

mesg n 2> /dev/null || true


# ----------------- Custom Settings ----------------
# ---------- This file is called first, it loads .bashrc, then comes back here so these are lasting commands ---- #

# Show git information, if possible
parse_git_branch()
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Color prompt to be nice :)
PS1="\[\033[01;36m\]\u\[\033[01;34m\][\W]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] "

# Agent forwarding
eval `ssh-agent` > /dev/null 2>&1
ssh-add -k > /dev/null 2>&1
ssh-add -k /roots/.ssh/shared/id_rsa_shared > /dev/null 2>&1

# Aliases
alias aks-test-cluster='ssh aks-test-cluster'
alias hcp='ssh hcp'
alias runner1='ssh runner1'
alias runner2='ssh runner2'
alias runner3='ssh runner3'
alias acn='cd ~/go/src/github.com/Azure/azure-container-networking'
alias aks-e='cd ~/go/src/github.com/Azure/aks-engine'
alias net='cd ~/repos/Networking-Aquarius'
alias dnc='cd ~/repos/Networking-Aquarius/src/dnc'
alias aks='cd ~/go/src/goms.io/aks/rp'
alias sand='cd ~/sand'
alias scripts='cd ~/scripts'
alias repos='cd ~/repos'
alias temp='cd ~/temp'
alias home='cd /mnt/c/users/paujohns/'
alias c='cd /mnt/c/'
alias d='cd /mnt/d/'

# Go settings
export GOPATH="/root/go"
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GO111MODULE=auto

# Turn off bell for less, man, git
export LESS="$LESS -R -Q"

# Kubebuilder
export PATH=$PATH:/usr/local/kubebuilder/bin

# Kubeconfig
export KUBECONFIG=/root/.kube/config

# Kube autocompletion
alias k=kubectl
source <(kubectl completion bash)
complete -F __start_kubectl k

# Editor for kube edit
# export EDITOR='code --wait'
export EDITOR=vim
