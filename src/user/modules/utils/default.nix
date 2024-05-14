{ pkgs, lib, config, ... }:

with lib;
let
  cfg = config.modules.user.utils;

in
{ options.modules.user.utils = { enable = mkEnableOption "user.utils"; };
  imports = [ ./modules ];
  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      wget curl neofetch
      unzip fping calc fd pciutils
      rsync zip lshw
    ];
  };
}
