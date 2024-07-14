-- Transição
-- Fazer transição de valores padrões que todos os objetos de exibição possuem como: posicao, tamanho(escala), rotação, transparencia e etc.
local quadrado = display.newRect( x*0.5, y*0.5, 100, 100 )

-- Irá pedir o objeto que irá ser feito a transição depois os parametros para a transição ocorrer
transition.to( quadrado, {
  time = 5000,
  width = 400,
  height = 400,
  x = 0,
  y = 0,
})

-- FAZ PISCAR
-- transition.blink(quadrado, {
--   time = 2000
-- })