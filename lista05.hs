--Escreva a declaracao para o tipo Triple, contendo tres elementos, todos de tipos diferentes.
--Escreva funcoes tripleFst, tripleSnd, tripleThr para extrair respectivamente o primeiro, segundo e terceiro
-- elementos de uma triple.
data Triple a b c = Triple a b c deriving (Eq,Show)

tripleFst (Triple a b c) = a
tripleSnd (Triple a b c) = b
tripleThr (Triple a b c) = c

--Escreva um tipo Quadruple que contem 4 elementos: dois de um mesmo tipo e outros dois de outro tipo
--Escreva as funcoes frstTwo e secondTwo que retornam os dois primeiros e os dois ultimos, respectivamente
data Quadruple a b = Quadruple a a b b

firstTwo (Quadruple a b c d) = (a, b)
secondTwo (Quadruple a b c d)= (c, d)

--Escreva um tipo de dados que pode conter um, dois, tres ou quatro elementos, dependendo do construtor
--Implemente funções tuple1 até tuple4 que que retornam Just <valor> ou Nothing se o valor nao existe
data Tuple a b c d = Tuple1 a | Tuple2 a b | Tuple3 a b c | Tuple4 a b c d

tuple1 (Tuple1 a) = a 
tuple1 (Tuple2 a b) = a 
tuple1 (Tuple3 a b c) = a 
tuple1 (Tuple4 a b c d) = a 


tuple2 (Tuple2 a b) = b 
tuple2 (Tuple3 a b c) = b 
tuple2 (Tuple4 a b c d)= b 
tuple2 _ = Nothing 


tuple3 (Tuple3 a b c) = c 
tuple3 (Tuple4 a b c d)= c
tuple3 _ = Nothing

tuple4 (Tuple4 a b c d) = d 
tuple4 _ = Nothing


data List a = Nil | Cons a (List a) deriving (Eq,Show)

listLength Nil = 0
listLength (Cons x xs) = 1 + listLength xs

listHead Nil = error "Empty list"
listHead (Cons x xs) = x

listTail Nil = Nil
listTail (Cons x xs) = xs

listFoldr f v Nil = v
listFoldr f v (Cons x xs) = f x (listFoldr f v xs)


listFoldl f v Nil = v
listFoldl f v (Cons x xs) = listFoldl f (f v x) xs 

--Escreva as funcoes sobre a estrutura de dados binary tree
data BinaryTree a = NIL | Node a (BinaryTree a) (BinaryTree a)
 deriving (Eq,Show)

sizeBST NIL = 0
sizeBST (Node a left right) = 1 + sizeBST left + sizeBST right

--verifica se uma BT é uma BST
isBST = undefined

--insere uma nova chave na BST retornando a BST modificada
insert a = 

--retorna o Node da BST contendo o dado procurado ou entao NIL
search _ (NIL) = error "Não existe"
search x (Node a left right)
							| x == a = Node a left right
							| x > a = search x right
							| otherwise = search x left


--retorna o elmento maximo da BST
maximum123 NIL = error "Não existe"
maximum123 (Node a left NIL) = a
maximum123 (Node a left right) = maximum123 right 


--retorna o elemento minimo da BST
minimum123 NIL = error "Não existe"
minimum123 (Node a NIL right) = a
minimum123 (Node a left right) = minimum123 left

--retorna o predecessor de um elemento da BST, caso o elemento esteja na BST
predecessor (Node a left right) = maximum123 left 

--retorna o sucessor de um elemento da BST, caso o elemento esteja na BST
successor (Node a left right) = minimum123 right

--remove ume lemento da BST
remove = undefined

--retorna uma lista com os dados da BST nos diversos tipos de caminhamento

preOrder NIL = []
preOrder (Node a left right) = [a] ++ preOrder(left) ++ preOrder(right)

order NIL = []
order (Node a left right) = order(left) ++ [a] ++ order(right)

postOrder NIL = []
postOrder (Node a left right) = postOrder(left) ++ postOrder(right) ++ [a] 