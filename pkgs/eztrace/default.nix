{ stdenv, lib, fetchFromGitLab, libotf2, cmake, openmpi }:

stdenv.mkDerivation rec {
  pname = "eztrace";
  version = "2.1";

  src = fetchFromGitLab {
    owner = pname;
    repo = pname;
    rev = version;
    hash = "sha256-/4mbC+YsyMvhJBo6RG8CrFzYkNVNXMLYdRJu/e59F8A=";
  };

  nativeBuildInputs = [
   cmake 
  ];
  buildInputs = [
    libotf2 
  ];

  meta = {
    description = "";
    homepage = "";
    license = lib.licenses.cecill-b;
    maintainers = with lib.maintainers; [  ];
  };
}
