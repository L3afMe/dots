{config, pkgs ? import <nixpkgs> {
  config.android_sdk.accept_license = true;
}, ...}:

let
  theme = import ./theme.nix;
in

{
  imports = [./hardware-configuration.nix];

  nix.trustedUsers = [
    "root" "l3af"
  ];

  boot.loader = {
    efi.canTouchEfiVariables = true;

    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      useOSProber = false;
    };
  };

  environment = {
    variables.EDITOR = "nvim";
  };

  programs.adb.enable = true;

  networking = {
    hostName = "L3af-NixOS";
    wireless.enable = true;

    useDHCP = false;
    interfaces.enp1s0f0.useDHCP = true;
  };

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
  #   font = "Lat2-Terminus16";
    keyMap = "dvp";
  };

  # X11 Config
  services.xserver = {
    enable = true;
    
    layout = "us";
    xkbVariant = "dvp";
    xkbOptions = "caps:escape";

    # Disable touchpad to make me suffer
    libinput.enable = false;

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

  console = {
    earlySetup = true;
    colors = theme.colors16;
  };

  # Enable sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Define a user account
  users.users.l3af = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "adbusers"
    ];
    shell = "/usr/bin/bransh";
  };

  nixpkgs.config = {
    # Required for broadcom-sta
    allowUnfree = true;

    android_sdk.accept_license = true;
  };

  fonts.fonts = with pkgs; [
    fira-code
    fira-code-symbols
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  system.stateVersion = "20.09";
}

