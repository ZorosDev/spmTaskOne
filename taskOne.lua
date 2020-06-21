table.foreach(tfm.get.room.playerList, function (name) 
	tfm.exec.setPlayerScore(name, math.random(50, 500))
end)

local top = nil

for name, player in next, tfm.get.room.playerList do
	if not top or (top ~= name) then
		top = name
	end
end

tfm.exec.giveCheese(top)
