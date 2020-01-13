include:
  - waybar

/home/andrei/.config/sway/config:
  file.managed:
    - source: salt://sway/config.jinja2
    - template: jinja
    - user: andrei
    - require:
      - pkg: sway-packages

/home/andrei/.config/sway/background.png:
  file.managed:
    - source: salt://background.png
    - user: andrei
    - require:
      - pkg: sway-packages

sway-packages:
  pkg.installed:
    - pkgs:
      - rofi # launcher
      - grim # grabs images from wayland
      - slurp # region selector
      - sway