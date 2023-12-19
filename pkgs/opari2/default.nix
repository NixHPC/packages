{ stdenv, lib, fetchurl }:

stdenv.mkDerivation rec {
  pname = "opari2";
  version = "2.0.8";
  src = fetchurl {
    url = "https://perftools.pages.jsc.fz-juelich.de/cicd/opari2/tags/opari2-${version}/opari2-${version}.tar.gz";
    hash = "sha256-GW5ZoqYl5seVphJMYeeEutFC+fON8LT6TUNbqbnBlyE=";
  };

  meta = {
    description = "OPARI2 is a source-to-source instrumentation tool for OpenMP and hybrid codes";
    homepage = "https://zenodo.org/records/8348575";
    platforms = lib.platforms.all;
    license = lib.licenses.bsd3;
    broken = false;
  };
}
