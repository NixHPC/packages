{ stdenv, lib, fetchFromGitLab, libotf2, cmake, openmpi, libiberty, opari2, gfortran, libelf }:

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
    openmpi
    libiberty
    opari2
    gfortran
    libelf
  ];
  cmakeFlags = [
    "-DEZTRACE_ENABLE_MPI=ON"
    "-DEZTRACE_ENABLE_CUDA=OFF"
    "-DEZTRACE_ENABLE_STARPU=OFF"
    "-DEZTRACE_ENABLE_OPENMP=ON"
    "-DEZTRACE_ENABLE_POSIXIO=ON"
    "-DEZTRACE_ENABLE_PTHREAD=ON"
    "-DEZTRACE_ENABLE_MEMORY=ON"
    "-DEZTRACE_ENABLE_OMPT=OFF"
    "-DEZTRACE_ENABLE_PNETCDF=OFF"
    "-DEZTRACE_ENABLE_NETCDF=OFF"
    "-DEZTRACE_ENABLE_IOTRACER=OFF"
    "-DEZTRACE_ENABLE_COMPILER_INSTRUMENTATION=ON"
  ];

  meta = {
    description = "EZTrace is a tool that automatically generates execution traces from HPC programs.";
    homepage = "https://gitlab.com/eztrace/eztrace";
    license = lib.licenses.cecill-b;
  };
}
