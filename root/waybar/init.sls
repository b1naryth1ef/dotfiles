
/home/andrei/.config/waybar:
  file.directory:
    - user: andrei

/home/andrei/.config/waybar/modules:
  file.directory:
    - user: andrei
    - require:
        - file: /home/andrei/.config/waybar

/home/andrei/.config/waybar/config:
  file.managed:
    - source: salt://waybar/config.jinja2
    - template: jinja
    - user: andrei
    - require:
        - file: /home/andrei/.config/waybar

/home/andrei/.config/waybar/style.css:
  file.managed:
    - source: salt://waybar/style.css.jinja2
    - template: jinja
    - user: andrei
    - require:
        - file: /home/andrei/.config/waybar

/home/andrei/.config/waybar/modules/mediaplayer.py:
  file.managed:
    - source: salt://waybar/mediaplayer.py
    - template: jinja
    - user: andrei
    - require:
        - file: /home/andrei/.config/waybar/modules 