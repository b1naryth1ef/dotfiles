/home/andrei/.config/i3status/config:
  file.managed:
    - source: salt://i3status/config.jinja2
    - template: jinja
    - user: andrei

i3status:
  pkg.installed: []
