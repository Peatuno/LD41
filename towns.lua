local class = require 'libs/middleclass'

require "attr"

Towns = class('Towns')

local g = love.graphics

function Towns:initialize()
  self.towns = {}
  self.towncount = 0
  self.towncords = {{149,174},{648,534},{805,427},{806,232},{882,108},{402,124},{656,201},{265,468}}
end

function Towns:spawn(size)
  local town = {}

  local randomid = math.random(1, 8)
  town.x = self.towncords[randomid][1]
  town.y = self.towncords[randomid][2]
  table.remove(self.towncords, randomid)

  town.size = size
  town.stats = {}
  town.foodsup = 6
  town.name = attr:newTownName()
  town.effect = attr:setEffect()


  table.insert(self.towns, town)


  self.towncount = self.towncount + 1




end

function Towns:getRandomTown()
  return self.towns[math.random(1, self.towncount)].name

end

function Towns:stats()


end

function Towns:update(dt)
  for i, v in ipairs(self.towns) do
    if v.foodsup > 5 then
        if v.size < 20 then
          v.size = v.size + 1
        end
        v.foodsup = v.foodsup - 1
        game:addpeps(1)
    end
  end


  function love.mousepressed(x, y, button, istouch)
    if button == 1 then
      for i, v in ipairs(self.towns) do
        if x > v.x and x < v.x + v.size+15 and y > v.y and y < v.y + v.size+15 then
          if game.godtool == "none" then
            print("Time to shop?!")
          elseif game.godtool == "addfood" then
            v.foodsup = v.foodsup + 1

          end


        end
      end
    end


  end


end

function Towns:addpeps(id)
  local atown = self.towns[id]


end

function Towns:draw()
  for i,v in ipairs(self.towns) do
    g.setColor(0, 0, 0)
    g.rectangle("fill", v.x, v.y, v.size, v.size)
    g.setColor(255,255,255)
    g.print(v.name.." - ["..attr:getEText(v.effect)[1].."]", v.x + v.size, v.y - v.size - 5)
    g.print("P: "..v.size.." Food: "..v.foodsup, v.x + v.size, v.y + v.size + 5)
  end

end
