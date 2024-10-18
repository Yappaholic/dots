fn ls {|@a| eza $@a }
fn ff { fastfetch }
fn of { onefetch }
fn em {|@a| emacs $@a }
use path
set-env NPM_CONFIG_PREFIX ~/.local/
set paths = (conj $paths ~/.local/bin ~/.cargo/bin ~/bin ~/.local/bin/ ~/go/bin /opt/bin ~/.bun/bin)
eval (oh-my-posh init elvish -c ~/.config/ohmyposh/zen.toml)
eval (cat '/home/savvy/.local/share/dorothy/init.elv' | slurp) # Dorothy
