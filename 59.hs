
{-                         Tell, Don't Show                         -}
                           ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

      {-# OPTIONS_GHC -fplugin=TypeNatSolver #-}
      
      zipVec :: ∀ n a b. Vec n a -> Vec n b -> Vec n (a,b)
      zipVec Nil       Nil       = Nil
      zipVec (a :. as) (b :. bs) = (a,b) :. zipVec as bs
   
      reverseVec :: ∀ n a. Vec n a -> Vec n a
      reverseVec xs = go Nil xs
         where
            go :: ∀ x y b. Vec x b -> Vec y b -> Vec (x + y) b
            go acc Nil       = acc
            go acc (a :. as) = go (a :. acc) as
   
      convolve :: ∀ a b n. Vec n a -> Vec n b -> Vec n (a,b)
      convolve as bs = zipVec as (reverseVec bs)
