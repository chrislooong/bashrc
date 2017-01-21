#Setup

export HOME="/cygdrive/c/Users/Chris/Desktop/software"
export CPPHOME="$HOME/cpp"
export JSHOME="$HOME/JS"

#COLORS

#Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

echo -e "${BCyan}This is BASH ${BRed}${BASH_VERSION%.*}${BCyan}"
date

#Aliases

alias bashrc="vim ~/.bashrc"
alias debug="set -o nounset; set -o xtrace"
alias ls='ls -hF --color=tty'                 # classify files in colour
alias mkdir='mkdir -p'
alias rebash=". ~/.bashrc"

#Functions

function cpp() {
    g++ -o $1 $1.cpp
    ./$1.exe
    rm $1.exe
}

function mc() {
    mkdir $1
    cd $1
}

function mgrep() {
    #grep -ri $1 .
    echo hi
}

function newjs() {
    mkdir $JSHOME/$1
    cp -r $JSHOME/empty-example $JSHOME/$1
}
  
function newcpp() {
    mkdir $CPPHOME/$1
    cp -r $CPPHOME/hello $CPPHOME/$1
}
