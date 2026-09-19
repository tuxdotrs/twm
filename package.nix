{
  stdenv,
  lib,
  name,
  path,
  description,
}:
  stdenv.mkDerivation {
    pname = name;
    version = "0.1.0";

    buildCommand = ''
      mkdir -p $out
      cp -r ${path}/* "$out/"
    '';

    meta = with lib; {
      inherit description;
      homepage = "https://tux.rs";
      platforms = platforms.all;
      license = licenses.gpl3;
    };
  }
