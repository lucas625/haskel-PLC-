--Funcao de alta ordem
--funcoes como argumento
--o () mostra que o argumento é uma fução
applyTwice :: (a->a) -> a -> a
applyTwice f x = f (f x)

inc :: Int -> Int
inc x = x + 1

vendas :: Int -> Int
vendas 0 = 10
vendas 1 = 21
vendas 2 = 18
vendas 3 = 3
vendas 4 = 12

total :: (Int->Int) -> Int -> Int
total f 0 = f 0
total f n = (f n) + (total f (n-1))

totalVendas n = total vendas n

sq :: Int -> Int
sq x = x * x

maxi :: Int -> Int -> Int
maxi x y
 | x >= y = x
 | otherwise = y

maxFun :: (Int->Int) -> Int -> Int
maxFun f 0 = f 0
maxFun f n = maxi (maxFun f (n-1)) (f n)

