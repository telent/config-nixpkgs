self: super: {
  emacs = self.emacsWithPackages (epkgs: (with epkgs.melpaPackages; [
      cider
      clojure-mode
      lua-mode
      magit
      nix-mode
      notmuch
      ox-reveal
      use-package
    ]) ++ (with epkgs.elpaPackages; [
      org
    ]) ++ (with self.pkgs; [ fennel_mode ] )
  );
}
