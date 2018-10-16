self: super: {
  emacs = self.emacsWithPackages (epkgs: (with epkgs.melpaPackages; [
      magit
      clojure-mode
      cider
      use-package
    ]));
}
