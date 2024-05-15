{ lib, pkgs, config, ... }:

with lib;
let
modules = config.modules.user;

userConfigs = rec {
  name = "bryan";
  email = "bryan@ramos.codes";
  shell = pkgs.bash;

  # Image name from ~Pictures/wallpapers directory
  wallpaper = "mountains.jpg";

  groups = [ "wheel" "networkmanager" "home-manager" "input" ];

  keys = import ./keys;

  gitConfig = optionalAttrs modules.git.enable {
    userName = "Bryan Ramos";
    userEmail = email;
    signing = optionalAttrs modules.security.gpg.enable {
      key = "F1F3466458452B2DF351F1E864D12BA95ACE1F2D";
      signByDefault = true;
    };
  };
};

in
{
  options = {
    user = mkOption {
      type = types.attrs;
      default = userConfigs;
      description = "User Configurations";
    };
  };
}
