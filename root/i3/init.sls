include:
  - i3status
  - dunst

/home/andrei/.config/i3:
  file.directory:
    - user: andrei

/home/andrei/.config/i3/config:
  file.managed:
    - source: salt://i3/config.jinja2
    - template: jinja
    - user: andrei

/home/andrei/.config/i3/background.png:
  file.managed:
     - source: salt://background.png
     - user: andrei

i3-packages:
  pkg.installed:
    - pkgs:
      - feh
      - i3lock
      - rofi
      - terminator
