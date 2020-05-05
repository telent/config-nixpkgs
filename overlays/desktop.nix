self: super: {
  desktop = self.buildEnv {
    name = "desktop";
    paths = with self.pkgs; [
      nix cacert # nothing else works without these
      alacritty
      emacs
      firefox-beta-bin          # from the mozilla-nixpkgs overlay
      gitFull
      gnumake
      irssi
      jq
      mplayer
      mupdf
      notmuch muchsync
      pass
      qiv
      tmux
      unzip
      vim
    ];
  };
}
