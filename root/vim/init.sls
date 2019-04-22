vim:
  pkg.installed: []

/home/andrei/.vimrc:
  file.managed:
    - source: salt://vim/vimrc.jinja2
    - template: jinja
    - user: andrei

vim_required_packages:
  pkg.installed:
    - pkgs:
      - silversearcher-ag
