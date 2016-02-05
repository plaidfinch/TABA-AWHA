
{-                         A Rough Commute                          -}
                           ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

         data Vec n a where
            Nil  :: Vec 0 a
            (:.) :: a -> Vec n a -> Vec (1 + n) a
      
         zipVec :: ∀ n a b. Vec n a -> Vec n b -> Vec n (a,b)
         zipVec Nil       Nil       = Nil
         zipVec (a :. as) (b :. bs) = (a,b) :. zipVec as bs
      
         reverseVec :: ∀ n a. Vec n a -> Vec n a
         reverseVec xs = go Nil xs
            where
               go :: ∀ x y. Vec x a -> Vec y a -> Vec (x + y) a
               go acc Nil       = acc
               go acc (a :. as) = go (a :. acc) as

