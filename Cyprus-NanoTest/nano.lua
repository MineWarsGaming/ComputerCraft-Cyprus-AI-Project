ant = peripheral.wrap("top")
infected = ant.getInfectedEntities()
--get list of infected entities

database = textutils.serialize(infected)
--Turns the list of infected users into plain text I can interact with


--Ok, this whole block of code is here so I can pull infected player info so that I can store it and update it since the Nano Bot id changes every time you login
local storedIDs = {database}

for i=1, #storedIDs do
  nano = ant.getInfectedEntity( storedIDs[i])
    if nano.isPlayer == true then
    playerName = nano.getPlayerName()
    playerUUID = nano.getUUID()

--Stores the Nano ID, the player name and the player's UUID into a table.
    infectedPlayerList = { storedIDs[i], playerName, playerUUID }
end







nano = ant.getInfectedEntity(storedIDs[i])

sleep(2)
