- SISTEMA DE NOTAS
-- Ter uma tabela para guardar as notas
-- Criar funcionalidades para adicionar e remover notas na tabela
-- Pegar essas notas e fazer a media
-- Verificar a media com estrutura de controle

local notas = {}

local function adicionaNota(valor)
    if valor >= 0 and valor <= 10 then
        table.insert(notas, valor)
        print("Nota: " .. valor .. " adicionada.")
    else
        print("Nota: " .. valor .. " invalida.")
    end
end

adicionaNota(12)
adicionaNota(6)
adicionaNota(8)
adicionaNota(9)
adicionaNota(4)
adicionaNota(-3)
adicionaNota(7.5)
adicionaNota(5)

local function calcularMedia()
    local total = 0
    for i = 1, #notas do
        total = total + notas[i]
    end
    local calculo = total / #notas
    return calculo
end

local media = calcularMedia()

local function aprovacao()
    if media >= 7 and media <= 10 then
        print("Parabens voce foi aprovado, sua media foi: " .. media )
    elseif media < 7 and media >= 5 then
        print("Voce esta de recuperacao, sua media foi: " .. media)
    else
        print("Infelizmente voce foi reprovado, sua media foi: " .. media)
    end
end
aprovacao()