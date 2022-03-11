print('^1=========================================================')
print('^1==Zayn auto vehicle deleter made for Brain Brand | Shop==')
print('^1=========================================================')

-- Framework
Zayn_autovehdel_Config.Framework = nil

CreateThread(function()

	while Zayn_autovehdel_Config.Framework == nil do

		TriggerEvent(Zayn_autovehdel_Config.getSharedObject, function(obj) Zayn_autovehdel_Config.Framework = obj end)

        Wait(500)
	end
end)
--

-- Thread Creation
CreateThread(function()

	Wait(60000 * Zayn_autovehdel_Config.VehDelBreak)

	while true do

		if GetDistanceBetweenCoords(vector3(195.07, -933.87, 30.68), GetEntityCoords(PlayerPedId())) <= Zayn_autovehdel_Config.VehDelDistanceNoti then

            TriggerEvent("chat:addMessage", { template = '<div style = "padding: 0.4vw; background-image: linear-gradient(to right, rgba(99, 99, 99, 0.18), #3c0400); border-radius: 3px;"> <i><img style = "margin-bottom: -6px; padding-right: 8px;" src = "https://cdn.discordapp.com/attachments/841334586806239252/945772279512567818/Veh.png" width = "26" height = "26"></i>'..Zayn_autovehdel_Config.Noti1..'</div>'})

			Wait(60000 * Zayn_autovehdel_Config.VehDelTimer)

            TriggerEvent("chat:addMessage", { template = '<div style = "padding: 0.4vw; background-image: linear-gradient(to right, rgba(99, 99, 99, 0.18), #3c0400); border-radius: 3px;"> <i><img style = "margin-bottom: -6px; padding-right: 8px;" src = "https://cdn.discordapp.com/attachments/841334586806239252/945772279512567818/Veh.png" width = "26" height = "26"></i>'..Zayn_autovehdel_Config.Noti2..'</div>'})
   
			local vehicles = Zayn_autovehdel_Config.Framework.Game.GetVehiclesInArea(vector3(195.07, -933.87, 30.68), Zayn_autovehdel_Config.VehDelDistance)

			for i = 1, #vehicles do 

				if GetPedInVehicleSeat(vehicles[i], -1) == 0 then

					Zayn_autovehdel_Config.Framework.Game.DeleteVehicle(vehicles[i])
				end
			end 
		end

		Wait(60000 * Zayn_autovehdel_Config.VehDelBreak)
	end
end)
--