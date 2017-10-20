alias cw='cd ~/catkin_ws'
alias cs='cd ~/catkin_ws/src'
alias cm='CURRENT_DIR=$(pwd) && cd ~/catkin_ws && catkin_make && cd $CURRENT_DIR'
#alias cm='pushd ./ && cd ~/catkin_ws && catkin_make && popd'

alias ocw='cd ~/omni_ros'
alias ocs='cd ~/omni_ros/src'
alias ocm='CURRENT_DIR=$(pwd) && cd ~/omni_ros && catkin_make && cd $CURRENT_DIR'
#alias ocm='pushd ./ && cd ~/omni_ros && catkin_make && popd'

#push漏れ確認
alias gbn='git rev-parse --abbrev-ref HEAD'
function is_git_not_pushed {
  # git管理下にいるかどうかの確認
  if [[ "`git rev-parse --is-inside-work-tree 2>/dev/null`" = "true" ]]; then
    # HEADのハッシュを取得
    _head="`git rev-parse --verify -q HEAD 2>/dev/null`"
    if [[ $? -eq 0 ]]; then
      # origin/branch名のハッシュを取得
      ### gbnはブランチ名取得のalias。上に記載してある。###
      _remote="`git rev-parse --verify -q origin/\`gbn\` 2>/dev/null`"
      if [[ $? -eq 0 ]]; then
        # 比較して、違ったら*表示。
        if [[ "${_head}" = "${_remote}" ]]; then
          echo -n "*"
        fi
      fi
    fi
  fi
}
