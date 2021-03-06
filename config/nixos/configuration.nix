{ config, pkgs, lib, ... }:

let
  theme = import ./theme.nix;
in

{
  imports = [
    ./hardware-configuration.nix
    ./udev.nix
  ];

  boot.loader = {
    # efi.canTouchEfiVariables = true;
    
    grub = {
      enable = true;

      version = 2;
      useOSProber = true;
      device = "/dev/sda";
      # efiSupport = true;

      # extraEntries = ''
      #   menuentry "Windows" {
      #     insmod part_gpt
      #     insmod fat
      #     insmod search_fs_uuid
      #     insmod chain
      #     search --fs-uuid --set=root F4D8B09BD8B05D94
      #     chainloader /EFI/Microsoft/Boot/bootmgfw.efi
      #   }
      # '';
    };
  };

  networking = {
    hostName = "L3af-NixOS";
    wireless.enable = false;

    useDHCP = false;
    interfaces = {
      enp0s25.useDHCP = true;
    };
  };

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    earlySetup = true;
    colors = theme.colors16;
  };

  services.xserver = {
    enable = true;

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
  };

  # Allow unfree for certain packages
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    # "android-studio-stable"
  ];

  programs = {
    adb.enable = true;
  };

  environment.systemPackages = with pkgs; [
    adoptopenjdk-hotspot-bin-8
    # android-studio
    gcc
    git
    kitty
    maim
    qutebrowser
    cargo-edit
    cargo-watch
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

