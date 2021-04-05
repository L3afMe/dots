{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home = {
    username = "l3af";
    homeDirectory = "/home/l3af";

    packages = with pkgs; [
      neovim-nightly
      python3
    ];
  };

  programs.neovim = {
    enable = true;
    package = pkgs.neovim-nightly;

    withPython = true;
    withNodeJs = true;

    # Override bad editors :p
    viAlias = true;
    vimAlias = true;
  };

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
  ];

  home.stateVersion = "21.03";
}
