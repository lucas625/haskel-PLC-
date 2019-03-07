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

