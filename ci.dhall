let haskellCi =
      https://raw.githubusercontent.com/sorki/github-actions-dhall/main/haskell-ci.dhall

in  haskellCi.generalCi1
      ( haskellCi.withNix
          ( haskellCi.defaultCabalSteps
            with extraSteps.postCheckout
                 =
              [ haskellCi.BuildStep.Name
                  { name = "Run ./new try", run = "./new try" }
              ]
          )
      )
