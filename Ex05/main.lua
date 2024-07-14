-- FOR NUMERICO É UTILIZADO COM TABELAS NUMERICAS E EXECUTAR UM TRECHO CODIGO QUANTAS VEZE SQUISERMOS
local nomes = {"Luan", "José", "Mariana"}
for i = 1, #nomes do
    print(nomes[i])
end

-- FOR GENERICO É UTILIZADO COM TABELAS ASSOCIATIVAS E NUMERICAS
local pessoa = {
    nome = "Luan",
    sobreNome = "Fagioni",
    idade = 23,
    profissao = "dev"
}

local nomes2 = {"Luan", "José", "Mariana"}

for key, value in pairs(nomes2) do
    print(key, value)
end