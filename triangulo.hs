estacionamento :: String -> Int
estacionamento x | (x == "carro") = 10
			  | (x == "moto") = 5
			  | otherwise = 30

main :: IO ()
main = do
		veiculo <- getLine
		putStrLn(show(estacionamento veiculo))
