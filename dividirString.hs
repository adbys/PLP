imprimeIntercalado :: [String] -> [String] -> IO()
imprimeIntercalado l1 l2 = do
	putStr(head l1)
	putStr(" ")
	putStrLn(head l2)
	imprimeIntercalado (tail l1) (tail l2)
	



main = do
	input <- getLine
	let l1 = (words input)
	input2 <- getLine
	let l2 = (words input2)
	imprimeIntercalado l1 l2
