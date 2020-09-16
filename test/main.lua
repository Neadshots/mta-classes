-- example
local wicky = Player('wicky')

-- traditional
-- local start = getTickCount()
-- for i=1, 1000000 do
--    getElementPosition(wicky)
-- end
-- print('the test results (Player | Traditional): ' .. getTickCount() - start)
-- 287ms

-- oop (mta)
-- local start = getTickCount()
-- for i=1, 1000000 do
--    wicky:getPosition()
-- end
-- print('the test results (Player | OOP (MTA)): ' .. getTickCount() - start)
-- 2720ms

-- oop (with this repo)
local start = getTickCount()
for i=1, 1000000 do
   wicky:getPosition()
end
print('the test results (Player | OOP): ' .. getTickCount() - start)
-- 461ms