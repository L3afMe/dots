use re
use readline-binding
use path
use str
use math

set E:QT_PLUGIN_PATH = /usr/lib/qt/plugins
set E:QT_QPA_PLATFORM = wayland

set E:GOPATH = ~/go

set E:QMK_HOME = /opt/qmk_firmware

paths = [
  $E:GOPATH/bin
  /usr/local/bin
  /usr/local/sbin
  /usr/bin
  /opt/bin
  ~/.cargo/bin
  ~/.local/bin
]

each [p]{
  if (not (path:is-dir (or (_ = ?(path:eval-symlinks $p)) $p))) {
    echo (styled "Warning: directory "$p" in $paths no longer exists." red)
  }
} $paths

use epm

epm:install &silent-if-installed         ^
  github.com/zzamboni/elvish-modules     ^
  github.com/zzamboni/elvish-completions ^
  github.com/xiaq/edit.elv               ^
  github.com/muesli/elvish-libs          ^
  github.com/iwoloschin/elvish-packages

edit:insert:binding[Alt-Backspace] = $edit:kill-small-word-left~
edit:insert:binding[Alt-d] = $edit:kill-small-word-right~
edit:insert:binding[Alt-m] = $edit:-instant:start~
edit:max-height = 20

use github.com/zzamboni/elvish-modules/alias

alias:new cat bat
alias:new more bat --paging always
alias:new v nvim
alias:new fetch "clear; echo ''; neofetch"
alias:new time tty-clock -rBcC 6
alias:new icat kitty +kitten icat

E:MANPAGER = "sh -c 'col -bx | bat -l man -p'"

use github.com/xiaq/edit.elv/smart-matcher
smart-matcher:apply

use github.com/zzamboni/elvish-completions/cd
use github.com/zzamboni/elvish-completions/ssh
use github.com/zzamboni/elvish-completions/builtins

use github.com/zzamboni/elvish-completions/git git-completions
git-completions:git-command = hub
git-completions:init

use github.com/zzamboni/elvish-completions/comp

edit:-prompt-eagerness = 10

use github.com/zzamboni/elvish-modules/bang-bang

use github.com/zzamboni/elvish-modules/dir
alias:new cd &use=[github.com/zzamboni/elvish-modules/dir] dir:cd
alias:new cdb &use=[github.com/zzamboni/elvish-modules/dir] dir:cdb

edit:insert:binding[Alt-i] = $dir:history-chooser~

edit:insert:binding[Alt-h] = $dir:left-small-word-or-prev-dir~
edit:insert:binding[Alt-l] = $dir:right-small-word-or-next-dir~

edit:insert:binding[Ctrl-R] = {
  edit:histlist:start
  edit:histlist:toggle-case-sensitivity
}

fn ls [@_args]{
  use github.com/zzamboni/elvish-modules/util
  e:exa --color-scale --git --group-directories-first (each [o]{
      util:cond [
        { eq $o "-lrt" }  "-lsnew"
        { eq $o "-lrta" } "-alsnew"
        :else             $o
      ]
  } $_args)
}

fn cdc [@_args]{ cd $_args[0]; clear }

use github.com/zzamboni/elvish-modules/terminal-title

private-loaded = ?(use private)

use github.com/zzamboni/elvish-modules/atlas
use github.com/zzamboni/elvish-modules/opsgenie
use github.com/zzamboni/elvish-modules/leanpub
use github.com/zzamboni/elvish-modules/tinytex

E:LESS = "-i -R"
E:EDITOR = "nvim"
E:LC_ALL = "en_US.UTF-8"

use github.com/zzamboni/elvish-modules/util
use github.com/muesli/elvish-libs/git

use github.com/iwoloschin/elvish-packages/update
update:curl-timeout = 3
update:check-commit &verbose

util:electric-delimiters

use github.com/zzamboni/elvish-modules/spinners
use github.com/zzamboni/elvish-modules/tty

set E:STARSHIP_CONFIG = /home/l3af/.elvish/starship.toml
eval (starship init elvish)
