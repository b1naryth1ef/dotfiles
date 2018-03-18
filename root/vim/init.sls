vim:
  pkg.installed: []

/home/andrei/.vim/bundle:
  file.directory:
    - user: andrei

neobundle:
  git.latest:
    - name: https://github.com/Shougo/neobundle.vim
    - target: /home/andrei/.vim/bundle/neobundle.vim
    - user: andrei
    - depth: 1
    - rev: master

/home/andrei/.vimrc:
  file.managed:
    - source: salt://vim/vimrc.jinja2
    - template: jinja
