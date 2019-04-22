/home/andrei/.config/dunst:
  file.directory:
    - user: andrei

/home/andrei/.config/dunst/dunst.cfg:
  file.managed:
    - source: salt://dunst/dunst.jinja2
    - template: jinja
    - user: andrei

dunst:
  pkg.installed: []
