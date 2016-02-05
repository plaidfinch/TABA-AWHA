
{-                            Prove it!                             -}
                              ̅̅̅̅̅̅̅̅̅
                              

       -- We can't use GHC.TypeLits for manual proofs!

       data Nat = Z | S Nat  -- a real inductive kind for naturals
         
       type family (a :: Nat) + (b :: Nat) where  -- how to add Nats
          Z   + n = n
          S m + n = S (m + n)

       data Vec n a where  -- a Vec indexed by these Nats
          Nil  :: Vec Z a
          (:.) :: a -> Vec n a -> Vec (S n) a

