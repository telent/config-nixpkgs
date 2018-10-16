self: super: {
  shellenv = {
    chopin = self.stdenv.mkDerivation {
      src = ./.;
      name = "chopin";
      buildInputs = with self.pkgs; [
	ruby_2_4 mongodb libxslt libxml2 libiconv
        yarn nodejs pkgconfig qt59.qmake qt59.qtwebkit mysql
      ];
      GEM_HOME = "${builtins.toPath ./.}/vendor/gems";
    };
    blackops = self.mkShell {
      buildInputs = with self.pkgs; [ gnupg blackbox ] ;
    };
  };
}