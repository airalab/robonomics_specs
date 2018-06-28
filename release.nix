{ nixpkgs ? <nixpkgs> }:

let
  pkgs = import nixpkgs { };

in rec {
  whitepaper = pkgs.callPackage ./default.nix { };
} 
