{ stdenv
, texlive
, biber
}:

let
  pname = "robonomics_specs";
  version = "0.0";

in stdenv.mkDerivation {
  name = "${pname}-${version}";
  src = ./.;

  buildInputs = [ (texlive.combine { inherit (texlive) scheme-full; }) biber ];

  postInstall = ''
    cp *.pdf $out
  '';

  meta = with stdenv.lib; {
    description = "Robonomics network specification documents.";
    homepage = https://robonomics.network;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
