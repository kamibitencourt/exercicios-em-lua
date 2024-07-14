-- A biblioteca de display é a responsavel por adicionar objetos na tela como textos, quadrados, circulos imagens e etc.
-- Todas funções irão pedir parametros para que elas funcionem.

-- Adiciona um circulo na tela e pede posX, posY, tamanho
local circulo1 = display.newCircle( 160, 240, 50 )
local circulo1 = display.newCircle( 120, 200, 20 )
local circulo1 = display.newCircle( 200, 200, 20 )

-- Adiciona um retangulo na tela e pede posX, posY, largura, altura
local quadrado1 = display.newRect( 160, 400, 300, 30 )
local quadrado2 = display.newRect( 50, 350, 50, 50 )

-- Adiciona um texto na tela e pede obrigatoriamente os seguintes parametros: texto, posX, posY, fonte, tamanho da fonte
local nome = display.newText( "Ursinho!", 160, 50, nil, 60 )
local descricao = display.newText("Meu primeiro projeto", 160, 100, nil, 20 )