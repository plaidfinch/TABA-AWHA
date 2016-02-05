
{-                         Tell, Don't Show                         -}
                           ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

      {-# OPTIONS_GHC -fplugin=TypeNatSolver #-} -- Iavor Diatchki

{-    ("Improving Haskell Types with SMT" in Haskell '15)

      • When GHC gets stuck, it calls for help!

                        * —— *
      • The plugin asks | Z3 | to answer questions about arithmetic
                        * —— *
                             |
         An automated theorem prover (a.k.a. SMT solver)
         from Microsoft Research.

      • The plugin tells GHC: trust whatever Z3 says.               -}
