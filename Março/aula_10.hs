--aula 28/03
type Nome = String
data Pessoa = M Nome | F Nome

--sobrescreve a igualdade.
instance Eq Pessoa where
    (M n1) == (M n2) = n1 == n2
    (F n1) == (F n2) = n1 == n2
    (M _) == (F _) = False
    (F _) == (M _) = False