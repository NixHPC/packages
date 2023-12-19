{ pkgs }:

{
  libotf2 = pkgs.callPackage ./pkgs/otf2/lib.nix { };
  otf2Python = pkgs.callPackage ./pkgs/otf2/python.nix { };
}
