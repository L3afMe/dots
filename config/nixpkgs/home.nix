{ config, pkgs, ... }:
 
{
  imports = import ./programs/default.nix;

  programs.home-manager.enable = true;

  home = {
    username = "l3af";
    homeDirectory = "/home/l3af";

    packages = with pkgs; [
      neovim-nightly
      yarn
      rustup

      python38Full
      python38Packages.pip
      python38Packages.setuptools
    ];
  };

  programs.neovim = {
    enable = true;
    package = pkgs.neovim-nightly;

    withPython = true;
    withNodeJs = true;

    viAlias = true;
    vimAlias = true;
  };

  nixpkgs.overlays = [
    (import ./overlays/neovim-nightly.nix)
  ];

  news.display = "silent";
  home.stateVersion = "21.03";
}
