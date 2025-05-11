set black       '111216'
set black_light '16181d' # find something
set blue        '3c9ceb'
set cyan        '3fa3b0'
set red         'd94a55'
set yellow      'deb059'

set --universal tide_cmd_duration_bg_color $cyan
set --universal tide_cmd_duration_color $black
set --universal tide_cmd_duration_decimals 0
set --universal tide_cmd_duration_threshold 5

set --universal tide_user_always_display true
set --universal tide_user_bg_color $black_light
set --universal tide_user_color_default $yellow
set --universal tide_user_color_root $red
set --universal tide_user_color_ssh $red

set --universal tide_host_always_display true
set --universal tide_host_bg_color $black_light
set --universal tide_host_color_default $yellow
set --universal tide_host_color_root $red
set --universal tide_host_color_ssh $red

set --universal tide_git_bg_color $yellow
set --universal tide_git_bg_color_unstable $yellow
set --universal tide_git_bg_color_urgent $red
set --universal tide_git_color_branch $black
set --universal tide_git_color_conflicted $black
set --universal tide_git_color_dirty $black
set --universal tide_git_color_operation $black
set --universal tide_git_color_staged $black
set --universal tide_git_color_stash $black
set --universal tide_git_color_untracked $black
set --universal tide_git_color_upstream $black
set --universal tide_git_truncation_length 24
set --universal tide_git_truncation_strategy

set --universal tide_left_prompt_frame_enabled false
set --universal tide_left_prompt_items vi_mode user host pwd git cmd_duration newline status
set --universal tide_left_prompt_prefix ''
set --universal tide_left_prompt_separator_diff_color 
set --universal tide_left_prompt_separator_same_color 
set --universal tide_left_prompt_suffix 

set --universal tide_right_prompt_items 
set --universal tide_prompt_pad_items true

set --universal tide_pwd_bg_color $blue
set --universal tide_pwd_color_anchors $black
set --universal tide_pwd_color_dirs $black
set --universal tide_pwd_color_truncated_dirs $black
set --universal tide_pwd_icon " "
set --universal tide_pwd_icon_home " "
set --universal tide_pwd_icon_unwritable ""
set --universal tide_pwd_markers .bzr .citc .git .hg .node-version .python-version .ruby-version .shorten_folder_marker .svn .terraform Cargo.toml composer.json CVS go.mod package.json build.zig

set --universal tide_status_bg_color $yellow
set --universal tide_status_bg_color_failure $red
set --universal tide_status_color $black
set --universal tide_status_color_failure $black
set --universal tide_vi_mode_bg_color_default $yellow
set --universal tide_vi_mode_bg_color_insert $blue
set --universal tide_vi_mode_bg_color_replace $red
set --universal tide_vi_mode_bg_color_visual $cyan
set --universal tide_vi_mode_color_default $black
set --universal tide_vi_mode_color_insert $black
set --universal tide_vi_mode_color_replace $black
set --universal tide_vi_mode_color_visual $black
