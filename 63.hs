
{-                         Tell, Don't Show                         -}
                           ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

      {-# OPTIONS_GHC -fplugin=TypeNatSolver #-}
      
      convolveTABA :: ∀ a b n. Vec n a -> Vec n b -> Vec n (a,b)
      convolveTABA xs ys =
         case walk xs of
            (r, Nil) -> r
         where
            walk :: ∀ m. Vec m a -> (Vec m (a,b), Vec (n - m) b)
            walk      Nil  = (Nil, ys)  -- lengths (0, n)  [m = 0]
            walk (a :. as) =
               case walk as of
                  (r, b :. bs) ->      -- lengths (m - 1, n - m + 1)
                     ((a,b) :. r, bs)  -- lengths (m,     n - m)

