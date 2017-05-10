# Easier navigation: .., ..., ~ and - thanks @paulirish
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# tells me my IP Address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# visual git history
alias gitlog="git log --graph --oneline --all --decorate"

# amend last commit message
function oops() {
    git commit --amend -m "$@"
}

# git push
alias push="git push"

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"

# open up emoji cheat sheet in browser
alias emojis="open http://www.emoji-cheat-sheet.com/"

# restart window
alias wtf="source ~/.zshrc"

# open these directories from anywhere
alias workspace="~/Workspace/"
alias sites="~/Sites/"

# create new laravel project using composer
function laravel() {
    composer create-project laravel/laravel "$@" --prefer-dist
}

# remove directory and all files / folders iniside
function murder() {
    rm -rf "$@"
}

# why is my mac slow?
alias whysoslow="top -o vsize"

# QuickLook preview from command-line
function ql() {
    qlmanage -p "$@"
}

# stop your mac from sleeping for 1h
alias nobreak="caffeinate -u -t 3600"

# sort files by size in a directory
alias lsize="ls -lhS"

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update'

# ¯\_(ツ)_/¯
alias shrug='echo "¯\_(ツ)_/¯" | pbcopy && echo "¯\_(ツ)_/¯ copied to clipboard."'

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

alias diskspace_report="df -P -kHl"

alias g="git"

# File size
alias fs="stat -f \"%z bytes\""

# Thanks to Taylor Otwell
alias weather='curl -s wttr.in/london | sed -n "1,7p"'

# sublime shortcut
alias sub="sublime"

# Chrome. Hello headless Chrome.
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

# PDF e.g. pdf https://itsluk.as
function pdf() {
    chrome --headless --disable-gpu --print-to-pdf "$@"
}

# Print dom
function pdom() {
    chrome --headless --disable-gpu --dump-dom "$@"
}
