function _tide_item_user
    if set -q SSH_TTY
        set -fx tide_user_color $tide_user_color_ssh
    else if test "$EUID" = 0
        set -fx tide_user_color $tide_user_color_root
    else
        set -fx tide_user_color $tide_user_color_default
    end

    _tide_print_item user $USER
end
