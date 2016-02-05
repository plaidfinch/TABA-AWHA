
{-                         Step on no pets                          -}
                           ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

   palindrome :: ∀ a n. Eq a => Vec n a -> Bool
   palindrome xs =
      case walk xs xs of
         Nothing  -> False
         Just Nil -> True
      where
         walk :: ∀ m. Vec (n - m)   a
                   -> Vec (n - 2*m) a
                   -> Maybe (Vec m a)
         walk       xs1              Nil    = return xs1   -- even
         walk (_ :. xs1')      (_ :. Nil)   = return xs1'  -- odd
         walk (x :. xs1') (_ :. _ :. xs2'') =
            do y :. ys <- walk xs1' xs2''
               guard (x == y)
               return ys
