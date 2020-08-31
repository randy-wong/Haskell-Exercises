import System.Environment

main = do 
    args <- getArgs
    -- Read from Args
    let z = read (args !! 2) :: Int
    -- Read first arg as the fist divisor
    let d1 = read (args !! 0) :: Int
    -- Read second arg as the second divisor
    let d2 = read (args !! 1) :: Int
    -- Read third arg as the third divisor
    mapM_ putStrLn $ map (fizzbuzz d1 d2) [1..z]
    -- Formatted printing of the map the array and pass through fizzbuzz function
 
 
fizzbuzz :: Int -> Int -> Int -> String
-- Return string
fizzbuzz d1 d2 n
-- 3 variables n as the number being checked against and d1 and d2 as divisor
    | n `mod` d1 == 0 && n `mod` d2 == 0 = "FizzBuzz"
    -- Check with modding
    | n `mod` d1 == 0 = "Fizz"
    | n `mod` d2 == 0 = "Buzz"
    | otherwise = show n
