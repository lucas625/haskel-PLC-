--14/03
aplicaDuasVezes :: (t -> t) -> t -> t
aplicaDuasVezes f x = f (f x)

inc :: Int -> Int
inc x = x + 1

quadrado :: Int -> Int
quadrado x = x * x

dobroL :: [Int] -> [Int]
dobroL [] = []
dobroL (x:xs) =  2 * x : dobroL xs


--função que aplica uma função em todos os valores de uma lista
mapL :: (t -> a) -> [t] -> [a]
mapL f [] = []
mapL f (x:xs) = f x : mapL f xs

--mesma coisa da mapL, mas com compreensão de lista
mapL_CL f l = [ f x | x <- l ]

--outorio numa lista
disjL :: [Bool] -> Bool
disjL [] = False
disjL (x:xs) = (||) x (disjL xs)

--aplica uma função com dois parametros numa lista
mfold :: (t -> t -> t) -> [t] -> t
mfold f [x] = x
mfold f (x:xs) = f x (mfold f xs)

-- v no caso seria um valor que o usuário passa para a lista vazia (foldr1 no ghci)
mfold2 :: (t -> t -> t) -> [t] -> t -> t
mfold2 f [] v = v
mfold2 f [x] v = x
mfold2 f (x:xs) v = f x (mfold2 f xs v) 

--filtro

ehPar :: Int -> Bool
ehPar x = mod x 2 == 0

parL :: [Int] -> [Int]
parL [] = []
parL (x:xs)
 | ehPar x = x : parL xs
 | otherwise = parL xs

maior10 :: Int -> Bool
maior10 x = x > 10

maior10L :: [Int] -> [Int]
maior10L [] = []
maior10L (x:xs)
 | maior10 x = x : maior10L xs
 | otherwise = maior10L xs

--seleciona os elementos de uma lista que satisfazem a restrição de determinada função (filter em haskell)
filtro :: (a -> Bool) -> [a] -> [a]
filtro f [] = []
filtro f (x:xs)
 | f x = x : filtro f xs
 | otherwise = filtro f xs

--devolva x, tal que x pertence a L e x satisfaz a condição f
filtroCL f l = [ x | x <- l, f x]