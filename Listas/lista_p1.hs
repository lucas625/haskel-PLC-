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
sublistas [] = []
sublistas (x:xs) = [x] : sublistas(xs)

--Questao 3
--a
poli :: Int -> Int -> Int -> Int -> Int
poli a b c = (\x -> a*(x*x) + b*x + c )

--b
listaPoli :: [(Int, Int, Int)] -> [Int->Int]
listaPoli [] = []
listaPoli ((a,b,c):xs) = (poli a b c):(listaPoli xs)
