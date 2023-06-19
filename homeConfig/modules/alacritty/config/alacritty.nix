{ pkgs, lib, ... }:

{
  enable = true;
  settings = {
    scrolling = {
      history = 10000;
      multiplier = 3;
    };

    window = {
      opacity = 0.80;
    };

    colors = {
      primary = {
        background = "#000000";
        foreground = "#cdd6f4";
      };

      normal = {
        black   = "#1e2127";
        red     = "#e06c75";
        green   = "#98c379";
        yellow  = "#d19a66";
        blue    = "#61afef";
        magenta = "#c678dd";
        cyan    = "#56b6c2";
        white   = "#abb2bf";
      };

      bright = {
        black   =  "#5c6370";
        red     =  "#e06c75";
        green   =  "#98c379";
        yellow  =  "#d19a66";
        blue    =  "#61afef";
        magenta =  "#c678dd";
        cyan    =  "#56b6c2";
        white   =  "#ffffff";
      };
    };  

    font = {
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

      fallback = [
        { family = "Noto Color Emoji"; }
      ];
    };

    size = 16;

    cursor = {
      color = "#ffffff";
      style = {
        shape = "Block";
        blinking = "Always";
        blink_interval = 750;
      };
    };
  };
}
