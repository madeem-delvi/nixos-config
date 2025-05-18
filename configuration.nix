# configuration.nix

{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./System/applications.nix
      ./System/networking.nix
      ./System/services.nix
    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;


  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
   
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  users.users.madeem = {
    isNormalUser = true;
    description = "madeem";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
  system.stateVersion = "24.11"; 

}
