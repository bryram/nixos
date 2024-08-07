{ config, ... }:

let
hyprland = config.modules.user.gui.wm.hyprland;

in
{
  scrolling = {
    history = 10000;
    multiplier = 3;
  };

  window = {
    opacity = if hyprland.enable then 0.9 else 1;
  };

  keyboard.bindings = [
    {
      key = "Enter";
      mods = "Alt | Shift";
      action = "SpawnNewInstance";
    }
  ];

  colors = {
    primary = {
      background = "0x000000";
      foreground = "0xffffff";
    };

    cursor = {
      text = "0x2d2d2d";
      cursor = "0xd3d0c8";
    };

    normal = {
      black = "0x2d2d2d";
      red = "0xf2777a";
      green = "0x99cc99";
      yellow = "0xffcc66";
      blue = "0x6699cc";
      magenta = "0xcc99cc";
      cyan = "0x66cccc";
      white = "0xd3d0c8";
    };

    bright = {
      black = "0x747369";
      red = "0xf2777a";
      green = "0x99cc99";
      yellow = "0xffcc66";
      blue = "0x6699cc";
      magenta = "0xcc99cc";
      cyan = "0x66cccc";
      white = "0xf2f0ec";
    };

    indexedColors = [
      { index = 16; color = "0xf99157"; }
      { index = 17; color = "0xd27b53"; }
      { index = 18; color = "0x393939"; }
      { index = 19; color = "0x515151"; }
      { index = 20; color = "0xa09f93"; }
      { index = 21; color = "0xe8e6df"; }
    ];
  };

  font = {
    size = 12;
    normal = {
      family = "Terminus";
      style = "Regular";
    };

    bold = {
      family = "Terminus";
      style = "Bold";
    };

    italic = {
      family = "Terminus";
      style = "Italic";
    };

    bold_italic = {
      family = "Terminus";
      style = "Bold Italic";
    };
  };


  #cursor = {
  #  shape = "Block";
  #  blinking = "Always";
  #  blink_interval = 750;
  #};
}
