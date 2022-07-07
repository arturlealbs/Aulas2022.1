-- definindo uma função

funcaoConstante :: Integer 
funcaoConstante = 30

--definindo uma função que espera um valor

maiorQue30 :: Int -> Bool --espera um int e retorna um Bool
maiorQue30 x = x > 30

square  :: Num a => a -> a
square x = x * x

exOr :: Bool -> Bool -> Bool
exOr x y = (x || y) && not (x && y) --ou um ou o outro

--casamento de padrao
mnot :: Bool -> Bool
mnot True = False --se o argumento casar com True, fica false
mnot False = True --se o argumento casar com False, fica true. Se nao tivesse essa opção e botasse False, daria exceção

exOrAlternativo :: Bool -> Bool -> Bool
exOrAlternativo True x = not x 
exOrAlternativo False x = x

exOrAlternativo0 :: Bool -> Bool -> Bool
exOrAlternativo0 True True = False
exOrAlternativo0 True False = True
exOrAlternativo0 False True = True
exOrAlternativo0 False False = False

exOrAlternativo1 :: Bool -> Bool -> Bool
exOrAlternativo1 True x = not x
exOrAlternativo1 _ x = x -- o _ é uma variavel que voce não vai usar

tresValoresIguais :: Int -> Int -> Int -> Bool
tresValoresIguais x y z = (x==y) && (y==z)

--Guardas
{-
f x y
 | g1 = exp1
 | g2 = exp2 --ele vai pro segundo se o primeiro for falso
 | otherwhise = exp3
-}

max3int :: Int -> Int -> Int ->Int
 | x >= y && y >= z = x
 | y >= z           = y
 | otherwise        = z
