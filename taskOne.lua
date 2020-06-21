--[[
 -- This is a task for SuperMice Module Team applications (Task #1)
 -- 
 -- Information:
 -- The code contains some mistakes.
 -- Fix the following script to give cheese to player
 -- who have the highest score.
]]

-- You don't need to create new variables.
-- You don't need to create more loops.
-- You can add conditions inside the loop.

table.foreach(tfm.get.room.playerList, function (name) 
	tfm.exec.setPlayerScore(name, math.random(50, 500))
end)
-- Do not change the code above, it's to give players random score


local top = nil -- You can change the value to whatever you want

for name, player in next, tfm.get.room.playerList do
	if not top or (top ~= name) then
		top = name
	end
end

tfm.exec.giveCheese(top)
