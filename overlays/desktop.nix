self: super: {
  desktop = self.buildEnv {
    name = "desktop";
    paths = with self.pkgs; [
      nix cacert # nothing else works without these
      alacritty
      emacs
      firefox-beta-bin          # from the mozilla-nixpkgs overlay
      file
      gitFull
      gnumake
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
