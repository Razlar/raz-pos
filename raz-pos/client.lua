local function GetFormattedPositionString(x, y, z)
    return string.format("^1X:^0 %.2f ^3Y:^0 %.2f ^2Z:^0 %.2f", x, y, z)
end

-- Define the command
RegisterCommand("pos", function(source, args, rawCommand)
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
    local posString = GetFormattedPositionString(x, y, z)

    -- Send the position to the chat
    TriggerEvent('chat:addMessage', {
        args = {posString}
    })
end, false)

-- Script created by Razlar#4937
-- You can use https://iqcode.com/code/other/fivem-color-codes to change X,Y & Z text colours.