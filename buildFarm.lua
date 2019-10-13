local robot = require("robot")
local os = require("os")
 
--[[
This program plants the acorns for the trees from the "buildFarm" tree farm.
 
Place robot on dirt before first tree spot facing in direction of the farm.
 
Slot 1: Acorns (1 Stack)
]]
 
function plant()
  select(1)
  robot.place()
end
 
-- Begin Routine (First 7 Rows)
 
-- turn around (backwards)
 
robot.turnRight()
robot.turnRight()
 
for i=1, 7 do
 
--starts on dirt
robot.back()
robot.back()
plant()
 
for i=1, 7 do
 
for i=1, 6 do
  robot.back()
end
 
--starts on dirt
robot.back()
robot.back()
plant()
 
end
 
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
 
  for i=1, 8 do robot.forward() end
  robot.turnRight()
  robot.back()
 
end
 
-- LAST ROW
 
  --starts on dirt
  robot.back()
  robot.back()
  plant()
 
for i=1, 7 do
 
  for i=1, 6 do
    robot.back()
  end
 
  --starts on dirt
  robot.back()
  robot.back()
  plant()
 
end
 
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
