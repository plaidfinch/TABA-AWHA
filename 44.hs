
{-                         A Rough Commute                          -}
                           ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅
{-

   Could not deduce: ((1 + x) + n) ~ (x + (1 + n))

   How would you deduce this?

   Goal: ((1 + x) + n) ~ (x + (1 + n))
     ... ((x + 1) + n) ~ (x + (1 + n))  [ by commutativity of (+) ]
     ... (x + (1 + n)) ~ (x + (1 + n))  [ by associativity of (+) ]

          x   1     n     x     1   n
           \   \   /       \   /   /       
            \   \ /         \ /   /        
             +   +     ~     +   /         
              \ /             \ /          
               +               +           
-}


