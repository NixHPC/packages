{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  pname = "libotf2";
  version = "3.0.3";
  src = fetchurl {
    url = "https://perftools.pages.jsc.fz-juelich.de/cicd/otf2/tags/otf2-${version}/otf2-${version}.tar.gz";
    hash = "sha256-GKOQX3kXNAOH4+3I5XZvMasa9B9OzFZl2mx2nKIcTug=";
  };
}
