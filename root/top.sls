base:
  '*':
    - scripts
    {% if salt['pillar.get']('terminal', none) != none %}- {{ pillar['terminal'] }}{% endif %}
    {% if salt['pillar.get']('wm', none) != none %}- {{ pillar['wm'] }}{% endif %}
  'os:Ubuntu':
    - match: grain
    - ubuntu
  'os:Debian':
    - match: grain
    - debian
