{ pkgs, lib, config, home-manager, nix-darwin, inputs, ... }:

let
  defaultPkgs = with pkgs; [
    emacs
    tree
    htop

    llvm

    # Build ghc
    automake
    autoconf
    xz

    # For cabal update
    curl
    wget

    nodejs-18_x
    cmake

    python310
    pre-commit
  ];

  gitPkgs = with pkgs; [
    git-extras
  ];
in
{
  programs.home-manager.enable = true;

  home.stateVersion = "22.11";
  home.packages = defaultPkgs ++ gitPkgs;

  imports = (import ./programs);
}
