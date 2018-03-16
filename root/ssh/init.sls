/home/andrei/.ssh/config:
  file.managed:
    - source: salt://ssh/ssh_config.jinja2
    - template: jinja
