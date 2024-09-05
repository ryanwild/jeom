alias vim=nvim
alias dls="docker ps --format '{{.Names}}'"
alias _lsof_ports="sudo lsof -i -P -n"
alias _netstat_ports="sudo netstat -tulpn"
alias zola="flatpak run org.getzola.zola"
alias gs="git status"
alias ge="git commit --amend --no-edit"
alias check_wifi="nmcli dev wifi"
alias serve_here="python3 -m http.server --bind 127.0.0.1 --directory . 8080"
alias count_files="find . -maxdepth 1 -type f | wc -l"

# Usage: extract <file>
# Description: Extract most know archives with one command
extract () {
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf "$1"    ;;
      *.tar.gz)    tar xvzf "$1"    ;;
      *.bz2)       bunzip2 "$1"     ;;
      *.rar)       unrar x "$1"     ;;
      *.gz)        gunzip "$1"      ;;
      *.tar)       tar xvf "$1"     ;;
      *.tbz2)      tar xvjf "$1"    ;;
      *.tgz)       tar xvzf "$1"    ;;
      *.zip)       unzip "$1"       ;;
      *.Z)         uncompress "$1"  ;;
      *.7z)        7z x "$1"        ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Usage: mkd <dir>
# Description: Create a new directory and enter it
mkd () {
  mkdir -p "$@" && cd "$@"
}

# Usage: mkf <file>
# Description: Create a new file and open it
mkf () {
  touch "$@" && code "$@"
}

# Usage: cdf <dir>
# Description: Change to a directory and list its contents
cdf () {
  cd "$1" && ll
}

#usage: docker-container-host-ip <container-name>
docker-container-host-ip () {
  echo "Extracting host IP from container: $1"
  docker exec "$1" sh -c "/sbin/ip route" | awk '/default/ { print $3 }'
}

fda() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m --preview 'ls -la {}') &&
  cd "$dir"
}

fd() {
  local dir
  dir=$(find ${1:-.} -not -path '*/.*' -maxdepth 1 -type d -print 2> /dev/null | fzf +m --preview 'ls -la {}') &&
  cd "$dir"
}

fcode() {
  local f
  f=$(find ${1:-.} -not -path '*/.*' -type f -print 2> /dev/null | fzf +m --preview 'bat --color=always {}') &&
  code "$f"
}

emoji() {
  local selected
  selected=$(curl -sSL 'https://gist.githubusercontent.com/ryanwild/078ce4439687f195d2337e438ef7d2ba/raw/c618da93228a744ebd816415572ffed578c86db5/emoji.txt' | fzf +m) &&
  echo -n "$selected" | cut -b 1-4 | xclip -selection clipboard
}
