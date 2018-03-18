base:
  'os:Ubuntu':
    - match: grain
    - ubuntu
  'osrelease:17.04':
    - match: grain
    - ubuntu.releases.zesty
  'ope':
    - i3
