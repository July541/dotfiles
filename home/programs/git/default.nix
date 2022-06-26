{ config, pkgs, ... }:
let
  gitConfig = { # Require git-extras
    core = {
      editor = "emacs";
    };
    init.defaultBranch = "master";
  };
in
{
  programs.git = {
    enable = true;
    userName = "Lei Zhu";
    userEmail = "julytreee@gmail.com";

    aliases = {
      br = "branch";
      co = "checkout";
      st = "status";
      cm = "commit -m";
      ca = "commit -am";
    };

    ignores = [ ".dir-locals.el" ".envrc" ".DS_Store" ];

    extraConfig = gitConfig;
  };
}
