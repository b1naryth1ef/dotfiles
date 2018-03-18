andrei-sudoers:
  file.append:
    - name: /etc/sudoers
    - text:
      - "andrei   ALL=(ALL)   NOPASSWD: ALL"
