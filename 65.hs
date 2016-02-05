
{-                    Fold along the dotted line                    -}
                      ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

      convolveHalves :: ∀ a n. Vec (2 * n) a -> Vec n (a,a)
      convolveHalves as =
        case walk as as of
            (r, Nil) -> r
        where
            walk :: ∀ l m b c. (2 * m <= l)
                => Vec (2 * m) b -> Vec l c
                -> (Vec m (c, c), Vec (l - 2 * m) c)
            walk           Nil        xs  = (Nil, xs)
            walk (_ :. _ :. us) (x :. xs) =
              case walk us xs of
                  (r, y :. ys) -> ((x,y) :. r, ys)

      {- This one needs a little extra magic... -}
