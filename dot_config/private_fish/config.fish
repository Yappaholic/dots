if status is-interactive
    # Commands to run in interactive sessions can go here
end
set --export nvm_arch x64-musl
set --export nvm_mirror https://unofficial-builds.nodejs.org/download/release
set --export __GLX_VENDOR_LIBRARY_NAME mesa
set --export LIBVA_DRIVER_NAME nouveau

fish_add_path /opt/bin
fish_add_path ~/.cargo/bin
fish_add_path /home/savvy/.bun/bin
fish_add_path ~/.local/bin

alias ff=fastfetch
set --export WEBKIT_DISABLE_COMPOSITING_MODE 1
