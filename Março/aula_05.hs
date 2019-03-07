-- 07/03

--retorna todos os digitos de uma String
digitosLista :: String -> String
digitosLista [] = []
digitosLista (a:as)
 | ehDigito a = a: digitosLista as
 | otherwise = digitosLista as

 -- verifica se um caracter é um digito
ehDigito :: Char -> Bool
ehDigito ch = ('0' <= ch) && (ch <= '9')


--encontra o maior valor de uma lista de inteiros
--maiorLista :: [Int] -> Int
--maiorLista [] = minBound :: Int
--maiorLista [x] = x
--maiorLista (x:xs) =
-- | x > maiorLista xs = x
-- | otherwise = maiorLista xs
-- perceba que apenas construtores podem ser usados para gerar padrões (:)

--retorna o primeiro digito de uma lista
primeiroDigito :: String -> Char
primeiroDigito st = case (digitosLista st) of
    [] -> '\0'
    (x:xs) -> x

-- Polimorfismo (função usada para tipos diferentes)

--serve para lista de quaisquer tipos (polimorfismo parametrico)
tamLista :: [t] -> Int
tamLista [] = 0
tamLista (x:xs) = 1 + tamLista xs

--zip :: [t] -> [u] -> [(t,u)]
--falta continuar

ehPar :: Int -> Bool
ehPar x = (mod x 2) == 0

dobrarLista :: [Int] -> [Int]
dobrarLista l = [ 2*x | x <- l]

dobrarListaPar :: [Int] -> [Int]
dobrarListaPar l = [2*x | x <- l, ehPar x]

somarPares :: [(Int, Int)] -> [Int]
somarPares l = [ x + y | (x,y) <- l]

l1 = [2*x | x <- [1..10]]

l2 = [2*x | x <- [1..20], (mod x 2) == 0]

l3 = [2*x | x <- [1..20], (mod x 2) == 0, x>= 10]