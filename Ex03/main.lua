-- funções nativas
-- print = imprimi no terminal
-- type = verificar e retornar o tipo de dado
-- tostring = converter para string
-- tonumber = converter para numero
-- math.max = retorna o maior numero
-- math.min = retorna o menor numero
-- math.random = retorna um numero aleatorio
-- math.sqrt = retorna a raiz quadrada
-- math.floor = retornar o valor aproximado para baixo
-- math.ceil = retornar o valor aproximado para cima
-- table.insert = adiciona um elemento a uma tabela
-- table.remove = remove um elemento a uma tabela


function mostrarNome()
    nome = "luan"
    sobreNome = " fagioni"
    nomeCompleto = nome .. sobreNome
    return nomeCompleto
end

retornoNome = mostrarNome()
--print(retornoNome)


function somar()
    soma = 5 + 10
    return soma
end

--resultado = somar()
--print(resultado)


function calcularMedia()
    media = (7 + 5 + 4 + 8) / 4
    return media
end

resultado = calcularMedia()
print(resultado)




function fazerLanche()
    lanche = "lanche pronto"
    return lanche
end

cliente = fazerLanche()
print(cliente)