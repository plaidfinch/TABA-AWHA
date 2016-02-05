
{-                 Computing a Symbolic Convolution                 -}
                   ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅


      convolve :: [a] -> [b] -> [(a,b)]
      convolve as bs = zip as (reverse bs)










