self: super: {
  shellenv = rec {
    ruby_dbg = self.pkgs.ruby_2_6.overrideAttrs(o: {
        name = "ruby-with-symbols";
        CFLAGS = "-ggdb";
        dontStrip = true;
    });
    chopin = self.stdenv.mkDerivation rec {
      src = ./.;
      name = "chopin";

      buildInputs = with self.pkgs; [
        ruby_dbg # ruby_2_4
        mongodb libxslt libxml2 libiconv
        gcc saml2aws awscli sqlite curl
        bnw_cli
        yarn nodejs-12_x pkgconfig # qt59.qmake qt59.qtwebkit mysql
      ];
      NOKOGIRI_USE_SYSTEM_LIBRARIES = "true";
      AUTHENTICATION_PROVIDER = "simple";
      DISABLE_SPRING = "1";
      shellHook = ''
        GEM_HOME="''${HOME}/gems-for-nix/"
        BUNDLE_PATH="''${HOME}/gems-for-nix/${name}"
        mkdir -p $GEM_HOME
        export GEM_HOME
        export PATH=''${GEM_HOME}bin/:''${PATH}
        gem query -i bundler || gem install bundler
        gem query -i sporklift || gem install sporklift -r -s https://gemstash.simplybusiness.io/private -v '> 0.9'
#        gem query -i bnw_cli || gem install bnw_cli -r -s https://gemstash.simplybusiness.io/private
        new_biz_us(){ open 'http://localhost:3000/frontoffice/journey/new?vertical_name=usa&journey_name=usa&site=simplybusiness_us'; }
      '';
      };
    blackops = self.mkShell {
      buildInputs = with self.pkgs; [ gnupg blackbox ] ;
    };
  };
}
