module Ex1 where

solution :: Int -> Int
solution 0 = 0
solution n = sum $ filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1..n-1]
