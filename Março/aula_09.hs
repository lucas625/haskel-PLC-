--aula 26/03

data Estacao = Inverno | Verao | Outono | Primavera
data Temp = Frio | Quente

clima :: Estacao -> Temp
clima Inverno = Frio
clima _ = Quente

showTemp 