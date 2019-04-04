--Questao 1: está correto.
--map :: (a->b) -> [a] -> [b]
--(.) :: (c->d) -> (e->c) -> (e->d)
--map . (.)
--para map queremos saber quem é 'a' e quem é 'b'
--vamos usar (c->d) como i e ((e->c) -> (e->d)) como j
--dessa forma, nossa partida inicial seria i, (c->d).
--logo, para map (e->c) seria a e (e->d) seria b
--logo, o resultado seria (c->d) -> [e->c] -> [e->d]
--map . (.) = (c->d) -> [e->c] -> [e->d].


--Questao 2
sublistas :: [a] -> [[a]]
sublistas [] = [[]]
sublistas (x:xs) = [x:xs | ys <- sublistas xs] ++ sublistas xs

--Questao 3
--a
poli :: Int -> Int -> Int -> Int -> Int
poli a b c = (\x -> a*(x*x) + b*x + c )

--b
listaPoli :: [(Int, Int, Int)] -> [Int->Int]
listaPoli l = [poli a b c | (a,b,c) <- l]--USANDO COMPREENSÃO DE LISTA

listaPoliNormal :: [(Int, Int, Int)] -> [Int->Int]
listaPoliNormal [] = []
listaPoliNormal ((a,b,c):xs) = (poli a b c) : listaPoli xs--FAZENDO NORMAL

--c
appListaPoli :: [Int->Int] -> [Int] -> [Int]
appListaPoli lp lint = [p i | p <- lp, i <- lint]--USANDO COMPREENSÃO DE LISTA

appListaPoliNormal :: [Int->Int] -> [Int] -> [Int]
appListaPoliNormal [] _ = []
appListaPoliNormal _ [] = []
appListaPoliNormal (x:xs) (a:b) = (x a):(appListaPoliNormal xs b)--FAZENDO NORMAL  


--Questao 4
--a
sizeList :: [t] -> Int
sizeList [] = 0
sizeList (x:xs) = 1 + (sizeList xs)

checkIsMatriz :: [[t]] -> Bool
checkIsMatriz [] = True
checkIsMatriz [[]] = True
checkIsMatriz [[x]] = True
checkIsMatriz (x:xs)
 | ((sizeList x) == sizeList (head xs)) = (checkIsMatriz xs)
 | otherwise = False