#!/usr/bin/env bash
# vi: set ft=bash:

COLOR_BACKGROUND='#1e2127'
COLOR_BACKGROUND_LIGHT='#282c34'
COLOR_FOREGROUND='#d19a66'
COLOR_ACTIVE='#61afef'
ICON_ARROW_LEFT=''
ICON_ARROW_LEFT_SLIM=''
ICON_ARROW_RIGHT=''
ICON_ARROW_RIGHT_SLIM=''
ICON_SESSION=''
ICON_TIME=''
ICON_USER=''

PANEL_LEFT="\
#[fg=$COLOR_BACKGROUND,bg=$COLOR_FOREGROUND] $ICON_SESSION #S \
#[fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND]$ICON_ARROW_RIGHT\
"

PANEL_RIGHT="\
#[fg=$COLOR_BACKGROUND_LIGHT,bg=$COLOR_BACKGROUND]$ICON_ARROW_LEFT\
#[fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND_LIGHT] %T $ICON_TIME \
#[fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND_LIGHT]$ICON_ARROW_LEFT\
#[fg=$COLOR_BACKGROUND_LIGHT,bg=$COLOR_FOREGROUND] ${USER}@#h $ICON_USER \
"

tmux set-option -gq clock-mode-colour            "fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND"
tmux set-option -gq display-panes-active-colour  "fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND"
tmux set-option -gq display-panes-colour         "fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND"
tmux set-option -gq message-command-style        "fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND"
tmux set-option -gq message-style                "fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND"
tmux set-option -gq mode-style                   "fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND"
tmux set-option -gq pane-active-border-style     "fg=$COLOR_ACTIVE,bg=$COLOR_BACKGROUND"
tmux set-option -gq pane-border-style            "fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND"
tmux set-option -gq status                       on
tmux set-option -gq status-bg                    "$COLOR_BACKGROUND"
tmux set-option -gq status-fg                    "$COLOR_FOREGROUND"
tmux set-option -gq status-interval              1
tmux set-option -gq status-left                  "$PANEL_LEFT"
tmux set-option -gq status-right                 "$PANEL_RIGHT"
tmux set-option -gq window-status-current-format "#[fg=$COLOR_ACTIVE,bg=$COLOR_BACKGROUND,bold] #W "
tmux set-option -gq window-status-format         "#[fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND] #W " 
tmux set-option -gq window-status-separator      "#[fg=$COLOR_FOREGROUND,bg=$COLOR_BACKGROUND]$ICON_ARROW_RIGHT_SLIM"
