local robot = require("robot")
local os = require("os")

--[[
This program harvests the trees from the "buildFarm" tree farm.

Place robot on dirt before first tree spot facing in direction of the farm.

Slot 1: Axe
]]

robot.select(1)
component.inventory_controller.equip()

-- Begin Routine (First 7 Rows)

select(1)

for i=1, 7 do

  --starts on dirt
  robot.swing()
  os.sleep(8)
  robot.suck()
  robot.suckUp()
  robot.forward()
  robot.suck()

for i=1, 7 do

  for i=1, 7 do
    robot.forward()
  end

--starts on dirt
  robot.swing()
  os.sleep(8)
  robot.suck()
  robot.suckUp()
  robot.forward()
  robot.suck()

end

  robot.forward()
  robot.forward()
  robot.turnRight()
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
  robot.turnLeft()
  robot.forward()

end

-- LAST ROW

--starts on dirt
  robot.swing()
  os.sleep(8)
  robot.suck()
  robot.suckUp()
  robot.forward()
  robot.suck()

for i=1, 7 do

  for i=1, 7 do
    robot.forward()
  end

  --starts on dirt
  robot.swing()
  os.sleep(8)
  robot.suck()
  robot.suckUp()
  robot.forward()
  robot.suck()

end

  robot.forward()
  robot.forward()
  robot.turnRight()
  robot.forward()
  robot.forward()
  robot.turnRight()
  for i=1, 60 do robot.forward() end
  robot.turnRight()
  robot.forward()
  robot.forward()
  robot.turnRight()
  robot.turnRight()
