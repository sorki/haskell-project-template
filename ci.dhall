--let haskellCi = https://raw.githubusercontent.com/sorki/github-actions-dhall/57e0d949037857deee48f85f5e6da626c29cc204/haskell-ci.dhall
-- https://raw.githubusercontent.com/sorki/github-actions-dhall/pending/haskell-ci.dhall
let haskellCi = /home/srk/git/github-actions-dhall/haskell-ci.dhall

in    haskellCi.generalCi
        haskellCi.matrixSteps
        ( Some
            { ghc =
              [ haskellCi.GHC.GHC8104
              , haskellCi.GHC.GHC901
              ]
            , cabal = [ haskellCi.Cabal.Cabal32 ]
            }
        )
    : haskellCi.CI.Type
