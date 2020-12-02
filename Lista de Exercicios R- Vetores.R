#1 - crie os vetores

#a) (1, 2, 3, ., 19, 20)

a <- c(1:20)
a

#b) (20, 19, ., 3, 2, 1)

b <- c(20:1)
b

#c) (1, 2, 3, ., 19, 20, 19, 18, . 2, 1)

c <- c(1:20, 19:1)
c

#d) (4, 6, 3) e salve esse vetor na variável temp

temp <- c(4,6,3)
temp

#e) (4, 6, 3, 4, 6, 3, ., 4, 6, 3), em que existem 10 ocorrências da sequência.

e <- rep(c(4,6,3), times=10)
e
length(e)

#f) (4, 4, 4, 4, ., 6, 6, 6, 6, .,  3, 3, 3, 3, ., 3), em que cada número aparece 10 vezes e o primeiro parâmetro da função deve ser c(4,5,6).

f <- rep(c(4,5,3), each=10)
f

#---------------------------------------------------------------------------

#2 - Calcule o resultado das seguintes equações:

#a)

x <- 10:100 
sum(x^3 + 4*x^2)
x

#b

y <- 1:25
sum((2^y)/y + 3^y/(y^2))
y

#3 - Utilize a função paste (utilize ?paste para descobrir o que a função faz) para criar os seguintes vetores de tamanho 30:

#a) ("label 1", "label 2", "label 3", .., "label 30" ) #Observe que há um único espaço entre label e o número.


paste('label', c(1:30))


#b) ("fn1", "fn2", "fn3", .., "fn30" ) #Observe que neste caso não há espaço entre fn e o número.

paste0('fn', c(1:30))

#4 - Execute as seguintes linhas de código que ciram dois vetores de números 
#aleatórios inteiros, um escolhido com substituição e o outro sem substituição. 
#Ambos os vetores possuem 250 números. Em seguida responda as perguntas.

set.seed(132)
x <- sample(0:10, 5, replace = T)
y <- sample(0:10, 5, replace = F)
x
y

#a) gera número aleatórios
#b) com a substituição o mesmo número pode ser escolhido mais de uma vez,
#sem a substituição o mesmo número só pode ser escolhido uma única vez".
#c) Os números escolhidos serão diferentes.
#d) Os número escolhidos são sempre os mesmos.
#e) 

tmp <- y[-1] - x[-length(x)]

#5 Crie dois vetores (x e y) com 250 números aleatórios entre 0 e 500 
#sem substituição. Utilize as funções sort, order, mean, sqrt, sum e abs 
#para responder as perguntas a seguir:

x <- sample(0:500, 250, replace = F)
y <- sample(0:500, 250, replace = F)
x
y

#a) Mostre os valores de x que são > 250.

x[x>250]

#b) Quais são os valores dos índices em y que possuem valores > 250?

which(y>250)

#c) Quais são os valores em x que correspondem aos valores em y que 
#são > 250? (Por corresponder, queremos dizer nas mesmas posições de índice.)


which(x>250 & y>250)

#d) Quantos números em x são divisíveis por 2? (Observe que o operador de módulo é denotado como %%.)

div <- (x %% 2) == 0

x[div]


#e) Organize os números no vetor x na ordem dos valores crescentes em yVec.

yVec = sort(x)
yVec
