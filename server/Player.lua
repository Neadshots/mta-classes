Player = Element('Player') -- inherit the Element class

-- overriding the Element class __call function
getmetatable(Player).__call = function(_, name) return setmetatable({element = getPlayerFromName(name)}, {__index = Player}) end

Player.getName = function(element) return getPlayerName(element.element) end
Player.getIP   = function(element) return getPlayerIP(element.element) end
Player.getPing   = function(element) return getPlayerPing(element.element) end
Player.getMoney   = function(element) return getPlayerMoney(element.element) end

-- defining localPlayer
localPlayer = Player(getPlayerName(localPlayer)) -- xd
