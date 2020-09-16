-- example
local wicky = Player('wicky')

local start = getTickCount()
for i=1, 1000000 do
   localPlayer:getPosition()
end
print('the test results (Player): ' .. getTickCount() - start)
-- probably higher than 400ms but its lower to the mta oop class