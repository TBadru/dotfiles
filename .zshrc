# fzf
git-fzf() {
  git ls-files | fzf --style full \
    --border --padding 1,2 \
    --border-label ' Demo ' --input-label ' Input ' --header-label ' File Type ' \
    --preview 'fzf-preview.sh {}' \
    --bind 'result:transform-list-label:
        if [[ -z $FZF_QUERY ]]; then
          echo " $FZF_MATCH_COUNT items "
        else
          echo " $FZF_MATCH_COUNT matches for [$FZF_QUERY] "
        fi
        ' \
    --bind 'focus:transform-preview-label:[[ -n {} ]] && printf " Previewing [%s] " {}' \
    --bind 'focus:+transform-header:file --brief {} || echo "No file selected"' \
    --bind 'ctrl-r:change-list-label( Reloading the list )+reload(sleep 2; git ls-files)' \
    --color 'border:#aaaaaa,label:#cccccc' \
    --color 'preview-border:#9999cc,preview-label:#ccccff' \
    --color 'list-border:#669966,list-label:#99cc99' \
    --color 'input-border:#996666,input-label:#ffcccc' \
    --color 'header-border:#6699cc,header-label:#99ccff'
}


# oh-my-posh for zsh
eval "$(oh-my-posh init zsh)"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
# All themes from https://ohmyposh.dev/docs/themes#jandedobbeleer
BUILTIN_THEMES=(
"1_shell"
"M365Princess"
"agnoster.minimal"
"agnoster"
"agnosterplus"
"aliens"
"amro"
"atomic"
"atomicBit"
"avit"
"blue-owl"
"blueish"
"bubbles"
"bubblesextra"
"bubblesline"
"capr4n"
"catppuccin"
"catppuccin_frappe"
"catppuccin_latte"
"catppuccin_macchiato"
"catppuccin_mocha"
"cert"
"chips"
"cinnamon"
"clean-detailed"
"cloud-context"
"cloud-native-azure"
"cobalt2"
"craver"
"darkblood"
"devious-diamonds"
"di4am0nd"
"dracula"
"easy-term"
"emodipt-extend"
"emodipt"
"fish"
"free-ukraine"
"froczh"
"glowsticks"
"gmay"
"grandpa-style"
"gruvbox"
"half-life"
"honukai"
"hotstick.minimal"
"hul10"
"hunk"
"huvix"
"if_tea"
"illusi0n"
"iterm2"
"jandedobbeleer"
"jblab_2021"
"jonnychipz"
"json"
"jtracey93"
"jv_sitecorian"
"kali"
"kushal"
"lambda"
"lambdageneration"
"larserikfinholt"
"lightgreen"
"marcduiker"
"markbull"
"material"
"microverse-power"
"mojada"
"montys"
"mt"
"multiverse-neon"
"negligible"
"neko"
"night-owl"
"nordtron"
"nu4a"
"onehalf.minimal"
"paradox"
"pararussel"
"patriksvensson"
"peru"
"pixelrobots"
"plague"
"poshmon"
"powerlevel10k_classic"
"powerlevel10k_lean"
"powerlevel10k_modern"
"powerlevel10k_rainbow"
"powerline"
"probua.minimal"
"pure"
"quick-term"
"remk"
"robbyrussell"
"rudolfs-dark"
"rudolfs-light"
"sim-web"
"slim"
"slimfat"
"smoothie"
"sonicboom_dark"
"sonicboom_light"
"sorin"
"space"
"spaceship"
"star"
"stelbent-compact.minimal"
"stelbent.minimal"
"takuya"
"the-unnamed"
"thecyberden"
"tiwahu"
"tokyo"
"tokyonight_storm"
"tonybaloney"
"uew"
"unicorn"
"velvet"
"wholespace"
"wopian"
"xtoys"
"ys"
"zash"
)

# Pick a random theme
RANDOM_THEME=${BUILTIN_THEMES[$RANDOM % ${#BUILTIN_THEMES[@]}]}

echo " 🎨 Using Oh My Posh theme: $RANDOM_THEME"

eval "$(oh-my-posh init zsh --config "$RANDOM_THEME")"
fi
