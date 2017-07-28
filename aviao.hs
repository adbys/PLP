aproximacao :: (Int, Int) -> IO()
aproximacao(ideal, diferenca) = do  
  if(diferenca) == 0
    then putStrLn "OK"
  else do
    h3 <- getLine
    let alturaIdeal3 = read h3
    let moduloNum2 = abs(alturaIdeal3 - ideal)
	| moduloNum2 == 0 putStrLn "OK"
	| diferenca >= moduloNum2 putStrLn "ADEQUADO"
	| otherwise = putStrLn "PERIGO"





main = do
  h <- getLine
  let alturaIdeal = read h

  h1 <- getLine
  let alturaAtual = read h1

  let moduloNum = abs(alturaIdeal - alturaAtual)

  aproximacao (alturaIdeal, moduloNum)

  
