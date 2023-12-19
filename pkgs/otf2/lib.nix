{ stdenv, lib, fetchurl }:

stdenv.mkDerivation rec {
  pname = "libotf2";
  version = "3.0.3";
  src = fetchurl {
    url = "https://perftools.pages.jsc.fz-juelich.de/cicd/otf2/tags/otf2-${version}/otf2-${version}.tar.gz";
    hash = "sha256-GKOQX3kXNAOH4+3I5XZvMasa9B9OzFZl2mx2nKIcTug=";
  };
  meta = with lib; {
    description = "The Open Trace Format Version 2 (OTF2) C library";
    homepage = "https://www.vi-hps.org/projects/score-p";
    platforms = platforms.all;
    license = licenses.bsd3;
    broken = false;
    longDescription = ''
      The Open Trace Format Version 2 (OTF2) is a highly scalable, memory efficient event trace data format plus support library.
      It is the standard trace format for Scalasca, Vampir, and Tau and is open for other tools.
    '';
  };
}
