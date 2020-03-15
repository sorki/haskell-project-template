{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc882" }:
nixpkgs.haskell.packages.${compiler}.callCabal2nix "@project@" ./. { }
