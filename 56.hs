
{-                            Prove it!                             -}
                              ̅̅̅̅̅̅̅̅̅
      
   plusZ :: Vec n a -> (n + Z) :~: n

   distribS :: Vec m a -> Vec n b -> m + (S n) :~: S (m + n)

   reverseVec :: ∀ n a. Vec n a -> Vec n a
   reverseVec xs = go Nil xs
      where
         go :: ∀ x y. Vec x a -> Vec y a -> Vec (x + y) a
         go acc Nil =
            withProof (plusZ acc) acc  -- Prove: x + 0 ~ x
         go acc (a :. as) =
            withProof (distribS acc as) $ -- Prove: x + (S y)
               go (a :. acc) as           --      ~ S (x + y)
