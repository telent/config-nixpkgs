{ stdenv, unzip } : stdenv.mkDerivation {
  name = "piwigo";
  version = "2.9.4";
  buildInputs = [ unzip ];
  src = builtins.fetchurl {
    name = "piwigo.zip";
    url = "https://piwigo.org/download/dlcounter.php?code=2.9.4";
    sha256 = "0g2aaxig85v2mcbdn77a4ygsy807pvjbijbxx57f6qmghxlgxyh0";
  };
  installPhase = ''
    cp -a . $out/
  '';
}    

