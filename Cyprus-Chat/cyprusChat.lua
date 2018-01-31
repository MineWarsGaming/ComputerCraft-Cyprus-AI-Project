chat = peripheral.wrap("right")
speaker = peripheral.wrap("top")
modem = peripheral.wrap("left")


while true do
  event, player, message = os.pullEvent("chat")

if message == "!nanoHeal" or message == "!NanoHeal" or message == "!Nanoheal" or message == "!nanoheal" then
  sleep(0.1)
  chat.say("CyprusCore is not yet online, cannot connect to CyprusNano")
end
end
