self: super: {
  piwigo = super.callPackage ../pkgs/piwigo {};
  mame = super.callPackage ../pkgs/mame {};
  faifa = super.callPackage ../pkgs/faifa {};
}
