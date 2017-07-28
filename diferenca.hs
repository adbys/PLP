subtrai :: [Int] -> [Int] -> IO()
subtrai [] [] = putStr("")
subtrai l1 l2 = do
	let d = (head l1) - (head l2)
	print(d)
	subtrai (tail l1) (tail l2)
	



main = do
	input <- getLine
	let l1 = (map read $ words input :: [Int])
	input2 <- getLine
	let l2 = (map read $ words input2 :: [Int])
	subtrai l1 l2
