local class = require 'libs/middleclass'

Moan = require 'libs/Moan'

require "towns"
require "attr"
require "events"


local k = love.keyboard
local g = love.graphics

Game = class('Game')

function Game:initialize()
  map = g.newImage("assets/map.png")

  attr = Attr:new()
  towns = Towns:new()
  events = Events:new()

  self.pepscount = 0
  self.believe = 0


  self.godtool = "addfood"




  reporter = g.newImage("assets/news-reporter.png")
  --Moan.speak("RSS News - "..attr:getNews(1)[1]..towns:getRandomTown(), {attr:getNews(1)[2]}, {x=10, y=10, image=reporter})



end
function Game:start_options(p, pt, t, start_believe)
  for i=1,t do
    towns:spawn(pt)
  end
  self.pepscount = p
  self.believe = start_believe
end

function Game:update(dt)
  towns:update(dt)
  if self.believe > 0 then
    self.believe = self.believe - 0.2*dt
  end

end
function Game:draw()
  g.draw(map, 0, 0)
  towns:draw()
  events:draw()

  g.print("P = "..tostring(self.pepscount), 10, 75)
  g.print("B = "..string.format("%5.2f", self.believe), 10, 90)


  Moan.draw()
end
function Game:addpeps(num)
  self.pepscount = self.pepscount + num
end

function love.keyreleased(key)
    Moan.keyreleased(key) -- or Moan.keypressed(key)
end
