ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config.SharedObjectName, function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('ak47_usablecookies:notify')
AddEventHandler('ak47_usablecookies:notify', function(msg)
    if ESX ~= nil then
        ESX.ShowNotification(msg)
    end
end)

RegisterNetEvent('ak47_usablecookies:progress')
AddEventHandler('ak47_usablecookies:progress', function(msg, time)
    --Use your progressbar here
end)

function ShowNotificationDefault(msg)
    SetNotificationTextEntry('STRING')
    AddTextComponentSubstringPlayerName(msg)
    DrawNotification(false, true)
end

function tofloat(value)
    return tonumber(string.format("%.2f", value))
end

--If you want to add some effect on smoke then make events like this and add your effect inside
function effectJoint()
    SetTimecycleModifierStrength(0.0)
    SetTimecycleModifier('spectator6')
    SetPedMotionBlur(playerPed, true)
    Citizen.Wait(5000)
    SetTimecycleModifierStrength(0.66)
    Citizen.Wait(3000)
    ShakeGameplayCam('DRUNK_SHAKE', 2.5)
    Citizen.Wait(3000)
    RequestClipSet('MOVE_M@DRUNK@SLIGHTLYDRUNK')
    while not HasClipSetLoaded('MOVE_M@DRUNK@SLIGHTLYDRUNK') do
        Citizen.Wait(0)
    end
    SetPedMovementClipset(GetPlayerPed(-1), 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
    while effectTime > 0 do
        Citizen.Wait(1000)
        TriggerEvent('esx_status:remove', 'stress', 5000)
    end
    Citizen.Wait(15000)
    ClearTimecycleModifier()
    Citizen.Wait(15000)
    ShakeGameplayCam('DRUNK_SHAKE', 0.0)
    SetPedMotionBlur(GetPlayerPed(-1), false)
    Citizen.Wait(15000)
    ResetPedMovementClipset(GetPlayerPed(-1), 0)
end

--On Smoke Joint Events
AddEventHandler('ak47_usablecookies:onsmoke:cake_mix_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:cereal_milk_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:cheetah_piss_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:gary_payton_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:gelatti_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:georgia_pie_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:jefe_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:snow_man_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:white_runtz_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:blueberry_cruffin_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:whitecherry_gelato_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:fine_china_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:pink_sandy_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:zushi_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:apple_gelato_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:biscotti_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:collins_ave_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:marathon_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:oreoz_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:pirckly_pear_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:runtz_og_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:blue_tomyz_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:ether_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:froties_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:gmo_cookies_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:ice_cream_cake_pack_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:khalifa_kush_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:la_confidential_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:marshmallow_og_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:moon_rock_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:sour_diesel_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_usablecookies:onsmoke:tahoe_og_joint', function()
    effectJoint()
end)

--On Smoke Vape Events
AddEventHandler('ak47_usablecookies:onvape:blueberry_jam_cookie', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:butter_cookie', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:get_figgy', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:key_lime_cookie', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:marshmallow_crisp', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:no_99', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:paris_fog', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:pogo', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:pumpkin_cookie', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:shamrock_cookie', function()
    
end)

AddEventHandler('ak47_usablecookies:onvape:strawberry_jam_cookie', function()
    
end)

