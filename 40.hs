
{-                         A Rough Commute                          -}
                           ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

    
      reverseVec :: ∀ n a. Vec n a -> Vec n a
      reverseVec xs = go Nil xs
         where
            go :: ∀ x y. Vec x a -> Vec y a -> Vec (x + y) a
            go acc Nil       = acc
            go acc (a :. as) = go (a :. acc) as

{-

      • Could not deduce: ((1 + x) + n) ~ (x + (1 + n))

      [This error message has been formatted to fit your screen.]

-}


