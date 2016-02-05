
{-                        Let's take a walk                         -}
                          ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

   convolveTABA xs ys =
      case walk xs of
         (r, []) -> r
      where
         walk :: [a] -> ([(a,b)], [b])
         walk      []  = ([], ys)
         walk (a : as) =
            case walk as of
               (r, b : bs) -> ((a,b) : r, bs)
{-
      ([(xn, y1)], [y2, …, ym, yn])  
                                              STACK:  xm
                                                       ⋮
                                                      x2
                                                      x1
-}
