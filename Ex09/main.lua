local x = display.contentWidth
local y = display.contentHeight

local vitoria = false

local inimigo = display.newCircle( x*0.5, y*0.5, 50 )

inimigo:setFillColor(50/255, 200/255, 100/255)

function moverInimigo()
    inimigo.x = math.random(0, x)
    inimigo.y = math.random(0, y)
end
timer.performWithDelay( 2000, moverInimigo,0 )

function vitoria()
    local texto = display.newText( "Ganhou", x*0.5, y*0.5, nil, 50 )
    texto:setFillColor(0, 1, 0)
    inimigo.alpha = 0
    --display.remove(inimigo)
    vitoria = true
local function reiniciar()
    display.remove(texto)
    inimigo.alpha = 1
    inimigo.x = x*0.5
    inimigo.y = y*0.5
    vitoria = false
end
    timer.performWithDelay( 2000, reiniciar)

end
    inimigo:addEventListener("tap", vitoria)
    
function derrota()
    if vitoria == false then
        local texto = display.newText( "Perdeu", x*0.5, y*0.5, nil, 50 )
        texto:setFillColor(1, 0, 0)
        inimigo.alpha = 0
        --display.remove(inimigo)
        local function reiniciar()
            display.remove(texto)
            inimigo.alpha = 1
            inimigo.x = x*0.5
            inimigo.y = y*0.5
            vitoria = false
        end
        timer.performWithDelay( 1000, reiniciar)
    end
end
timer.performWithDelay( 10000, derrota, 0)