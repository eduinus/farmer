local robot = require("robot")
local os = require("os")
local component = require("component")
local sides = require("sides")

--[[
This program constructs a 8x8 tree farm, for a total of 64 trees.

Place robot on dirt before first tree spot facing in direction of the new farm.

Slot 1: Acorn (1 Stack)
Slot 2: Torches (1 Stack)
Slots 3-24: Dirt (22 Stacks)
]]

dirtSlot = 3;

function dirt()
  if component.inventory_controller.getStackInInternalSlot(dirtSlot) == nil then dirtSlot=dirtSlot+1 end
  robot.select(dirtSlot)
  robot.place()
end

function dirtDown()
  if component.inventory_controller.getStackInInternalSlot(dirtSlot) == nil then dirtSlot=dirtSlot+1 end
  robot.select(dirtSlot)
  robot.placeDown()
end

function plant()
  robot.select(1)
  robot.place()
end

function torch()
  robot.select(2)
  robot.place()
end

function returnToRow()
  robot.back()
  robot.turnLeft()
  robot.forward()
  robot.forward()
  robot.turnRight()
  for i=1, 60 do robot.forward() end
  robot.turnRight()
  robot.forward()
  robot.forward()
  robot.turnRight()
  robot.turnRight()
end

-- turn around (backwards)

robot.turnRight()
robot.turnRight()

-- Begin Routine (First 7 Rows)

for i=1, 7 do

  --starts on dirt
  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnRight()
  robot.turnRight()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

  robot.back()
  dirtDown()

  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnLeft()
  torch() -- torch first column
  robot.turnLeft()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

  robot.back()
  plant()
  dirtDown()

  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnRight()
  robot.turnRight()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

for i=1, 7 do

  for i=1, 6 do
    robot.back()
    dirtDown()
  end

--starts on dirt
  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnRight()
  robot.turnRight()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

  robot.back()
  dirtDown()

  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnLeft()
  torch() -- torch first column
  robot.turnLeft()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

  robot.back()
  plant()
  dirtDown()

  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnRight()
  robot.turnRight()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

end

  returnToRow()
  dirtDown()
  for i=1, 8 do robot.forward() dirtDown() end
  robot.turnLeft()
  robot.forward()
  robot.turnRight() robot.turnRight()
  dirtDown()

end

-- LAST ROW

--starts on dirt
  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnRight()
  robot.turnRight()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

  robot.back()
  dirtDown()

  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnLeft()
  torch() -- torch first column
  robot.turnLeft()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

  robot.back()
  plant()
  dirtDown()

  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnRight()
  robot.turnRight()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

for i=1, 7 do

  for i=1, 6 do
    robot.back()
    dirtDown()	
  end

--starts on dirt
  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnRight()
  robot.turnRight()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

  robot.back()
  dirtDown()

  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnLeft()
  torch() -- torch first column
  robot.turnLeft()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

  robot.back()
  plant()
  dirtDown()

  robot.turnRight()
  dirt()
  robot.up()
  dirt()
  robot.turnRight()
  robot.turnRight()
  dirt()
  robot.down()
  dirt()
  robot.turnRight()

end

  returnToRow()
  dirtDown()
