
{-          A list by any other name would smell as sweet           -}
            ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅


         {-# LANGUAGE AllThatJazz #-}
      
         import GHC.TypeLits
         
         data Vec n a where
            Nil  :: Vec 0 a
            (:.) :: a -> Vec n a -> Vec (1 + n) a

{-
         + —————————— +           + —————————————————————— +
         |  :kind 0   |           |  :kind Vec             |
         |  0 :: Nat  |           |  Vec :: Nat -> * -> *  |
         + —————————— +           + —————————————————————— +
-}
