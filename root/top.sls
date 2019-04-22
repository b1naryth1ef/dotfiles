base:
  '*':
    - scripts
    - alacritty
  'os:Ubuntu':
    - match: grain
    - ubuntu
  'os:Debian':
    - match: grain
    - debian
  'oaf':
    - i3
  'zaz*':
    - sway
    - i3status
