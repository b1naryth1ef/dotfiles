/home/andrei/.i3:
  file.directory:
    - user: andrei

/home/andrei/.i3/config:
  file.managed:
    - source: salt://i3/config.jinja2
    - template: jinja
    - user: andrei

/home/andrei/.i3/i3status.conf:
  file.managed:
    - source: salt://i3/i3status.jinja2
    - template: jinja
    - user: andrei

/home/andrei/.i3/dunst.cfg:
  file.managed:
    - source: salt://i3/dunst.jinja2
    - template: jinja
    - user: andrei

/home/andrei/.config/terminator:
  file.directory:
    - user: andrei

/home/andrei/.config/terminator/config:
  file.managed:
    - source: salt://i3/terminator.jinja2
    - template: jinja
    - user: andrei

i3status:
  pkg.installed: []

i3-packages:
  pkg.installed:
    - pkgs:
      - i3status
      - dunst
      - feh
      - i3lock
      - rofi
      - terminator
