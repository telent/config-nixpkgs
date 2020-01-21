self: super: {
  emacs = self.emacsWithPackages (epkgs: (with epkgs.melpaPackages; [
      cider
      clojure-mode
      feature-mode
      haskell-mode
      lua-mode
      magit
      nix-mode
      notmuch
      ox-reveal
      markdown-mode
      inf-ruby
      use-package
    ]) ++ (with epkgs.elpaPackages; [
      org
    ]) ++ (with self.pkgs; [ fennel_mode ] )
    );
}
