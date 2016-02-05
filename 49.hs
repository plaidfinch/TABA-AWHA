
{-                            Prove it!                             -}
                              ̅̅̅̅̅̅̅̅̅

       -- witness of proof that (a ~ b)
       data a :~: b where
          Refl :: (a ~ b) => a :~: b


       ✓  Refl :: 2 + 2 :~: 4

       ✗  Refl :: 2 + 2 :~: 5  -- your world implodes!
                               -- source: Orwell, G.
