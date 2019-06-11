import Control.Concurrent
import Control.Concurrent.STM

main =  do
    acumulador <- atomically (newTVar 0)
    checker <- newMVar 2
    forkIO (oper (+) acumulador checker 500)
    forkIO (oper (-) acumulador checker 1200)
    waitThreads checker
    final <- atomically (readTVar acumulador)
    putStrLn (show final)

waitThreads fim = do
    f <- takeMVar fim
    if (f > 0)
    then do {putMVar fim f; waitThreads fim}
    else return()

-- recebe uma função (+,-,*,/), um acumulador, um checker, um número de iterações e retorna um IO()
oper :: (Int->Int->Int) -> TVar Int -> MVar Int -> Int -> IO()
oper op acum check 0 = do
    a <- takeMVar check
    putMVar check (a-1)
oper op acum check cont = do
    atomically (do{
        v <- readTVar acum;
        writeTVar acum (op v 1);
    })
    oper op acum check (cont-1)