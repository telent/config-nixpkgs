self: super: {
  desktop = self.buildEnv {
    name = "desktop";
    paths = with self.pkgs; [
      nix cacert # nothing else works without these
      alacritty
      emacs
      file
      firefox
      gitFull
      gnumake
      gnupg pinentry-gnome
      irssi
      jq
      mplayer
      mupdf
      notmuch muchsync
      pass
      powertop
      qiv
      tmux
      unzip
      vim
      whois
    ];
  };
}
