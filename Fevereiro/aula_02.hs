-- 21_fev
-- if
    --if True then 10 else 20
-- a ordem que as funções são chamadas tem diferença.
maiorDeTresInteiros :: Int -> Int -> Int -> Int
maiorDeTresInteiros x y z
 | x >= y && y >= z = x
 | y >= z = y
 | x >= z = x
 | otherwise = z

menorDeTresInteiros :: Int -> Int -> Int -> Int
menorDeTresInteiros x y z
 | x <= y && y <= z = x
 | y <= z = y
 | x <= z = x
 | otherwise = z

 --3 /= 2 (diferente)
 --uso div 4 4 pode ser usado 4 `div` 4
letra :: Char
letra = 'a'

offset :: Int
offset = fromEnum 'A' - fromEnum 'a'

toUpper :: Char -> Char
toUpper ch = toEnum (fromEnum ch + offset)

isDigit :: Char -> Bool
isDigit ch = (ch >= '0') && (ch <= '9')

--show 'valor'
--"sou uma string"
--drop 1 "abc" = "bc"
--head "abc" = "a"
--fst (a, b) retorna o tipo de a (similarmente funciona snd)
{--
   sou comentario em bloco
--}

addEspacos :: Int -> String
addEspacos n  
 | n == 0 = ""
 | otherwise = " " ++ addEspacos (n-1)

paraDireita :: String -> Int -> String
paraDireita s n = addEspacos(n) ++ s

potentialize :: Float -> Int -> Float
potentialize a n
 | n == 0 = 1
 | otherwise = a * potentialize a (n-1)

menorMaior :: Int -> Int -> Int -> (Int, Int)
menorMaior a b c = (maiorDeTresInteiros a b c, menorDeTresInteiros a b c)
--não funcionando
ordenaTripla :: (Int, Int, Int) -> (Int, Int, Int)
ordenaTripla (a,b,c) = (menorDeTresInteiros a b c, a , maiorDeTresInteiros a b c)