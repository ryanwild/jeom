# correct escape codes for colors
_OPEN="\001"
_CLOSE="\002"
_ESC="\033"

# construct color and style with escapes
_NORMAL="$_OPEN$_ESC[0;00m$_CLOSE"
_BOLD="$_OPEN$_ESC[1m$_CLOSE"

# colors
_LIGHTRED="$_OPEN$_ESC[38;5;196m$_CLOSE"
_DARK_GREY="$_OPEN$_ESC[38;5;244m$_CLOSE"

# style
_ERROR_STYLE="$_OPEN$_ESC[38;5;15m$_ESC[48;5;160m$_CLOSE"

# functions
_error_code() {
  local e=$?
  (( e )) && echo -ne "\n$_ERROR_STYLE EXIT CODE: $e $_NORMAL\n"
}

_prompt() {
  echo -ne "$_BOLD$_LIGHTREDλ$_NORMAL"
}

PS1='$(_error_code)\n┏ $(echo -ne "$_DARK_GREY")\t \w $(echo -ne "$_NORMAL")\n┗ $(_prompt) '
