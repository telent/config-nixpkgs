self: super: {
  emacs = self.emacsWithPackages (epkgs: (with epkgs.melpaPackages; [
      magit
      clojure-mode
      cider
      use-package
      ox-reveal
    ]) ++ (with epkgs.elpaPackages; [
      org
    ]));
}
