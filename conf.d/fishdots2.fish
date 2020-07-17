set -x myplugin_prefix "hello world: "

bind \cg "vi ~/.config/fish/config.fish"

set -l name (basename (status -f) .fish){_uninstall}

function $name --on-event $name
    bind --erase \cg
end

