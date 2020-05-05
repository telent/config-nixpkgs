{ stdenv, pkgs }:
stdenv.mkDerivation {
  buildInputs = [ pkgs.python37 ];
  pname = "configure-firefox";
  version = "1";
  src = ./.;
  unpackPhase = ":";
  installPhase = ''
  echo install -m755 -D ${./configure-firefox.py} $out/bin/configure-firefox
  install -m755 -D ${./configure-firefox.py} $out/bin/configure-firefox
'';

}
