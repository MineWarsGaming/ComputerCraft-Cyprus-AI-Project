chat = peripheral.wrap("right")
speaker = peripheral.wrap("top")
modem = peripheral.wrap("left")

--Opens the modem to contact CyprusChat on channel 15672
modem.open(15672)
modem.transmit(15672, 15672, "CyprusChat calling CyprusCore")

--Pulls the events in order to recieve CyprusCore's reply.
event, senderChannel, replyChannel, modemMessage = os.pullEvent("modem_message")

--Checks for the message from CyprusCore and errors if it is not recieved.
if modemMessage = "CyprusCore is online" then
  chat.say("CyprusChat is online and recieveing.")
else
  chat.say("Error, cannot connect to CyprusCore")
end

--Pulls the events for interacting with the player in from chat commands.
while true do
  event, player, message = os.pullEvent("chat")

--Start of command list.
if message == "!nanoHeal" or message == "!NanoHeal" or message == "!Nanoheal" or message == "!nanoheal" then
  sleep(0.1)

end
end
