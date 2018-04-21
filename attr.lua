local class = require 'libs/middleclass'

Attr = class('Attre')

local g = love.graphics
local attr_effects_list = {
  {"loving", "Anyone who does not love does not know God, because God is love."},
  {"forgiving", "Be kind to one another, tenderhearted, forgiving one another, as God in Christ forgave you."},
  {"selfless", "Let each of you look not only to his own interests, but also to the interests of others."},
  {"servanthood", "The wicked borrows but does not pay back, but the righteous is generous and gives"},
  {"humility", "Whoever exalts himself will be humbled, and whoever humbles himself will be exalted."},
  {"driven", "A slack hand causes poverty, but the hand of the diligent makes rich."},
  {"passion", "Whatever you do, work heartily, as for the Lord and not for men"},
  {"compassion", "Bear one another’s burdens, and so fulfill the law of Christ."},
  {"patience", "do not be anxious about anything, but in everything by prayer and supplication with thanksgiving let your requests be made known to God."},
  {"control", "A man without self-control is like a city broken into and left without walls."},
  {"kindness", "A man who is kind benefits himself, but a cruel man hurts himself." },
  {"joy", "Rejoice in the Lord always; again I will say, rejoice."},
  {"peace", "If possible, so far as it depends on you, live peaceably with all."}
}
local attr_town_list = {
  "Anga", "Gothem", "Hamra", "Visby", "Hellvi", "Lokrume", "Lau", "Lye", "Lojsta", "Norrlanda", "Viklau"
}

--{"rubrik",
-- "text",
-- "effects"} (Ta rubriken och slumpa namn på vart detta har hänt..)
local newsflash = {
  {"Explosionen i ",
  "Vid AB Expressdynamits anläggningar springer ett så kallat prässhus i luften, varvid de i byggnaden varande sex personerna, en arbetare och fem arbeterskor, dödas. Olyckan anses orsakad av att en metallbit råkat komma med vid prässningen av en dynamitmassa på 160 kg, varvid genom den vid friktionen alstrade hettan dynamiten antänts.",
  "punishment"},
  {"Minsprängningen i ",
  "Tio man miste livet i en minsprängning vid glasbruket efter en fiskare hittat minan flytande i vattnet 400-500 meter utanför Gränsö udde och tagit den till land.",
  "punishment"}
}

function Attr:initialize()


end

function Attr:setEffect(difficulty)
  return math.random(1, 13)

end

function Attr:effect(id)
  if id == 1 then

  end

end

function Attr:getEText(id)
  return attr_effects_list[id]
end

function Attr:newTownName()
  local id = math.random(1, 11)
  local tname = attr_town_list[id]
  table.remove(attr_town_list, id)
  return tname
end
