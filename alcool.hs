combustivel :: Double -> Double -> Double -> Double
combustivel x y z | (y * 0.7) <= (x) = (y * z)
		  | otherwise = (x * z)
main :: IO ()
main = do
		x <- getLine
		let gasolina = read x
		y <- getLine
		let alcool = read y
		z <- getLine
		let litros = read z

		putStrLn(show(combustivel gasolina alcool litros))
