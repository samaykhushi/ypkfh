{ lib, buildPythonPackage, fetchPypi }:

let
  pythonPackages = import lib.nixpkgs.python38 {};

in
buildPythonPackage rec {
  pname = "requirements";
  version = "0.1";

  src = ./.;

  meta = with lib; {
    description = "Python requirements";
    license = licenses.mit;
  };
}




{ pkgs ? import <nixpkgs> {} }:

with pkgs;
mkShell {
  buildInputs = [
    python311Packages.colorama
    python311Packages.dropbox
    python311Packages.selenium
    # Add more packages as needed
  ];
}
