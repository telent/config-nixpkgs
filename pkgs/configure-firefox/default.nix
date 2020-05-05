{ stdenv, pkgs, python37, wrapGAppsHook }:
stdenv.mkDerivation {
  buildInputs = [ python37 ];
  nativeBuildInputs = [ wrapGAppsHook ];
  pname = "configure-firefox";
  version = "1";
  src = ./.;
  unpackPhase = ":";
  installPhase = ''
  mkdir -p $out/share/systemd/user
  substitute ${./configure-firefox.service} $out/share/systemd/user/configure-firefox.service --replace @CONFIGURE-FIREFOX@ $out/bin/configure-firefox
  install -m755 -D ${./configure-firefox.py} $out/bin/configure-firefox
'';

}
