testee :: [Int] -> [Int]
testee (x:xs) = [ a | a <- (x:xs), a == (head xs)]