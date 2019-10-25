{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc881" }:
nixpkgs.haskell.packages.${compiler}.callPackage ./project.nix { }
