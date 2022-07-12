--Funçoes

{-
idFunção::tipo
idFunção idParams
  |guarda1 = exp1
  |guarda2 = exp2
  |guardan= expn
  
  |not(guarda1) && not(guarda2) && ... && not(guardan) = exp
  |otherwise = exp
 -}
 
 
 maxi :: Int -> Int -> Int
 maxi x y
  |x >= y = x
  |otherwise = y
  
 max3 :: Int -> Int -> Int -> Int
 max3 x y z
  | x >= y && x >= z = x
  | y >= z = y
  | otherwise = z
maxIfThenElse :: Int -> Int -> Int
maxIfThenElse x y = if x >= y then x else y --Em Haskell, o else é obrigatorio (porque é uma expressao)

--Operadores Novos

(>>>) :: Int -> Int -> Int
(>>>) x y
  | x >= y = x
  | otherwise = y 
  
--Alguns compiladores ja permitem usar x >>> y. Mas talvez precise usar infixl (infixo left)
--Funções
addD a b = 2 * (a+b)
         = 2 * (a+b) = addD b a --Em linguagens imperativas é valido especificar que a ordem não importa
{-
Em uma linguagem Imperativa:
int b = 1;
int f (int x){
  b = x;
  return (5)
}
note que addD(f3)b != addDb(f3)
-}

--Definições Locais 
somaQuadrados :: Int -> Int -> Int
somaQuadrados x y = quadX + quadY
                    where 
                        quad m = m * m
                      --quadX = x * x --função local
                      --quadY = y * y
somaQuadrado3 :: Int -> Int -> Int
somaQuadrado3 x y = let quadX = x * x
                        quadY = y * y
                    in quadX + quadY -- escrever no in as ligações feitas no let
                    
--Recursao
{-
caso base -> sair da recursao
caso recursivo -> recursao

funcRec :: Tipo
funRec param = caso base
funcRec param = caso recursivo
-}
--OBS: Integer é mais preciso. Int é 32 ou 64 bits. Numeros muito grandes (como fatorial) é recomendado usar Integer,
fat :: Int -> Int
  fat x
  | x == 0 = 1
  | x > 0 = x * fat(x-1)
  
fatCasPad :: Int -> Int 
fatCasPad 0 = 1
fatCasPad n = n * fatCasPad(n-1) --se botar um numero negativo dá ruim
