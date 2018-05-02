--Exemplos de expressoes lambda
square = \x -> x*x

--Implemente as funções anteriormente escritas usando expressões lambda
--consulte suas implementacoes anteriores para a documentacao dessas funcoes
pow = \x -> (\y -> x**y)

fatorial = \x -> if(x == 0) then 1 else x*(fatorial (x -1))

isPrime = \x -> auxPrime (x-1) x
			where auxPrime = \vari -> (\const -> if(vari == 1) then True else if (const `mod` vari == 0) then False else auxPrime(vari-1) const)

fib = \x -> if(x == 0 || x == 1) then x else fib(x-1) + fib(x-2) 

mdc = \x -> (\y -> if(y == 0) then x else mdc y (x `mod` y))
mmc x y = undefined
coprimo x y = undefined
goldbach x = undefined

--Implemente as funções sobre listas escritas previsamente usando expressões lambda
--consulte suas implementacoes anteriores para a documentacao dessas funcoes
meuLast = \list -> xmeuLast list

xmeuLast = \(x:xs) -> if(null xs) then x else xmeuLast xs

penultimo xs = undefined
elementAt i xs = undefined
meuLength xs = undefined
meuReverso xs = undefined
isPalindrome xs = undefined
compress xs = undefined
compact xs = undefined
encode xs = undefined
split xs i = undefined
slice xs imin imax = undefined
insertAt el pos xs = undefined
sort xs = undefined
mySum xs = undefined
maxList xs = undefined
buildPalindrome xs = undefined
mean xs = undefined
myAppend xs ys = undefined