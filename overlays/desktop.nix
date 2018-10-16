self: super: {
  desktop = self.buildEnv {
    name = "desktop";
    paths = with self.pkgs; [
      nix cacert # nothing else works without these
      pass
      emacs
      jq
      tmux
      vim
    ];
  };
}