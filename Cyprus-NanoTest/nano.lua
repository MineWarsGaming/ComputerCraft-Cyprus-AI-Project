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
    nano.getPlayerName()
    nano.getUUID()





nano = ant.getInfectedEntity(829228)

sleep(2)
