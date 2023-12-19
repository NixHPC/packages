{ pkgs }:

{
  libotf2 = pkgs.callPackage ./pkgs/otf2/lib.nix { }:
  python3Packages.otf2 = pkgs.callPackage ./pkgs/otf2/python.nix { };
}
