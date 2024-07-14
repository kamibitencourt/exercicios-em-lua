local x = display.contentWidth
local y = display.contentHeight

local inimigo = display.newCircle( x*0.5, y*0.5, 50)
inimigo:setFillColor(0, 0, 1)

function moverInimigo()
  transition.to(inimigo, {
    time = 1000,
    x = math.random(0,x),
    y = math.random(0,y)
  })
end
timer.performWithDelay( 2000, moverInimigo, 0 )

function vitoria()
  local texto = display.newText( "Ganhou", x*0.5, y*0.5, nil, 50 )
  texto:setFillColor(0, 1, 0)
  inimigo.alpha = 0

  local function reiniciar()
   display.remove( texto )
   inimigo.alpha = 1  
   inimigo.x = x*0.5
   inimigo.y = y*0.5
  end
  timer.performWithDelay(2000, reiniciar )
  
end
inimigo:addEventListener("tap", vitoria)

function derrota()
  local texto = display.newText( "Perdeu", x*0.5, y*0.5, nil, 50 )
  texto:setFillColor(1, 0, 0)
  inimigo.alpha = 0

  local function reiniciar()
    display.remove( texto )
    inimigo.alpha = 1
    inimigo.x = x*0.5
    inimigo.y = y*0.5
   end
   timer.performWithDelay(2000, reiniciar )

end
timer.performWithDelay( 30000, derrota )