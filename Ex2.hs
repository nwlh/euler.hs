module Ex2 where

-- I solved this by cheating. I just overshoot and take only numbers smaller than 4mil.
-- I have to find better solution.

fibonacci :: Integer -> Integer
fibonacci n = fibonacci' 0 1 n
  where
    fibonacci' a b 1 = b
    fibonacci' a b n = fibonacci' b (a+b) (n-1)

solution :: Integer -> Integer
solution 0 = 0
solution n = sum $ filter (\x -> even x && x < 4_000_000) $ map fibonacci [1..n]
