ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx_tenues:settenuehazmat')
AddEventHandler('esx_tenues:settenuehazmat', function()
	if UseTenu then

		TriggerEvent('skinchanger:getSkin', function(skin)

    		if skin.sex == 0 then
        		local clothesSkin = {
            		['tshirt_1'] = 62, ['tshirt_2'] = 2,
			        ['ears_1'] = -1, ['ears_2'] = 0,
            		['torso_1'] = 67, ['torso_2'] = 2,
            		['decals_1'] = 0,  ['decals_2']= 0,
            		['mask_1'] = 46, ['mask_2'] = 0,
            		['arms'] = 86,
            		['pants_1'] = 40, ['pants_2'] = 2,
            		['shoes_1'] = 25, ['shoes_2'] = 0,
            		['helmet_1'] = 8, ['helmet_2'] = 0,
             		['bags_1'] = 0, ['bags_2'] = 0,
			        ['glasses_1'] = 0, ['glasses_2'] = 0,
			        ['chain_1'] = 0, ['chain_2'] = 0,
            		['bproof_1'] = 0,  ['bproof_2'] = 0
        		}
        		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    		else
        		local clothesSkin = {
            		['tshirt_1'] = 15, ['tshirt_2'] = 0,
			        ['ears_1'] = -1, ['ears_2'] = 0,
            		['torso_1'] = 15, ['torso_2'] 	= 0,
            		['decals_1'] = 0,  ['decals_2'] = 0,
            		['mask_1'] = 36, ['mask_2'] 	= 0,
            		['arms'] = 15,
            		['pants_1'] = 15, ['pants_2'] 	= 0,
            		['shoes_1'] = 35, ['shoes_2'] 	= 0,
            		['helmet_1']= -1, ['helmet_2'] 	= 0,
            		['bags_1'] = 43, ['bags_2']	= 0,
			        ['glasses_1'] = 5, ['glasses_2'] = 0,
			        ['chain_1'] = 0, ['chain_2'] = 0,
             		['bproof_1'] = 0,  ['bproof_2'] = 0
        		}
        		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
        	end
        	local playerPed = GetPlayerPed(-1)
			SetEnableScuba(GetPlayerPed(-1),true)
			SetPedMaxTimeUnderwater(GetPlayerPed(-1), 400.00)
    	end)
	else

		TriggerEvent('skinchanger:getSkin', function(skin)

			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, hasSkin)

				if hasSkin then

					TriggerEvent('skinchanger:loadSkin', skin)
					TriggerEvent('esx:restoreLoadout')
				end
			end)
		end)
	end

	UseTenu  = not UseTenu
	GUI.Time = GetGameTimer()

end)

RegisterNetEvent('esx_tenues:settenuelourde')
AddEventHandler('esx_tenues:settenuelourde', function()
	if UseTenu then

		TriggerEvent('skinchanger:getSkin', function(skin)

    		if skin.sex == 0 then
        		local clothesSkin = {
            		['tshirt_1'] = 15, ['tshirt_2'] = 0,
			        ['ears_1'] = -1, ['ears_2'] = 0,
            		['torso_1'] = 53, ['torso_2'] = 0,
            		['decals_1'] = 0,  ['decals_2'] = 0,
            		['mask_1'] 	= 35, ['mask_2'] = 0,
            		['arms'] = 17,
            		['pants_1'] = 33, ['pants_2'] = 0,
            		['shoes_1'] = 25, ['shoes_2'] = 0,
            		['helmet_1'] = 39, ['helmet_2'] = 0,
            		['bags_1']	= 43, ['bags_2'] = 0,
			        ['glasses_1'] = 26, ['glasses_2'] = 0,
			        ['chain_1'] = 0, ['chain_2'] = 0,
            		['bproof_1'] = 16,  ['bproof_2'] = 2
        		}
        		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    		else
        		local clothesSkin = {
            		['tshirt_1'] = 6, ['tshirt_2'] = 0,
			        ['ears_1'] = -1, ['ears_2'] = 0,
            		['torso_1'] = 43, ['torso_2'] = 0,
            		['decals_1'] = 0,  ['decals_2'] = 0,
            		['mask_1'] = 36, ['mask_2'] = 0,
            		['arms'] = 18,
            		['pants_1'] = 33, ['pants_2'] = 0,
            		['shoes_1'] = 25, ['shoes_2'] = 0,
            		['helmet_1'] = 114, ['helmet_2']	= 0,
            		['bags_1'] = 43, ['bags_2'] = 0,
			        ['glasses_1'] = 5, ['glasses_2'] = 0,
			        ['chain_1'] = 9, ['chain_2'] = 0,
            		['bproof_1'] = 18,  ['bproof_2'] = 2
        		}
        		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
        	end
        	local playerPed = GetPlayerPed(-1)
			SetEnableScuba(GetPlayerPed(-1),true)
			SetPedMaxTimeUnderwater(GetPlayerPed(-1), 1500.00)
    	end)
	else

		TriggerEvent('skinchanger:getSkin', function(skin)

			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, hasSkin)

				if hasSkin then

					TriggerEvent('skinchanger:loadSkin', skin)
					TriggerEvent('esx:restoreLoadout')
				end
			end)
		end)
	end

	UseTenu  = not UseTenu
	GUI.Time = GetGameTimer()

end)
