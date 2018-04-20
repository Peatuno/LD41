local class = require 'libs/middleclass'

local k = love.keyboard
local g = love.graphics

Game = class('Game')

function Game:initialize()
  testtxt = "Teeeest"


end
function Game:update(dt)



end
function Game:draw()
  g.print(testtxt, 100, 100)

end
