zsh:
  pkg.installed: []

oh-my-zsh:
  git.latest:
    - name: https://github.com/robbyrussell/oh-my-zsh.git
    - target: /home/andrei/.oh-my-zsh
    - user: andrei
    - depth: 1
    - rev: master

  file.managed:
    - name: /home/andrei/.oh-my-zsh/themes/andrei.zsh-theme
    - source: salt://zsh/andrei.zsh-theme

/home/andrei/.zshrc-new:
  file.managed:
    - source: salt://zsh/zshrc.jinja2
    - template: jinja

pip:
  pip.installed:
    - pkgs:
      - virtualenvwrapper

# TODO:
#  - fzf
#  - tmux
#  - travisci
