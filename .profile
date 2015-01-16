export CLICOLOR=1

# this should run the last command with sudo
alias please='eval "sudo $(fc -ln -1)"'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias g="git"
alias h="history"
alias j="jobs"
alias s="cd ~/Sites"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'


# Enable aliases to be sudo’ed
alias sudo='sudo '
# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/blake/drush

#open google chrome without web security
alias chrome="open /Applications/Google\ Chrome.app --args --disable-web-security"

#adds android sdk stuff to PATH
export PATH=${PATH}:/Applications/android_dev/sdk/platform-tools:/Applications/android_dev/sdk/tools

#ask ryan a question and recieve a ryan answer

QUESTIONS=('What is your question?' 'What now?' 'Is this going to be work?' 'Why me?' 'Go away im busy' 'What part of your job cant you do now?' 'Yes?' 'What?');
WORDS=('Everything you just did is wrong, all wrong.' 'Did you google it?' 'Ah thats so easy I cant believe you cant do that.' 'Ask Josh' 'Did you try turning it off then on again.' 'sigh thats so simple' 'Oh no that sounds like work.');

alias askryan='QUESTION="${QUESTIONS[$[ $[ RANDOM % ${#QUESTIONS[@]} ]]]}"; echo $QUESTION; say $QUESTION; echo "Question:"; read yourquestion; ANSWER="${WORDS[$[ $[ RANDOM % ${#WORDS[@]} ]]]}"; echo $ANSWER; say $ANSWER;'

#adb logcat that logs all web/cordova related things
alias cordovalog="adb logcat -v long -s \"CordovaLog CordovaWebView CordovaActivity\""

#git reset head and clean it, only for mess ups
alias gitrekt="git reset --hard HEAD && git clean -f"

#build out the omnibox firmware
alias buildfirmware="cd ~/code_koalas/firmware/update; zip -r update_new *;mv update_new.zip ../; cd ..; java -Xmx2024m -jar signapk.jar -w testkey.x509.pem testkey.pk8 update_new.zip update.zip"

#build and sign the omnibox app after removing any dev code
alias buildapp="cd ~/Sites/omnibox; phonegap build android; cd platforms/android; ant release"

#This loads nvm
export NVM_DIR="/Users/blake/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#adb logcat verbose and long format
alias longcat="adb logcat -v long"

#open atom text editor
alias atom='open -a "Atom"'

#release and install an app
alias restall="cd ~/sites/omnibox/platforms/android && ant release && adb install -rd ~/sites/omnibox/platforms/android/bin/OMNIBOXTVLaunch-release.apk"
