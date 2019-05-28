# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/benjamin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="TheOne"
# ZSH_THEME="cypher"
ZSH_THEME="spaceship"

# spaceship theme customization config
# go to https://denysdovhan.com/spaceship-prompt/docs/Options.html for more options
# - meta order of display
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  host          # Hostname section
  battery       # Battery level and status
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  docker        # Docker section
  venv          # virtualenv section
  pyenv         # Pyenv section
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  exit_code     # Exit code section
  char          # Prompt character
)
# - prompt
SPACESHIP_PROMPT_ADD_NEWLINE="false"
SPACESHIP_CHAR_SYMBOL="» "
SPACESHIP_CHAR_COLOR_SUCCESS="cyan"
# - status bar
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_PREFIX=""
SPACESHIP_USER_SUFFIX=""
SPACESHIP_USER_COLOR="white"

SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_SHOW_FULL="false"
SPACESHIP_HOST_PREFIX="@"
SPACESHIP_HOST_SUFFIX=" "
SPACESHIP_HOST_COLOR="white"

SPACESHIP_BATTERY_SHOW="true" #"always"
SPACESHIP_BATTERY_PREFIX="🔋"
SPACESHIP_BATTERY_SYMBOL_FULL=""

SPACESHIP_DIR_PREFIX="| "
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_COLOR='green'

SPACESHIP_GIT_PREFIX="| "
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=" "

SPACESHIP_PYENV_SHOW="always"

SPACESHIP_EXEC_TIME_PREFIX="for"
SPACESHIP_EXEC_TIME_COLOR="white"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  python
  web-search
  zsh-syntax-highlighting
# zsh-autosuggestions
  )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias python='python3'
alias pip='pip3'
alias zcon="vim ~/.zshrc"
alias zapl="source ~/.zshrc"
alias zen="cmatrix"
alias vimconfig="vim ~/.vimrc"
alias govenv="source ./venv/bin/activate"
alias rl="clear;l"
alias rls="clear;ls"
alias pyunit="python3 -m unittest"
alias lintcon="vim ~/.pylintrc"

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh


# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# code of path for VS CODE
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"


