/home/andrei/.config/sway/config:
  file.managed:
    - source: salt://sway/config.jinja2
    - template: jinja
    - user: andrei

/home/andrei/.config/sway/background.png:
  file.managed:
     - source: salt://sway/background.png
     - user: andrei

# TODO:
#  - alacritty
#  - rofi
#  - mako
#  - slurp
#  - grim
#  - wl-copy
#  - i3status
