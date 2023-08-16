local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))() 
local w = library:CreateWindow("Universal UGC Hub")

local t = w:CreateFolder("Scripts")
t:Button("Infinite Yield",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
 end)
 t:Button("Dex Explorer",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
t:Button("Remote Spy",function()
   loadstring(game:HttpGet("loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()"))()
end)
t:Button("Adonis Bypass",function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Tamim468/releases/main/bypass.lua'))()
end)
local abc = w:CreateFolder("Subplaces")
local pages = game:GetService("AssetService"):GetGamePlacesAsync()

while true and task.wait(0.5) do
    for _, place in pairs(pages:GetCurrentPage()) do
      abc:Button(tostring(place.Name) .. " (" .. tostring(place.PlaceId) .. ")",function()
         game:GetService("TeleportService"):Teleport(place.PlaceId, LocalPlayer)
      end)
   end
   if pages.IsFinished then
      break
   end
   pages:AdvanceToNextPageAsync()
end
