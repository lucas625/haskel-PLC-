--listas
-- [1,2,3]
--insere um elemento numa lista qualquer
pushLista :: t -> [t] -> [t]
pushLista a b = a:b
--ordena uma lista por meio de uma quebra com insertionSort
iSort :: [Int] -> [Int]
iSort [] = []
iSort (x:xs) = ins x (iSort xs)

ins :: Int -> [Int] -> [Int]
ins x [] = [x]
ins x (y:ys)
 | x<=y = (x:y:ys)
 | otherwise = y:ins x ys

--duplica os elementos de uma lista
duplicateList :: [t] -> [t]
duplicateList [] = []
duplicateList (x:xs) = x:x:duplicateList xs

--checa se um elemento pertence a lista
checkP :: Int -> [Int] -> Bool
checkP a [] = False
checkP a (x:xs)
 | a == x = True
 | otherwise = checkP a xs

 --pega apenas os digitos de uma str
digitosLista :: String -> String
digitosLista [] = []
digitosLista (x:xs)
 | ehDigito x = x:digitosLista xs
 | otherwise = digitosLista xs

ehDigito :: Char -> Bool
ehDigito a = (a<='9') && (a>='0')

--dobra um numero e adiciona 1 a ele
doubleSmallNumber :: Int -> Int
doubleSmallNumber a = (if a>100 then a else a*2) + 1

maiorElemento :: [Int] -> Int
maiorElemento [] = minBound :: Int
maiorElemento [x] = x
maiorElemento (x:xs)
 | x > maiorElemento xs = x
 | otherwise = maiorElemento xs