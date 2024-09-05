#fnm is a node.js version manager
# see: https://github.com/Schniz/fnm

if command -v "fnm" &> /dev/null
then
  eval "$(fnm completions --shell bash)"
  eval "$(fnm env)"
fi
