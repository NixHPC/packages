{ pkgs }:

rec {
  eztrace = pkgs.callPackage ./pkgs/eztrace/default.nix { inherit libotf2; };

  libotf2 = pkgs.callPackage ./pkgs/otf2/lib.nix { };
  otf2Python = pkgs.callPackage ./pkgs/otf2/python.nix { };
}
