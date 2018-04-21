local class = require 'libs/middleclass'

require "towns"
require "attr"
require "events"


local k = love.keyboard
local g = love.graphics

Game = class('Game')

function Game:initialize(difficulty)
  map = g.newImage("assets/map.png")

  attr = Attr:new()
  towns = Towns:new()
  events = Events:new()


  self.difficulty = difficulty

  towns:spawn(149, 174, 12, self.difficulty)
  towns:spawn(402, 124, 20, self.difficulty)



end
function Game:update(dt)



end
function Game:draw()
  g.draw(map, 0, 0)
  towns:draw()
  events:draw()

end
