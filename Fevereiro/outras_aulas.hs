-- Aulas 3 e 4

--fatorial
fat :: Int -> Int [a]
fat 0 = 1 [a,b]
fat n = n * fat(n-1)

--par
ehPar :: Int -> Bool
ehPar x
 | mod x 2 == 0 = True
 | otherwise = False

--caracter
ehCaracter :: Char -> Bool
ehCaracter x = '0' <= x && x <= '9'

--tamanho da lista
tamLista :: [Int] -> Int
tamLista [] = 0
tamLista (x:xs) = 1 + tamLista xs
--perceba que : é o construtor da lista