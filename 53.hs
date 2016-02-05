
{-                            Prove it!                             -}
                              ̅̅̅̅̅̅̅̅̅
      
   type family a + b where      ||     data a :~: b where
      Z   + n = n               ||        Refl :: (a ~ b) => a :~: b
      S m + n = S (m + n)       ||

   -- O(n) in length of input
   plusZ :: Vec n a -> (n + Z) :~: n
   plusZ     Nil  = Refl
   plusZ (_ :. n) =
      withProof (plusZ n) Refl

   -- O(n) in length of first list                       
   distribS :: Vec m a -> Vec n b -> m + (S n) :~: S (m + n)
   distribS     Nil  m = Refl
   distribS (_ :. n) m =
      withProof (distribS n m) Refl
