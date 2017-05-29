local Arena_Base = {}
local bg_images = {}
local bg_sounds = {}
local start = true

function Arena_Base:new()
  for i = 1,8 do
    bg_images[i] = love.graphics.newImage("background/arena"..i)
    bg_sounds[i] = love.audio.newSource("background/sound"..i, "stream")
  end
end

function Arena_Base:draw(extraX, extraY, prop, arenaNum)
  love.graphics.draw(bg_images[arenaNum], extraX, extraY, 0, prop)
  if start then
    start = false
    bg_sounds[arenaNum]:play()
  end
end

return Arena_Base
