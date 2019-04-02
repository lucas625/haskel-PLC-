multNum :: Int -> (Int -> Int)
multNum n = h
 where h m = n * m--define uma função

addNum :: Int -> (Int -> Int)
addNum  x = (\y -> x + y)--notação lambda

multa :: Int -> (Int -> Int)
multa x = (\y -> x*y)

elevar :: Int -> Int
elevar x = x*x

pow :: Int -> Int -> Int
pow x 0 = 1
pow x 1 = x
pow x y = x * (pow x (y-1))

--pow 3 2
--pow (3*3) 1
--(3*3)

comp2 f g = ( \ x y -> g ( f x ) ( f y ) )

sub x y = x - y

reorg :: (t -> u -> v) -> (u -> t -> v)
reorg f = (\x y -> f y x)

iter :: Int -> (t -> t) -> (t -> t)
iter 0 f = id
iter n f = (iter (n-1) f) . f

data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)
--data é uma maneira de criar os tipos
--deriving (show) faz ser printado
--Circle e Rectangle não são tipos, são funções. Shape é um tipo.

data Point = Point Float Float deriving (Show)
data Shape2 = Circle2 Point Float | Rectangle2 Point Point deriving (Show)