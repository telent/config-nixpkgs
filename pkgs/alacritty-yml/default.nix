{ stdenv, writeText } :
let config = {
      window = {
        padding = { x = 2; y = 2; };
        title = "Terminal (Alacritty)";
        decorations = "full";
      };
      dynamic_title = true;
      font.size = 12;
      key_bindings = [
        { key = "Key0"; mods = "Alt"; action ="ResetFontSize"; }
        { key = "Equals"; mods = "Alt"; action = "IncreaseFontSize"; }
        { key = "Add"; mods = "Alt"; action = "IncreaseFontSize"; }
        { key = "Minus"; mods = "Alt"; action = "DecreaseFontSize"; }
        { key = "K"; mods = "Alt"; action = "ClearHistory"; }
        { key = "V"; mods = "Alt"; action = "Paste" ; }
        { key = "C"; mods = "Alt"; action = "Copy" ; }
        { key = "H"; mods = "Alt"; action = "Hide" ; }
        { key = "M"; mods = "Alt"; action = "Minimize"; }
        { key = "Q"; mods = "Alt"; action = "Quit" ; }
        { key = "W"; mods = "Alt"; action = "Quit" ; }
        { key = "N"; mods = "Alt"; action = "SpawnNewInstance"; }
        { key = "F"; mods = "Alt|Control"; action = "ToggleFullscreen"; }
      ];
    };
    configFile = writeText "alacritty.yml" (builtins.toJSON config);
in stdenv.mkDerivation {
  pname = "alacritty-yml";
  version = "1";
  phases = ["installPhase"];
  installPhase = ''
mkdir -p $out/etc/xdg/alacritty
cp ${configFile} $out/etc/xdg/alacritty/alacritty.yml
'';
}
