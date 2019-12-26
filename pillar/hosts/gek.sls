wm: sway
terminal: alacritty

zsh:
  init: sway

sway:
  outputs:
    - {name: eDP-1, scale: 1.9, toggle-lid: true}
    - {name: HDMI-A-1, scale: 1}
  inputs:
    - {name: "1:1:AT_Translated_Set_2_keyboard", options: {xkb_options: "ctrl:nocaps,altwin:swap_alt_win"}}
    - {name: "1241:661:USB-HID_Keyboard", options: {xkb_options: "ctrl:nocaps,altwin:swap_alt_win"}}
    - {name: "6899:1:Kingsis_Peripherals_ZOWIE_Gaming_mouse", options: {
        accel_profile: flat,
        pointer_accel: 0.3,
        scroll_factor: 3,
      }}
