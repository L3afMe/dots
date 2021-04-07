{ config, pkgs, lib, ... }:

let
  theme = import ./theme.nix;
in

{
  imports = [ ./hardware-configuration.nix ];

  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "/dev/sda";
  };

  networking = {
    hostName = "L3af-NixOS";
    wireless.enable = false;

    useDHCP = false;
    interfaces = {
      enp4s0.useDHCP = true;
      wlp2s0b1.useDHCP = true;
    };
  };

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    useXkbConfig = true;
    earlySetup = true;
    colors = theme.colors16;
  };

  services.xserver = {
    enable = true;

    layout = "us";
    xkbVariant = "dvp";
    xkbOptions = "caps:escape";

    libinput.enable = true;

    displayManager = {
      sddm.enable = true;
      defaultSession = "none+awesome";
    };

    windowManager.awesome = {
      enable = true;

      luaModules = with pkgs.luaPackages; [
        luarocks
      ];
    };
  };

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  users.users.l3af = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "adbusers"
    ];
    shell = /usr/bin/bransh;
  };

  # Allow unfree for certain packages
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "android-studio-stable"
  ];

  programs = {
    adb.enable = true;
  };

  environment.systemPackages = with pkgs; [
    adoptopenjdk-hotspot-bin-8
    android-studio
    gcc
    git
    qutebrowser
  ];

  fonts.fonts = with pkgs; [
    fira-code
    fira-code-symbols
    (nerdfonts.override {
      fonts = [
        "FiraCode"
      ];
    })
  ];

  system.stateVersion = "20.09";
}

