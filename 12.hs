
{-                 Computing a Symbolic Convolution                 -}
                   ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅


      convolve :: [a] -> [b] -> [(a,b)]
      convolve as bs = zip as (reverse bs)

      --  Simple as could be!






                                           --  Hang on a sec…



