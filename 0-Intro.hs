-- Comentário em linha única

{- 
Comentários em múltiplas linhas

Para rodar o código, abrimos um terminal e executamos:
    ghci -> para abrir o compilador de haskell
    :l (nome do arquivo.hs) -> para carregar o arquivo que quer codar
    :r   -> para recarregar o código colocado
    :!clear -> para limpar o console do ghci
    :cd -> para acessar um diretório específico no Haskell
-}

-- Imports
import Data.List
import System.IO

-- Haskell é estaticamente tipado, ou seja, não dá para mudar o tipo da variável após criar-la
-- Listas em haskell também são tipadas, ou seja, não tem como armazenar mais de um tipo na mesma lista
-- Tuplas podem armazenar mais de um tipo de dado

{- Background Haskell
    - Haskell é uma linguagem de programação funcional
    - Tudo é imutável, então, quando um valor é colocado como algo, é colocado para sempre
    - Funções podem ser passadas como parâmetros de outras funções
    - Recursão é bastante utilizada nessa linguagem
    - Haskell não tem funções como for, while, e tecnicamente não possui variáveis,
    mas possui constantes.
    - Haskell é chamado de "Lazy" ou preguiçoso porque ele não executa mais do que é
    preciso, só checa os erros no código. 
-}
-- Tipos de dados em Haskell:
-- Bool, Int, Integer, Float, Double, Char, [Char], Tuples ()

-- :: Bool
-- True ou False
trueAndFalse :: Bool = True && False
trueOrFalse :: Bool= True || False
notTrue :: Bool = not(True)

-- :: Int
-- Numéros inteiros [-2^63, 2^63]

-- Caso queiramos ver o número máximo possivel, podemos usar o maxBound:
maxInt :: Int = maxBound 
-- E caso queiramos ver o menor número possível, podemos usar o minBound:
minInt :: Int = minBound

-- O haskell, assim como o python, também pode fazer inferências sobre o tipo daquilo que está sendo declarado, mas, uma boa prática é sempre tipar se possível quando for declarar variáveis
numFive = 5 -- Perceba que já inferiu como um Int
numFive :: Integer -- E aqui estamos tipando a variável 
numFive' :: Float = 5
boolFive = 5 > 4 -- Perceba que mesmo que não seja tipado, o haskell é bem inteligente em descobrir o tipo das variáveis

-- Floats e Doubles
-- Tipicamente usamos Doubles, o haskell também infere normalmente como Double
myFloat :: Float -- Se comentarmos essa linha, o haskell irá inferir como Double
myFloat = 1.0 + 2.5 

myDouble :: Double = 1.55555

-- :: Char 
-- Char são caractéres únicos e denotados com aspas simples 
singleChar :: Char = 'a'
myName :: String = "Thiago B)"
myName' :: [Char] = ['T', 'h', 'i', 'a', 'g', 'o', ' ', 'B', ')'] -- A mesma coisa que o de cima

-- Matemática aeeee
addNum :: Integer = 3 + 6
subNum :: Integer = 3 - 6
multNum :: Integer = 3 * 6
divNum :: Double = 3 / 6 
modNum :: Integer = mod 9 2 -- Isso aqui chamamos de operador de préfixo
modNum' :: Integer = 9 `mod` 2 -- E esse é operador de infixo, que é o mais utilizado

-- Caso queiramos por números negativos nas equações, temos que escrever entre parênteses para o compilador entender
addNeg :: Integer = 4 + (-5)

-- Algumas funções matemáticas Built-in
piValor :: Double = pi 
ePower9 :: Double = exp 9
logOf9 :: Double = log 9
squared9 :: Double = 9 ** 2

-- Também temos: sin, cos, tan, asin, acos, atan, sinh, cosh, tanh

-- Funções de Arrendondamento
truncDouble :: Integer = truncate myDouble
roundDouble :: Integer = round myDouble
ceilDouble :: Integer = ceiling myDouble
floorDouble :: Integer = floor myDouble

-- Tirar a raiz de um número pelo método sqrt sempre retornará um float, portanto, cuidado com a tipagem de funções deste tipo
squareFive :: Float = sqrt numFive'

-- Outro Cuidado a se tomar com o sqrt, é que ele também só toma como parâmetro números fluantes, como doubles e floats
num9 :: Int = 9
raizDe9 :: Float = sqrt (fromIntegral num9) -- O fromIntegral converte um Int em Float