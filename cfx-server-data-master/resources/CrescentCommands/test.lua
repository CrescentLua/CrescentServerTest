RegisterCommand("ServerTalk", function()
   OutputChatMessage("Hello World!")
end, false)

RegisterCommand("OOC", function(source, args, rawCommand)
    OutputOOCMessage(string.sub(rawCommand, 4))
end, false)

function OutputChatMessage(msg)
    TriggerEvent("chat:addMessage",  { 
        color = {255, 0, 0}, 
        multiline = true, 
        args = {"[SEVER]", msg}  
     }) 
end

function OutputOOCMessage(OOCmsg) 
    TriggerEvent("chat:addMessage", { 
        color = {0, 0, 255}, 
        multiline = true, 
        args = {GetPlayerName(PlayerId()) .. "[OOC]", OOCmsg}
    })
end 