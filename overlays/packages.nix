self: super: {
  piwigo = super.callPackage ../pkgs/piwigo {};
  mame = super.callPackage ../pkgs/mame {};
  faifa = super.callPackage ../pkgs/faifa {};
  configure-firefox = super.callPackage ../pkgs/configure-firefox {};
  alacritty-yml = super.callPackage ../pkgs/alacritty-yml {};
  fennel_mode = super.callPackage ../pkgs/fennel_mode {};
}
