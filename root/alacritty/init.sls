/home/andrei/.config/alacritty/alacritty.yml:
  file.managed:
    - source: salt://alacritty/alacritty.yml.jinja2
    - template: jinja
    - user: andrei
