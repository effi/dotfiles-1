# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

# YADR support
alias yav='yadr vim-add-plugin'
alias ydv='yadr vim-delete-plugin'
alias ylv='yadr vim-list-plugin'
alias yup='yadr update-plugins'
alias yip='yadr init-plugins'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
alias ar='source $yadr/zsh/aliases.zsh'  #alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'
alias vm='vim ~/.vim/settings/vmail.vim'
alias vs="cd ~/.vim/settings && ls"

# zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias c='rails c' # Rails 3
alias co='script/console --irb=pry' # Rails 2
alias ts='thin start'
alias ms='mongrel_rails start'
alias tfdl='tail -f log/development.log'
alias tftl='tail -f log/test.log'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'

# TODOS
# This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
# to find the note called 'todo'
alias todo='open nvalt://find/todo'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

# Zeus
alias zs='zeus server'
alias zc='zeus console'

# Rspec
alias rs='rspec spec'
alias sr='spring rspec'
alias src='spring rails c'
alias srgm='spring rails g migration'
alias srdm='spring rake db:migrate'
alias srdt='spring rake db:migrate'
alias srdmt='spring rake db:migrate db:test:prepare'

# Sprintly - https://github.com/nextbigsoundinc/Sprintly-GitHub
alias sp='sprintly'
# spb = sprintly branch - create a branch automatically based on the bug you're working on
alias spb="git checkout -b \`sp | tail -2 | grep '#' | sed 's/^ //' | sed 's/[^A-Za-z0-9 ]//g' | sed 's/ /-/g' | cut -d"-" -f1,2,3,4,5\`"

alias hpr='hub pull-request'
alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias dbtp='spring rake db:test:prepare'
alias dbm='spring rake db:migrate'
alias dbmr='spring rake db:migrate:redo'
alias dbmd='spring rake db:migrate:down'
alias dbmu='spring rake db:migrate:up'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'

# Openfoam und IAG
alias of222='. ~/OpenFOAM/OpenFOAM-2.2.2/etc/bashrc';  
alias of230=" . ~/OpenFOAM/OpenFOAM-2.3.0/etc/bashrc";   
alias fe30='. $HOME/foam/foam-extend-3.0/etc/bashrc'
alias fe31='. $HOME/foam/foam-extend-3.1/etc/bashrc'
alias paraFoam="paraFoam -builtin"
alias hprandtl="ssh -X iaghuang@prandtl.iag.uni-stuttgart.de"
alias t="tec360"
alias o="open -a"
alias pointwise="/Applications/Pointwise/PointwiseV17.2R2/macosx/Pointwise.app/Contents/MacOS/Pointwise"
alias prandtl='ssh -X iagleinb@prandtl.iag.uni-stuttgart.de'
alias dprandtl='ssh -X iagdohno@prandtl.iag.uni-stuttgart.de'
alias unigateway='ssh -X iagleinb@bernoullie.iag.uni-stuttgart.de'
alias ofMount='hdiutil attach -mountpoint $HOME/OpenFOAM $HOME/OpenFOAM2.sparsebundle'
alias ofMount2='hdiutil attach -mountpoint $HOME/OpenFOAM $HOME/OpenFOAM.sparsebundle'
alias feMount='hdiutil attach -mountpoint $HOME/foam $HOME/foam.sparsebundle'
export PWID_LICENSE_FILE=@lizserv.iag.uni-stuttgart.de 
export GRIDGEN_HOME='/Applications/GridgenV15'
alias gridgen='/Applications/GridgenV15/gridgen'
alias bwuni="ssh -x st_lrt70667@bwunicluster.scc.kit.edu"
alias unbenddir="cd ~/Documents/Studienarbeit\ IAG/Unbend/"
alias bwuni_scp="scp st_lrt70667@bwunicluster.scc.kit.edu:"

# easier open foam boundary editing
alias be="vim 0/U 0/p constant/polyMesh/boundary"

alias scpToBwuni="/bin/bash ~/bin/scpToBwuni.sh"
alias scpFromBwuni="/bin/bash ~/bin/scpFromBwuni.sh"

alias bwp="cd /Volumes/bwuni/"

# Vmail aliase
alias antworten="vmail [Mailbox]/Antworten"
alias lesen="vmail [Mailbox]/Lesen"
alias waiting="vmail [Mailbox]/Waiting"
alias referenz="vmail [Mailbox]/Refernzmaterieal"
alias rechnung="vmail [Mailbox]/Rechnungen"
# alias antworten="vmail GTD/Antworten"
# alias lesen="vmail GTD/Lesen"
# alias waiting="vmail GTD/Waiting"
# alias referenz="vmail GTD/Refernzmaterieal"
# alias rechnung="vmail GTD/Rechnungen"
#

# vim plugin dev
alias vundleUpdate='cd ~/.yadr/;rake install_vundle; cd -'

# dropbox cli
alias dropbox='~/bin/dropbox.py'
