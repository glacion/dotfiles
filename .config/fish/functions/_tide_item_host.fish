function _tide_item_host
    if set -q SSH_TTY
        set -fx tide_host_color $tide_host_color_ssh
    else if test "$EUID" = 0
        set -fx tide_host_color $tide_host_color_root
    else
        set -fx tide_host_color $tide_host_color_default
    end

    _tide_print_item host $(hostname -s)
end
