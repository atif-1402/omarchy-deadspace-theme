set -l color00 '#010101'
set -l color01 '#958a8a'
set -l color02 '#a49a9a'
set -l color03 '#b2aaaa'
set -l color04 '#c1baba'
set -l color05 '#cfcaca'
set -l color06 '#dedada'
set -l color07 '#F6F6F5'
set -l color08 '#dddbdb'
set -l color09 '#ada5a5'
set -l color0A '#bcb5b5'
set -l color0B '#cac5c5'
set -l color0C '#d9d5d5'
set -l color0D '#e7e5e5'
set -l color0E '#f6f5f5'
set -l color0F '#ffffff'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
