{ lib, pkgs, config, ... }:

with lib;
let
  cfg = config.modules.system.bitcoin.sparrow-server;
  btc = config.modules.system.bitcoin;

in
{ options.modules.system.bitcoin.sparrow-server = { enable = mkEnableOption "system.bitcoin.sparrow-server"; };
  config = mkIf (cfg.enable && btc.enable) {
    nixpkgs.overlays = [
      (final: prev: {
        sparrow-server = prev.callPackage ./derivation.nix {};
      })
    ];
    environment.systemPackages = with pkgs; [
      sparrow-server
    ];
  };
}
