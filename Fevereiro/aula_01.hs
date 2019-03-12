-- 19/fev
-- utilize ghci para o interpretador e :r para dar reload
constante :: Int
constante = 30

maior :: Bool
maior = constante > 40

yes :: Bool
yes = True

--funções

funcaoComUmArgumento :: Int -> Bool
funcaoComUmArgumento x = x > 20

quadrado  :: Int -> Int
quadrado x = x * x

--funções com mais de um argumento

todosIguais :: Int -> Int -> Int -> Bool
todosIguais x y z = (x == y) && (y == z)

--funções com guardas

maxi :: Int -> Int -> Int
maxi x y
-- | guarda1 = exp1
 | x >= y = x
 | (x+2) > y = 20
 | otherwise = y

fat :: Int -> Int
fat x
 | x < 0 = 0
 | x == 0 = 1
 | otherwise = x * fat (x-1)

all4Equal :: Int -> Int -> Int -> Int -> Bool
all4Equal a b c d = (a == b) && (b == c) && (c == d)