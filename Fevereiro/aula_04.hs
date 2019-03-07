--insertion sort numa lista numa lista
ins :: Int -> [Int] -> [Int]
ins x [] = [x]
--ainda falta coisa

--dobra os membros de uma lista
double :: [Int] -> [Int]
double [] = []
double (x:xs) = (2*x) : double xs

--saber se um elemento é membro de uma lista
member :: [Int] -> Int -> Bool
member [] y = False
member (x:xs) y
 | x == y = True
 | otherwise = member xs y

