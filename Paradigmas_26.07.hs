--reverse
rev :: [t] -> [t]
rev [] = []
rev (x:xs) = rev xs ++[x] --jogando a cabeça na calda, e chamando o rev da calda

{-
rev [1,2,3]
rev [2,3] ++ [1]
rev [3] ++ [2] ++ [1]
rev [] ++ [3] ++ [2] ++ [1] 
[] ++ [3] ++ [2] ++ [1]
[3,2,1]
-}

--concatenação
(+++) :: [t] -> [t] -> [t]
(+++) [] l = l
(+++) (x:xs) l = x : (xs +++ l)

{-
(+++) [1,2] [3,4]
1 : ((+++) [2] [3,4])
1 : (2 : (+++) [] [3,4])
1 : 2 : [3,4]
-}
