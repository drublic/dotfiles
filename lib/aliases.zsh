# Allow aliases to be with sudo
alias sudo="sudo "

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"

# List dir contents aliases
# ref: http://ss64.com/osx/ls.html
# Long form no user group, color
alias l="ls -oG"
# Order by last modified, long form no user group, color
alias lt="ls -toG"
# List all except . and .., color, mark file types, long form no user group, file size
alias la="ls -AGFoh"
# List all except . and .., color, mark file types, long form no use group, order by last modified, file size
alias lat="ls -AGFoth"
# List only directories
alias lsd='ls -l | grep "^d"'

# Concatenate and print content of files (add line numbers)
alias catn="cat -n"

# File size
alias fs="stat -f \"%z bytes\""

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Copy my public key to the pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

# Flush DNS cache
alias flushdns="dscacheutil -flushcache"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# MySQL
alias mysql="/usr/local/mysql/bin/mysql"
alias mysqladmin="/usr/local/mysql/bin/mysqladmin"
alias mysqlserver="/usr/local/mysql/support-files/mysql.server"

# Create a tar file
alias maketar="tar -czf"
alias untar="tar -xzf"

# Use hub for git - http://defunkt.io/hub/
alias git="hub"

# Shorthand Programs
alias spotify='open -a "Spotify"'
alias subl='open -a "Sublime Text"'
alias vsc='open -a "Visual Studio Code"'

# Thanks Paul! – http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"

# Prevent deleting
alias rm="rm -i"

# Clean all branches except master
# Thanks to @melros
alias repo-branch-cleanup="git checkout master && git remote update --prune | git branch --merged | egrep -v 'master|release|develop' | xargs git branch -d; git branch -r --merged |  egrep -v 'master|release|develop' | sed -e 's/origin\//:/' | xargs git push origin";