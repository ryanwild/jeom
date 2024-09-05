# completions for ripgrep (rg)
if command -v "rg" &> /dev/null
then
  eval "$(rg completion --generate complete-bash)"
fi
