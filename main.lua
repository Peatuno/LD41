-------------------------------------------------
-- ...... #LD41 by Peatuno / JoQ
-- Website: http://jksoft.se
-- Licence: ZLIB/libpng
-- Copyright (c) 2018 JKsoft
-------------------------------------------------
require 'game'
require 'settings'

local class = require 'libs/middleclass'

function love.load()
  love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {resizable=false, vsync=true, minwidth=800, minheight=600})
  love.window.setTitle("LD41 (PeatUno) - ....")
  game = Game:new()
end
function love.update(dt)
  game:update(dt)
end
function love.draw()
  game:draw()
  love.graphics.print("FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
