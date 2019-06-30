RegisterCommand("ServerTalk", function()
   OutputChatMessage("Hello World!")
end)

function OutputChatMessage(msg)
    TriggerEvent(chat:addMessage, "[SERVER]: ", {255,0,0}, msg)
end