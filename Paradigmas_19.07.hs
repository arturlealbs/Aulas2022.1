--resolver equações do segundo grau
--definir funçoes auxiliares
oneRoot :: Float -> Float -> Float -> Float
oneRoot a b c = - b / (2.0 * a)

twoRoot :: Float -> Float -> Float -> (Float,Float)
twoRoot a b c = (d - e, d + e)
  |where
  | d = -b / 2.0 * a
  | e = sqrt(b ^ 2 - 4.9 * a * c) / 2.0 * a

roots :: Float -> Float -> Float -> String
roots a b c 
  | b ^ 2 == 4.0 * a * c = show(oneRoot a b c)
  | b ^ 2 > 4.0 * a * c = show(r1) ++ " " ++ show(r2)
  | otherwise = "Nao ha raizes"
    |where
    | r1 = fst (twoRoot a b c)
    | r2 = snd (twoRoot a b c)
    
--Sinonimo de Tipo
--palavra reservada : type
-- type NomeTipo = tipo

type Nome = String
type Idade = Int
type NumTel = String

type Pessoa = (Nome, Idade, NumTel)

nome :: Pesoa -> Nome
nome (n, i, t) = n --nao da pra usar fst pq é uma tripla (fst é so pra tupla)

nomeIdade :: Pessoa -> String
nomeIdade (n,i,t) = n ++ "tem" ++ show(i) ++ "anos de idade"

--listas
-- compreensao de listas 
-- [expressao | x <- [lista_Geradora]
-- [2 * x | x <- [1..4]] retorna uma lista [2,4,6,8]. o <- seria "pertence"
-- [expressão | x <- [lista_Geradora], filtro]
-- [x | x <- [1..20], x > 15]

ehPar :: Int -> Bool
ehPar x = mod x 2

-- [x | x <- [1..20], ehPar x, x > 15]
-- [(a,b,c) | a <- (1..3), b <- (5..7), c <- (8..10)] -- (1,5,8) (1,5,9,) (1,5,10) (1,6,8) ( 1,6,9) ... a lista da é rodada da direita pra esquerda (como se fosse identado)

todosPares :: [Int] -> [Int]
todosPares l = [x | x <- l, ehPar x]

tamListaInt :: [Int] -> Int
tamLista [] = 0
tamLista (x:xs) = 1 + tamLista xs -- (x:xs) é uma lista generica

tamListaBool :: [Bool] -> Int
tamLista [] = 0
tamLista (x:xs) = 1 + tamLista xs -- (x:xs) é uma lista generica



--Polimorfismo
tamLista :: [a] -> Int
tamLista [] = 0
tamLista (x:xs) = 1 + tamLista xs -- (x:xs) é uma lista generica
