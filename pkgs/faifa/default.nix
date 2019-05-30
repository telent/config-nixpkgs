{ stdenv, pkgs, fetchFromGitHub }:
stdenv.mkDerivation {
  nativeBuildInputs = with pkgs; [ automake autoreconfHook pkg-config git ] ;
  buildInputs = with pkgs; [ libpcap libevent ]; 
  name = "faifa";
  src = fetchFromGitHub {
    owner = "ffainelli";
    repo = "faifa";
    rev = "3c177c3493cbaf568bcc52a70db22a67e7585cd1";
    sha256 = "0xlfwfbkv5spcx75xph76c4d58rgxkwafp90b2a4w1gdgd3dh0sb";
  };
}
