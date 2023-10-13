import Data.Char (isAlpha)

extractKodeWilayah :: String -> String
extractKodeWilayah platNomor = takeWhile isAlpha platNomor

main :: IO ()
main = do
    let platNomor = "D1234HT"
    let kodeWilayah = extractKodeWilayah platNomor
    putStrLn ("Plat Nomor Anda: " ++ platNomor)
    putStrLn ("Kode Wilayah Plat Nomor Anda: " ++ kodeWilayah)