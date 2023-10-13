calculateTotal :: Int -> Int -> Int
calculateTotal porsi harga
    | porsi <= 4 = harga * porsi
    | porsi > 4  && porsi < 8 = (harga - 800) *  porsi
    | porsi > 8 = (harga - 1000) * porsi
    
main :: IO ()
main = do
    let hargaPerPorsi = 15000
    let totalHarga = calculateTotal 7 hargaPerPorsi
    putStrLn ("Total yang harus dibayar: Rp. " ++ show totalHarga)