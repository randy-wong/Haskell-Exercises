import System.Environment

main = do 
	args <- getArgs 
	let d1 = read $ args !! 0 :: Int
	let d2 = read $ args !! 1 :: Int 
	let z1 = read $ args !! 2 :: Int 
	putStrLn (fizzbuzz z1 d1 d2) 

fizzbuzz :: Int -> Int -> Int -> String 
fizzbuzz n d1 d2 
	| n `mod` d1 == 0 && n `mod` d2 == 0 = "FizzBuzz" 
	| n `mod` d1 == 0 = "Fizz"
	| n `mod` d2 == 0 = "Buzz"
	| otherwise = show n 
