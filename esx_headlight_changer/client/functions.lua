--[[ 
                 Headlight Menu - edited by bypass
]]

function OpenHeadlightMenu()
    local elems = {
        {label = 'Abrir Lista', value = 'open_list'},

}
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'ColourMenu',{
        title = 'CORES - FAROIS',
        align = 'right',
        elements = elems
    },
    function(data, menu)
        if data.current.value == 'open_list' then 
            ColourList()
        end
    end,
    function(data, menu)
        menu.close()
    end)
end

function ColourList()
        local elems = {
            {label = 'Azul Escuro', value = '1'},
            {label = 'Azul Claro', value = '2'},
            {label = 'Turquesa', value = '3'},
            {label = 'Verde', value = '4'},
            {label = 'Amarelo', value = '5'},
            {label = 'Dourado', value = '6'},
            {label = 'Laranja', value = '7'},
            {label = 'Vermelho', value = '8'},
            {label = 'Rosa', value = '9'},
            {label = 'Violeta', value = '10'},
            {label = 'Roxo', value = '11'},
            {label = 'Ultravioleta', value = '12'},

        }
    
        ESX.UI.Menu.CloseAll()
        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'ColourMenu',{
            title = 'CORES - FAROIS',
            align = 'right',
            elements = elems
        },
        function(data, menu)
            if data.current.value == '1' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 1)
            end
            if data.current.value == '2' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 2)
            end
            if data.current.value == '3' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 3)
            end
            if data.current.value == '4' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 4)
            end
            if data.current.value == '5' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 5)
            end
            if data.current.value == '6' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 6)
            end
            if data.current.value == '7' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 7)
            end
            if data.current.value == '8' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 8)
            end
            if data.current.value == '9' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 9)
            end
            if data.current.value == '10' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 10)
            end
            if data.current.value == '11' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 11)
            end
            if data.current.value == '12' then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ToggleVehicleMod(veh, 22, true) -- Xenon
            SetVehicleHeadlightsColour(veh, 12)
            end
    end,
    function(data, menu)
        menu.close()
    end)
end

local location = {
    {x = -210.91, y = -1323.82, z = 30.89},
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(location) do
            DrawMarker(20, location[k].x, location[k].y, location[k].z, 0, 0, 0, 0, 0, 0, 0.8, 0.8, 0.8, 255, 50, 255, 100, true, true, 2, true, false, false, false)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(location) do
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, location[k].x, location[k].y, location[k].z)
            if dist <= 1.2 then
                ESX.ShowHelpNotification("Pressiona ~INPUT_TALK~ para mudar a cor dos ~p~Farois~s~")
				if IsControlJustPressed(1,51) then 
					OpenHeadlightMenu()
				end
            end
        end
    end
end)


	-- Create blips
	--[[Citizen.CreateThread(function()
        for k in pairs(location) do
			local blip = AddBlipForCoord(-223.773,-1323.365,29.0)

			SetBlipSprite (blip, 643)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, 0.7)
			SetBlipColour (blip, 8)
			SetBlipAsShortRange(blip, true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Headlight Changer")
			EndTextCommandSetBlipName(blip)
		end
	end)]]--
