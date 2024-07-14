local x = display.contentWidth
local y = display.contentHeight

local circulo = display.newCircle( x*0.5, y*0.5, 50)

-- O EVENTO DE TOUCH TEM VARIAS FASES DO TOQUE COMO INICIO FIM E MOVENDO PARA VERIFICAR TEMOS QUE PASSAR O EVENTO PARA DENTRO DA FUNÇÃO E UTILIZAR A PROPRIEDADE .phase == "began"
function imprimir(event)
  if event.phase == "began" then
    print( "Inicio do toque" )
  elseif event.phase == "moved" then
    print( "Movendo o toque" )
  elseif event.phase == "ended" then
    print( "Fim do toque" )
  end
end
circulo:addEventListener("touch", imprimir)

-- TEMBEM TEMOS AS PROPRIEDADES X e Y PARA BUSCAR A POSIÇÃO DE ONDE FOI O TOQUE
function posicaoToque(event)
  if event.phase == "moved" then
    circulo.x = event.x
    circulo.y = event.y
  end
end
Runtime:addEventListener("touch", posicaoToque)