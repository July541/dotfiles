{ pkgs, lib, config, home-manager, nix-darwin, inputs, ... }:

let
  defaultPkgs = with pkgs; [
    # emacs
    # tree
    # htop

    # llvm

    # Build ghc
    # automake
    # autoconf
    # xz

    # For cabal update
    # curl
    # wget

    # nodejs-18_x
    # yarn
    # cmake

    # python310
    # pre-commit
    # pkg-config
    # openssl

    # For Blog
    # pandoc
  ];

  gitPkgs = with pkgs; [
    git-extras
  ];
in
{
  programs.home-manager.enable = true;

  home.stateVersion = "23.05";
  home.packages = defaultPkgs ++ gitPkgs;

  imports = (import ./programs);
}
