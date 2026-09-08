fun sommali n [] = 0
  | sommali n [a] = n + a
  | sommali n (pari::dispari::resto) = sommali (n+pari) resto;