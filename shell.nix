{ pkgs ? import <nixpkgs> {} }:
with import <nixpkgs> {};
let
  nixpkgs-22-05 = import <nixos-22.05> {};
  nixpkgs-22-11 = import <nixos-22.11> {};
  nixpkgs-unstable = import <nixos-unstable> {};
in
mkShell {
  buildInputs = [
    nixpkgs-22-05.nodejs
    nixpkgs-22-05.yarn
  ];
  shellHook = ''
    echo "Sourcing Profile"
    . ~/.bash_profile
  '';
}
