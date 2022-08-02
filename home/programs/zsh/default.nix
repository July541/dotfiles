{ pkgs, lib, programs, ... }:
{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
    };

    # promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "cabal"
        "emacs"
        "history"
        "rust"
        "stack"
      ];
      theme = "robbyrussell";
    };

    initExtra = ''
      export HTTP_PROXY=http://127.0.0.1:7890
      export HTTPS_PROXY=http://127.0.0.1:7890
      export ALL_PROXY=socks5://127.0.0.1:7890

      source $HOME/.ghcup/env
      export PATH=~/.cabal/bin:$PATH
      source $HOME/.cargo/env

      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      source ~/.p10k.zsh
    '';
  };
}
