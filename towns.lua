local class = require 'libs/middleclass'

require "attr"

Towns = class('Towns')

local g = love.graphics

function Towns:initialize()
  self.towns = {}

end

function Towns:spawn(x, y, size, difficulty)
  local town = {}
  town.x = x
  town.y = y
  town.width = size
  town.height = size
  town.stats = {}
  town.name = attr:newTownName()
  town.effect = attr:setEffect()


  table.insert(self.towns, town)
end


function Towns:stats()


end

function Towns:draw()
  for i,v in ipairs(self.towns) do
    g.setColor(0, 0, 0)
    g.rectangle("fill", v.x, v.y, v.width, v.height)
    g.setColor(255,255,255)
    g.print(v.name, v.x, v.y - v.height - 2)
    g.print(attr:getEText(v.effect)[1], v.x, v.y + v.height + 2)
  end

end
