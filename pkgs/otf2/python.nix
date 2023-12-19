{ python3Packages, lib } :

python3Packages.buildPythonPackage rec {
  pname = "otf2";
  version = "3.0.3.dev3";
  src = python3Packages.fetchPypi {
    inherit pname version;
    sha256 = "sha256-zdXCDELCIXr5qrtYISEaRtaUGUY7VkBjUY4r3+nhChA=";
  };
  meta = with lib; {
    description = "The Open Trace Format Version 2 (OTF2) Python package";
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
