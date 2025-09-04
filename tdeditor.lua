
local se = require 'lib.samp.events'

function main()
	if not isSampfuncsLoaded() or not isSampLoaded() then return end
	while not isSampAvailable() do wait(100) end
		
	wait(-1)
end


function se.onShowTextDraw(id, data)
	if id == 103 then -- data
		data.position.x = data.position.x - 500
		data.position.y = data.position.y - 900
	end

	if id == 104 then -- ora
		data.position.x = data.position.x - 500
		data.position.y = data.position.y - 900
	end

	if id == 105 then -- seconds
		data.position.x = data.position.x - 500
		data.position.y = data.position.y - 900
	end

	if id == 115 then -- server name
		data.position.x = data.position.x - 10
		data.position.y = data.position.y - 9
	end

	if id == 2071 then -- your name
		data.position.x = data.position.x - 10
		data.position.y = data.position.y - 9
	end

	if id == 2082 then -- reps/cheats
		data.position.y = data.position.y - 6
	end

	if id == 2078 then -- wanted time
		data.position.y = data.position.y - 44
		data.position.x = data.position.x + 23
	end
	
	if id == 2066 then -- viteza
		data.position.x = data.position.x + 200
		data.position.y = data.position.y - 0
	end
	
	if id == 2067 then -- km/h text
		data.position.x = data.position.x + 87
		data.position.y = data.position.y - 0
	end

	if id == 289 then -- faction duty
		data.position.x = data.position.x + 55
		data.position.y = data.position.y - 0
	end
	
	if id == 2065 then -- odometer
		data.position.x = data.position.x + 50
		data.position.y = data.position.y - 15
		data.letterHeight = data.letterHeight / 1.09
		data.letterWidth = data.letterWidth / 1.0
		data.style = 1
	end

	if id == 2092 then -- nume masina
		data.letterHeight = data.letterHeight / 1.09
		data.letterWidth = data.letterWidth / 1.09
		data.style = 0
	end

	return {id, data}

end
