--TABELA NUMERICA (INDICES)
alunos = {"kamila", "bruno", "lara"} 

--TABELA ASSOCIATIVA (CHAVES)
cliente = {
    nome = 'kamila',
    sobreNome = "bitencourt",
    idade = 33,
    profissao = "veterinaria",
    endereco = {
        rua = "exemplo de rua",
        numero = 0,
        complemento = "casa"
    }
}

-- TABELA COMPLETA
usuario = {
    nome = "bruno",
    idade = 30,
    habilidades = {"html", "css", "lua"}
}



-- CONCATENACAO (JUNÇÃO)
nome = "lara "
sobreNome = "bitencourt"
nomeCompleto = nome .. sobreNome
-- print("Nome completo: " .. nomeCompleto)


-- COERÇÃO (CORREÇÃO)
coercao = 10 - "5"
-- print("Resultado: " .. calculo)


-- OPERADORES SÃO SIMBOLOS OU PALAVRAS CHAVES UTILIZADAS PARA FAZER ALGO DENTRO DA LINGUAGEM
-- OPERADOR DE ATRIBUIÇÃO =
-- OPERADOR DE CONCATENAÇÃO ..

-- OPERADORES ARITMESTICOS (MATEMATICA)
-- + (adicao)
-- - (subtração)
-- / (divisão)
-- * (multiplicação)
-- ^ (exponenciação)
calculo = (10 + 5) * 2
-- print("Resultado = " .. calculo)

-- OPERADORES RELACIONAIS (RELAÇÃO DE VALORES)
-- == igualdade
-- ~= diferente
-- > maior
-- >= maior ou igual
-- < menor
-- <= menor ou igual
valor1 = 10
valor2 = 10
relacao = valor1 == valor2
-- print(relacao)


-- OPERADORES LÓGICOS (VERIFICAR LÓGICA MAIS APURADA)
-- and = e
-- or = ou
-- not = contrario