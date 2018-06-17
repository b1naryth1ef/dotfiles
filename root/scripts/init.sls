/home/andrei/bin:
  file.directory:
    - user: andrei
    - group: andrei


/home/andrei/bin/tmux.sh:
  file.managed:
    - source: salt://scripts/tmux.sh
