import Control.Concurrent

threadA toSend toReceive
    = do 
        putMVar toSend 100
        v <- takeMVar toReceive
        putStrLn (show v)

threadB toReceive toSend 
    = do
        z <- takeMVar toReceive
        putMVar toSend (1.2*z)

main = do
    a <- newEmptyMVar
    b <- newEmptyMVar
    forkIO $ threadA a b
    forkIO $ threadB a b
    threadDelay 1000--necessário pois programa principal não espera acabar