--19/03

--funções como valores
-- (f.g)x = f( g(x) )

inc :: Int -> Int
inc x = x + 1

--aplicam uma função duas vezes (equivalente a (inc.inc) x)  
twice :: (t -> t) -> t -> t
twice f x = f (f x)

twiceCF :: (t->t) -> t -> t
twiceCF f x = (f.f) x

--id é a função identidade (repete uma função n vezes) ex: (iter 5 inc) 2 = 7
iter :: Int -> (t -> t) -> (t -> t)
iter 0 f = id
iter n f = (iter (n-1) f) . f

--composição de funções


--notação lambda
addNum :: Int -> (Int -> Int)
addNum x = h
 where h m = x + m

addNumLambda :: Int -> (Int -> Int)
addNumLambda x = (\y -> x + y)--notação

incLista l = map inc l
incLista2 l = map (\x -> x + 1) l

f1 l =  (filter (\x -> x > 15) . map (\x -> x * 5)) l
f2 l =  (map (\x -> x * 15) . filter (\x -> x > 15)) l
f11 l = (filter( >15) . map(*5)) l


multLista l y =  map (\x-> x * y) l

multiplica :: Int -> (Int->Int)
multiplica x y = x * y