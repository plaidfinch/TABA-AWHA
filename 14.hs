
{-                      With no auxiliary list                      -}
                        ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅






                  convolve :: [a] -> [b] -> [(a,b)]
                  convolve as bs = zip as (reverse bs)
                                           ̅̅̅̅̅̅̅






