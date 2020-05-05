{ stdenv, fetchgit } :
stdenv.mkDerivation {
  version = "0.1.0";
  pname  = "fennel-mode";
  src = fetchgit {
    name = "fennel-mode.git";
    url = "https://gitlab.com/technomancy/fennel-mode.git";
	  rev = "67707375b0f2bbbb56d8d17176b5442d376094ad";
	  sha256 = "00336kmns1syf70g1dka0sdhksl7yl39jgihm8xfiddqyjwdai2j";
  };
  installPhase = ''
  mkdir -p $out/share/emacs/site-lisp
  cp fennel-mode.el $out/share/emacs/site-lisp/
  '';
}
