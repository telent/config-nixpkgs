{ stdenv, unzip
, alsaLib
, python, SDL2, SDL2_ttf, fontconfig
, qt5
, qtbase ? qt5.qtbase
, qtcore ? qt5.qtcore
, qttools ? qt5.qttools
, pkg-config
, xorg
, xinerama ? xorg.libXinerama
, expat
  } : stdenv.mkDerivation {
  name = "mame";
  version = "0.209";
  nativeBuildInputs = [ unzip python fontconfig pkg-config ];
  buildInputs = [ SDL2 SDL2_ttf qtbase qttools expat alsaLib xinerama ];
  hardeningDisable = [ "fortify" ];  
  src = builtins.fetchurl {
    name = "mame.zip";
    url = "https://github.com/mamedev/mame/archive/mame0209.zip";
    sha256 = "0j4pa85mihlb8mb9gm340wgc5kkdjvww9r5df4a8jfr9lrdpb4qk";
  };
}    

