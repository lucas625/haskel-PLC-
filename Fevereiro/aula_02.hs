-- 21_fev
-- if
    --if True then 10 else 20
-- a ordem que as funções são chamadas tem diferença.
 maiorDeTresInteiros :: Int -> Int -> Int -> Int
 maiorDeTresInteiros x y z
  | x >= y && y >= z = x
  | y >= z = y
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