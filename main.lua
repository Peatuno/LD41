-------------------------------------------------
-- ...... #LD41 by Peatuno / JoQ
-- Website: http://jksoft.se
-- Licence: ZLIB/libpng
-- Copyright (c) 2018 JKsoft
-------------------------------------------------
require 'game'
require 'settings'

local class = require 'libs/middleclass'
Moan = require 'libs/Moan'

function love.load()
  love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {resizable=false, vsync=true, minwidth=800, minheight=600})
  love.window.setTitle("LD41 (PeatUno) - ....")

  game = Game:new()
  a = love.graphics.newImage("assets/test.png")
  Moan.speak("", {"Hej", "hå"}, {x=10, y=10, image=a, oncomplete=function() Moan.setSpeed("slow") end,
                                 options={
                                  {"2 peps and 1 village - 50 believe",  function() game:start_options(2,2,1,50) end},
                                  {"4 peps and 2 villages - 75 believe",  function() game:start_options(4,2,2,75) end}}
                                })

end
function love.update(dt)
  Moan.update(dt)
  game:update(dt)
  Moan.draw()
end
function love.draw()

  game:draw()
  love.graphics.print("FPS: "..tostring(love.timer.getFPS( )), 10, 10)
  love.graphics.print("Mouse: x = "..love.mouse.getX().." , y = "..love.mouse.getY())
end

function love.keyreleased(key)
    Moan.keyreleased(key) -- or Moan.keypressed(key)
end
