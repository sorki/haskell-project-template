{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc8101" }:
nixpkgs.haskell.packages.${compiler}.callCabal2nix "@project@" ./. { }
