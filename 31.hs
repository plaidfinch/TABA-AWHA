
{-                    -fwarn-incomplete-patterns                    -}
                      ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅


   convolveTABA :: ∀ a b. [a] -> [b] -> [(a,b)]
   convolveTABA xs ys =
      case walk xs of
         (r, []) -> r
      where
         walk :: [a] -> ([(a,b)], [b])
         walk      []  = ([], ys)
         walk (a : as) =
            case walk as of
               (r, b : bs) -> ((a,b) : r, bs)
            


