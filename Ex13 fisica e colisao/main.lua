local x = display.contentWidth
local y = display.contentHeight

local physics = require("physics")
physics.start( )
physics.setGravity( 0, 3 )
physics.setDrawMode( "hybrid" )

local fundo = display.newImageRect("imagens/fundo.jpg", x, y)
fundo.x = x*0.5
fundo.y = y*0.5

local balao = display.newImageRect("imagens/balao.png", 200, 250)
balao.x = x*0.5
balao.y = y*0.5
physics.addBody(balao, {radius = 100} )

local chao = display.newRect( x*0.5, y*0.9, x, 100 )
physics.addBody(chao, "static")

local botao = display.newCircle( x*0.1, y*0.8, 50 )
botao:setFillColor(1,0,0)

local function impulso(event)
  if event.phase == "began" then
    balao:applyLinearImpulse(0, -2, balao.x, balao.y)
  enda
end
botao:addEventListener("touch", impulso)