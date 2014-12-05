function fish_prompt

  if not set -q -g __fish_my_functions_defined
    set -g __fish_my_functions_defined
    function _git_branch_name
      echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end

    function _has_git_staged_changes
      echo (git diff --staged --name-only ^/dev/null)
    end

    function _has_git_unstaged_changes
      echo (git diff --name-only ^/dev/null)
    end

    function _has_git_untracked_files
      echo (git ls-files --others --exclude-standard ^/dev/null)
    end
  end

  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l arrow "$red➜ "
  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch $red(_git_branch_name)
    set git_info "$blue git:($git_branch$blue)"

    if [ (_has_git_staged_changes) ]
      set -l dirty "$yellow ●"
      set git_info "$git_info$dirty"
    end

    if [ (_has_git_unstaged_changes) ]
      set -l dirty "$yellow ○"
      set git_info "$git_info$dirty"
    end

    if [ (_has_git_untracked_files) ]
      set -l dirty "$red ✗"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $arrow ' '$cwd $git_info $normal ' '
end
