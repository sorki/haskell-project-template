{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc844" }:
nixpkgs.haskell.packages.${compiler}.callPackage ./project.nix { }
