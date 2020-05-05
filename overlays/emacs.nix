self: super:
let
  emacs-base = super.emacs.override  {
    withGTK2 = false; withGTK3 = false;
  };
  withpkgs = (super.emacsPackagesGen emacs-base).emacsWithPackages;
in {
  emacs = withpkgs (epkgs: (with epkgs.melpaPackages; [
      cider
      clojure-mode
      elm-mode
      haskell-mode
#      lua-mode
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
