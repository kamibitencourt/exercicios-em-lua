-- VARIAVEIS PARA TRABALHAR COM RESPONSIVIDADE
local x = display.contentWidth
local y = display.contentHeight

-- TABELA PARA ARMAZENAR AS IMAGENS
local imagens = {
  chao = "recursos/imagens/base.png",
  inicio = "recursos/imagens/start.png",
  fim = "recursos/imagens/gameover.png",
  fundo = {
    "recursos/imagens/background-day.png",
    "recursos/imagens/background-night.png"
  },
  cano = {
    "recursos/imagens/pipe-green.png",
    "recursos/imagens/pipe-red.png"
  },
  passaro = {
    "recursos/imagens/bluebird.png",
    "recursos/imagens/redbird.png",
    "recursos/imagens/yellowbird.png"
  }
}

-- DECLARAÇÃO DE VARIAVEIS
local distanciaCanos = y

-- DECLARACAO DAS VARIAVEIS RANDOMICAS
local fundoRandomico = imagens.fundo[math.random(1,2)]
local canoRandomico = imagens.cano[math.random(1,2)]
local passaroRandomico = imagens.passaro[math.random(1,3)]

-- DECLARAÇÃO DOS OBJETOS
local fundo = display.newImageRect(fundoRandomico, x, y)
fundo.x = x*0.5
fundo.y = y*0.5

local passaro = display.newImageRect(passaroRandomico,     x*0.12, y*0.08 )
passaro.x = x*0.3
passaro.y = y*0.1


local chao = display.newImageRect(imagens.chao, x, y*0.2 )
chao.x = x*0.5
chao.y = y*0.9

local canoBaixo = display.newImageRect(canoRandomico, x*0.2, y*0.8 )
canoBaixo.x = x*0.5
canoBaixo.y = math.random(y*0.6, y*1.15)
-- altura maxima = y*0.6
-- altura minima = y*1.15

local canoCima = display.newImageRect(canoRandomico, x*0.2, y*0.8 )
canoCima.rotation = 180
canoCima.x = x*0.5
canoCima.y = canoBaixo.y - distanciaCanos