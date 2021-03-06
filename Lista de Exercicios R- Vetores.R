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

#d) (4, 6, 3) e salve esse vetor na vari�vel temp

temp <- c(4,6,3)
temp

#e) (4, 6, 3, 4, 6, 3, ., 4, 6, 3), em que existem 10 ocorr�ncias da sequ�ncia.

e <- rep(c(4,6,3), times=10)
e
length(e)

#f) (4, 4, 4, 4, ., 6, 6, 6, 6, .,  3, 3, 3, 3, ., 3), em que cada n�mero aparece 10 vezes e o primeiro par�metro da fun��o deve ser c(4,5,6).

f <- rep(c(4,5,3), each=10)
f

#---------------------------------------------------------------------------

#2 - Calcule o resultado das seguintes equa��es:

#a)

x <- 10:100 
sum(x^3 + 4*x^2)
x

#b

y <- 1:25
sum((2^y)/y + 3^y/(y^2))
y

#3 - Utilize a fun��o paste (utilize ?paste para descobrir o que a fun��o faz) para criar os seguintes vetores de tamanho 30:

#a) ("label 1", "label 2", "label 3", .., "label 30" ) #Observe que h� um �nico espa�o entre label e o n�mero.


paste('label', c(1:30))


#b) ("fn1", "fn2", "fn3", .., "fn30" ) #Observe que neste caso n�o h� espa�o entre fn e o n�mero.

paste0('fn', c(1:30))

#4 - Execute as seguintes linhas de c�digo que ciram dois vetores de n�meros 
#aleat�rios inteiros, um escolhido com substitui��o e o outro sem substitui��o. 
#Ambos os vetores possuem 250 n�meros. Em seguida responda as perguntas.

set.seed(132)
x <- sample(0:10, 5, replace = T)
y <- sample(0:10, 5, replace = F)
x
y

#a) gera n�mero aleat�rios
#b) com a substitui��o o mesmo n�mero pode ser escolhido mais de uma vez,
#sem a substitui��o o mesmo n�mero s� pode ser escolhido uma �nica vez".
#c) Os n�meros escolhidos ser�o diferentes.
#d) Os n�mero escolhidos s�o sempre os mesmos.
#e) 

tmp <- y[-1] - x[-length(x)]

#5 Crie dois vetores (x e y) com 250 n�meros aleat�rios entre 0 e 500 
#sem substitui��o. Utilize as fun��es sort, order, mean, sqrt, sum e abs 
#para responder as perguntas a seguir:

x <- sample(0:500, 250, replace = F)
y <- sample(0:500, 250, replace = F)
x
y

#a) Mostre os valores de x que s�o > 250.

x[x>250]

#b) Quais s�o os valores dos �ndices em y que possuem valores > 250?

which(y>250)

#c) Quais s�o os valores em x que correspondem aos valores em y que 
#s�o > 250? (Por corresponder, queremos dizer nas mesmas posi��es de �ndice.)


which(x>250 & y>250)

#d) Quantos n�meros em x s�o divis�veis por 2? (Observe que o operador de m�dulo � denotado como %%.)

div <- (x %% 2) == 0

x[div]


#e) Organize os n�meros no vetor x na ordem dos valores crescentes em yVec.

yVec = sort(x)
yVec
