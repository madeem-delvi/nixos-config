{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  # $ nix search wget
  environment.systemPackages = with pkgs; [
     neovim
     tmux
     git
  ];


}