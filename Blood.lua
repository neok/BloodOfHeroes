-- Blood of Heroes Locator Addon for WoW Classic SoD
-- Shows all Blood of Heroes spawn points on the map

local addonName, BoH = ...
BoH.frame = CreateFrame("Frame")
BoH.data = {
    {zoneID = 1422, x = 35.9, y = 57.4},
    {zoneID = 1422, x = 36.4, y = 53.6},
    {zoneID = 1422, x = 38.3, y = 56.4},
    {zoneID = 1422, x = 39.7, y = 69.4},
    {zoneID = 1422, x = 39.7, y = 69.6},
    {zoneID = 1422, x = 40.6, y = 73.1},
    {zoneID = 1422, x = 40.7, y = 57.4},
    {zoneID = 1422, x = 40.7, y = 57.6},
    {zoneID = 1422, x = 41.4, y = 62.1},
    {zoneID = 1422, x = 41.5, y = 62.1},
    {zoneID = 1422, x = 42.2, y = 54.8},
    {zoneID = 1422, x = 42.8, y = 64.2},
    {zoneID = 1422, x = 43.3, y = 68.3},
    {zoneID = 1422, x = 43.6, y = 70.4},
    {zoneID = 1422, x = 43.7, y = 70.5},
    {zoneID = 1422, x = 44.2, y = 65.0},
    {zoneID = 1422, x = 44.4, y = 71.6},
    {zoneID = 1422, x = 44.5, y = 53.3},
    {zoneID = 1422, x = 44.5, y = 71.7},
    {zoneID = 1422, x = 44.6, y = 53.5},
    {zoneID = 1422, x = 45.8, y = 51.0},
    {zoneID = 1422, x = 45.8, y = 71.5},
    {zoneID = 1422, x = 45.9, y = 71.4},
    {zoneID = 1422, x = 46.7, y = 34.4},
    {zoneID = 1422, x = 46.8, y = 34.5},
    {zoneID = 1422, x = 46.9, y = 67.2},
    {zoneID = 1422, x = 47.0, y = 59.9},
    {zoneID = 1422, x = 47.6, y = 70.0},
    {zoneID = 1422, x = 47.9, y = 53.1},
    {zoneID = 1422, x = 49.4, y = 68.1},
    {zoneID = 1422, x = 49.8, y = 33.3},
    {zoneID = 1422, x = 52.2, y = 66.5},
    {zoneID = 1422, x = 52.3, y = 66.3},
    {zoneID = 1422, x = 52.4, y = 55.0},
    {zoneID = 1422, x = 53.0, y = 64.2},
    {zoneID = 1422, x = 53.3, y = 65.1},
    {zoneID = 1422, x = 53.3, y = 66.2},
    {zoneID = 1422, x = 53.4, y = 63.4},
    {zoneID = 1422, x = 53.5, y = 63.4},
    {zoneID = 1422, x = 53.5, y = 63.5},
    {zoneID = 1422, x = 54.9, y = 27.1},
    {zoneID = 1422, x = 55.3, y = 69.6},
    {zoneID = 1422, x = 56.7, y = 34.7},
    {zoneID = 1422, x = 57.8, y = 66.4},
    {zoneID = 1422, x = 62.0, y = 58.3},
    {zoneID = 1422, x = 62.0, y = 58.5},
    {zoneID = 1422, x = 62.9, y = 57.2},
    {zoneID = 1422, x = 62.9, y = 57.9},
    {zoneID = 1422, x = 63.3, y = 59.2},
    {zoneID = 1422, x = 63.6, y = 75.4},
    {zoneID = 1422, x = 63.6, y = 75.5},
    {zoneID = 1422, x = 64.0, y = 48.7},
    {zoneID = 1422, x = 64.1, y = 57.9},
    {zoneID = 1422, x = 64.9, y = 74.5},
    {zoneID = 1422, x = 65.0, y = 74.4},
    {zoneID = 1422, x = 65.8, y = 76.8},
    {zoneID = 1422, x = 66.5, y = 42.2},
    {zoneID = 1422, x = 67.0, y = 53.8},
    {zoneID = 1422, x = 67.8, y = 84.6},
    {zoneID = 1422, x = 68.0, y = 44.7},
    {zoneID = 1422, x = 68.3, y = 81.4},
    {zoneID = 1422, x = 68.3, y = 81.6},
    {zoneID = 1422, x = 68.4, y = 77.1},
    {zoneID = 1422, x = 68.5, y = 77.1},
    {zoneID = 1422, x = 68.7, y = 49.2},
    {zoneID = 1422, x = 68.7, y = 79.2},
    {zoneID = 1422, x = 68.9, y = 73.8},
    {zoneID = 1422, x = 69.5, y = 78.6},
    {zoneID = 1423, x = 7.1, y = 50.7},
    {zoneID = 1423, x = 8.0, y = 54.5},
    {zoneID = 1423, x = 8.1, y = 54.4},
    {zoneID = 1423, x = 14.2, y = 64.7},
    {zoneID = 1423, x = 20.0, y = 60.9},
    {zoneID = 1423, x = 20.5, y = 66.9},
    {zoneID = 1423, x = 21.5, y = 73.9},
    {zoneID = 1423, x = 22.1, y = 85.0},
    {zoneID = 1423, x = 24.3, y = 88.2},
    {zoneID = 1423, x = 26.0, y = 74.7},
    {zoneID = 1423, x = 26.3, y = 70.4},
    {zoneID = 1423, x = 26.3, y = 70.5},
    {zoneID = 1423, x = 26.7, y = 69.4},
    {zoneID = 1423, x = 26.7, y = 69.5},
    {zoneID = 1423, x = 27.0, y = 75.4},
    {zoneID = 1423, x = 27.1, y = 75.5},
    {zoneID = 1423, x = 27.3, y = 64.0},
    {zoneID = 1423, x = 28.8, y = 85.9},
    {zoneID = 1423, x = 29.2, y = 78.8},
    {zoneID = 1423, x = 30.9, y = 65.5},
    {zoneID = 1423, x = 32.0, y = 71.0},
    {zoneID = 1423, x = 33.6, y = 32.6},
    {zoneID = 1423, x = 34.0, y = 80.2},
    {zoneID = 1423, x = 34.3, y = 67.8},
    {zoneID = 1423, x = 34.4, y = 25.9},
    {zoneID = 1423, x = 34.5, y = 25.8},
    {zoneID = 1423, x = 34.5, y = 76.9},
    {zoneID = 1423, x = 35.6, y = 73.3},
    {zoneID = 1423, x = 35.9, y = 75.8},
    {zoneID = 1423, x = 36.7, y = 38.1},
    {zoneID = 1423, x = 36.9, y = 70.6},
    {zoneID = 1423, x = 37.1, y = 65.7},
    {zoneID = 1423, x = 37.6, y = 68.4},
    {zoneID = 1423, x = 38.4, y = 31.1},
    {zoneID = 1423, x = 38.5, y = 31.1},
    {zoneID = 1423, x = 38.5, y = 54.0},
    {zoneID = 1423, x = 38.8, y = 26.7},
    {zoneID = 1423, x = 38.9, y = 36.1},
    {zoneID = 1423, x = 40.0, y = 49.7},
    {zoneID = 1423, x = 41.4, y = 65.7},
    {zoneID = 1423, x = 41.4, y = 79.7},
    {zoneID = 1423, x = 41.5, y = 79.7},
    {zoneID = 1423, x = 42.3, y = 75.7},
    {zoneID = 1423, x = 44.9, y = 32.9},
    {zoneID = 1423, x = 46.2, y = 70.8},
    {zoneID = 1423, x = 46.3, y = 64.0},
    {zoneID = 1423, x = 46.5, y = 74.8},
    {zoneID = 1423, x = 47.5, y = 40.8},
    {zoneID = 1423, x = 47.9, y = 80.0},
    {zoneID = 1423, x = 48.9, y = 67.2},
    {zoneID = 1423, x = 49.1, y = 35.2},
    {zoneID = 1423, x = 50.2, y = 45.5},
    {zoneID = 1423, x = 50.3, y = 45.4},
    {zoneID = 1423, x = 50.4, y = 77.4},
    {zoneID = 1423, x = 50.5, y = 77.3},
    {zoneID = 1423, x = 51.8, y = 70.3},
    {zoneID = 1423, x = 53.4, y = 50.6},
    {zoneID = 1423, x = 53.5, y = 50.8},
    {zoneID = 1423, x = 55.3, y = 58.7},
    {zoneID = 1423, x = 55.5, y = 58.7},
    {zoneID = 1423, x = 56.2, y = 63.8},
    {zoneID = 1423, x = 56.5, y = 76.1},
    {zoneID = 1423, x = 57.0, y = 82.0},
    {zoneID = 1423, x = 57.4, y = 71.9},
    {zoneID = 1423, x = 57.5, y = 72.0},
    {zoneID = 1423, x = 57.8, y = 76.2},
    {zoneID = 1423, x = 58.1, y = 79.6},
    {zoneID = 1423, x = 58.4, y = 64.8},
    {zoneID = 1423, x = 58.5, y = 79.4},
    {zoneID = 1423, x = 58.6, y = 79.6},
    {zoneID = 1423, x = 59.2, y = 80.8},
    {zoneID = 1423, x = 59.3, y = 62.2},
    {zoneID = 1423, x = 59.3, y = 76.0},
    {zoneID = 1423, x = 59.5, y = 76.0},
    {zoneID = 1423, x = 59.9, y = 67.4},
    {zoneID = 1423, x = 59.9, y = 67.5},
    {zoneID = 1423, x = 61.8, y = 70.2},
    {zoneID = 1423, x = 63.6, y = 67.7},
    {zoneID = 1423, x = 64.7, y = 65.4},
    {zoneID = 1423, x = 64.7, y = 81.0},
    {zoneID = 1423, x = 66.1, y = 53.1},
    {zoneID = 1423, x = 67.6, y = 66.8},
    {zoneID = 1423, x = 68.2, y = 70.4},
    {zoneID = 1423, x = 68.2, y = 70.6},
    {zoneID = 1423, x = 68.2, y = 74.4},
    {zoneID = 1423, x = 68.3, y = 74.6},
    {zoneID = 1423, x = 68.6, y = 78.4},
    {zoneID = 1423, x = 68.8, y = 80.6},
    {zoneID = 1423, x = 68.9, y = 83.3},
    {zoneID = 1423, x = 69.0, y = 71.4},
    {zoneID = 1423, x = 69.0, y = 71.5},
    {zoneID = 1423, x = 70.7, y = 69.4},
    {zoneID = 1423, x = 70.7, y = 69.5},
    {zoneID = 1423, x = 70.7, y = 80.8},
    {zoneID = 1423, x = 71.1, y = 75.3},
    {zoneID = 1423, x = 72.2, y = 78.4},
    {zoneID = 1423, x = 72.3, y = 78.5},
    {zoneID = 1423, x = 73.3, y = 70.1},
    {zoneID = 1423, x = 73.3, y = 77.2},
    {zoneID = 1423, x = 73.4, y = 82.1},
    {zoneID = 1423, x = 73.6, y = 76.8},
    {zoneID = 1423, x = 73.8, y = 51.1},
    {zoneID = 1423, x = 74.1, y = 83.8},
    {zoneID = 1423, x = 74.7, y = 58.7},
    {zoneID = 1423, x = 75.6, y = 55.3},
    {zoneID = 1423, x = 75.8, y = 83.3},
    {zoneID = 1423, x = 75.8, y = 83.5},
    {zoneID = 1423, x = 76.1, y = 78.2},
    {zoneID = 1423, x = 76.2, y = 50.4},
    {zoneID = 1423, x = 76.2, y = 50.7},
    {zoneID = 1423, x = 76.6, y = 72.5},
    {zoneID = 1423, x = 78.4, y = 57.4},
    {zoneID = 1423, x = 78.4, y = 57.5},
    {zoneID = 1423, x = 78.5, y = 57.4},
    {zoneID = 1423, x = 78.5, y = 57.5},
    {zoneID = 1423, x = 78.7, y = 67.4},
    {zoneID = 1423, x = 78.9, y = 63.4},
    {zoneID = 1423, x = 79.0, y = 63.5},
    {zoneID = 1423, x = 80.4, y = 59.7},
    {zoneID = 1423, x = 80.5, y = 59.6}
}

BoH.markers = {}
BoH.isVisible = true
BoH.enabled = true
local function ClearMarkers()
    for _, pin in ipairs(BoH.markers) do
        pin:Hide()
    end
    wipe(BoH.markers)
end
local function AddMapMarkers()
    if not BoH.enabled then return end
    local mapID = WorldMapFrame:GetMapID()
    if not mapID then return end
    
    ClearMarkers()
    
    for _, loc in ipairs(BoH.data) do
        if loc.zoneID == mapID then
            local pin = CreateFrame("Frame", nil, WorldMapFrame.ScrollContainer)
            pin:SetSize(16, 16)
            
            pin.texture = pin:CreateTexture(nil, "OVERLAY")
            pin.texture:SetAllPoints()
            
            local texturePath = "Interface\\AddOns\\BloodOfHeroes\\Media\\blood-of-heroes-marker.tga"
            local success = pin.texture:SetTexture(texturePath)
            
            if not success then
                pin.texture:SetTexture("Interface\\Icons\\INV_Misc_Map_01")
            end
            
            local mapWidth, mapHeight = WorldMapFrame.ScrollContainer:GetSize()
            local adjustedX = (loc.x / 100) * mapWidth
            local adjustedY = (-loc.y / 100) * mapHeight
            
            pin:SetPoint("CENTER", WorldMapFrame.ScrollContainer, "TOPLEFT", adjustedX, adjustedY)
            
            pin:SetAlpha(1)
            pin:SetScale(1)
            pin:Show()
            
            table.insert(BoH.markers, pin)
        end
    end
end

local function ShowCurrentMapID()
    local mapID = C_Map.GetBestMapForUnit("player")
    -- print("Current Map ID: " .. (mapID or "Unknown"))
end

BoH.frame:RegisterEvent("PLAYER_LOGIN")
BoH.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
BoH.frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
BoH.frame:RegisterEvent("ZONE_CHANGED")
BoH.frame:RegisterEvent("NEW_WMO_CHUNK")

BoH.frame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" or event == "PLAYER_ENTERING_WORLD" or event == "ZONE_CHANGED_NEW_AREA" or event == "ZONE_CHANGED" or event == "NEW_WMO_CHUNK" then
        C_Timer.After(2, function()
            AddMapMarkers()
            ShowCurrentMapID()
        end)
    end
end)


hooksecurefunc(WorldMapFrame, "SetMapID", function()
    C_Timer.After(0.5, AddMapMarkers)
end)

SLASH_BLOOD1 = "/blood"
SlashCmdList["BLOOD"] = function(msg)
    if msg == "toggle" then
        BoH.enabled = not BoH.enabled
        if BoH.enabled then
            print("|cFF00FF00Blood of Heroes enabled.|r")
            AddMapMarkers()
        else
            print("|cFFFF0000Blood of Heroes disabled.|r")
            ClearMarkers()
        end
    else
        print("|cFFFFAA00Usage: /blood toggle - Enable/Disable markers.|r")
    end
end
