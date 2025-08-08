--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @Rxs
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

Designed by @Rxs
]=]

local CollectionService = game:GetService("CollectionService");
local G2L = {};

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

CollectionService:AddTag(G2L["ScreenGui_1"], [[main]]);

G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["Frame_2"]["BorderSizePixel"] = 0;
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(6, 0, 157);
G2L["Frame_2"]["Size"] = UDim2.new(0.37969, 0, 0.21294, 0);
G2L["Frame_2"]["Position"] = UDim2.new(0.30312, 0, -0.00809, 0);


G2L["Title_3"] = Instance.new("TextLabel", G2L["Frame_2"]);
G2L["Title_3"]["TextWrapped"] = true;
G2L["Title_3"]["BorderSizePixel"] = 0;
G2L["Title_3"]["TextScaled"] = true;
G2L["Title_3"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 250);
G2L["Title_3"]["Size"] = UDim2.new(1, 0, 0.08861, 0);
G2L["Title_3"]["Text"] = [[Hex3n Destroyer]];
G2L["Title_3"]["Name"] = [[Title]];


G2L["UICorner_4"] = Instance.new("UICorner", G2L["Title_3"]);



G2L["Decal spam_5"] = Instance.new("TextButton", G2L["Frame_2"]);
G2L["Decal spam_5"]["BorderSizePixel"] = 0;
G2L["Decal spam_5"]["BackgroundColor3"] = Color3.fromRGB(0, 9, 255);
G2L["Decal spam_5"]["Size"] = UDim2.new(0.2, 0, 0.3, 0);
G2L["Decal spam_5"]["Text"] = [[Decal]];
G2L["Decal spam_5"]["Name"] = [[Decal spam]];
G2L["Decal spam_5"]["Position"] = UDim2.new(0.02881, 0, 0.13924, 0);


G2L["LocalScript_6"] = Instance.new("LocalScript", G2L["Decal spam_5"]);



G2L["Skybox_7"] = Instance.new("TextButton", G2L["Frame_2"]);
G2L["Skybox_7"]["BorderSizePixel"] = 0;
G2L["Skybox_7"]["BackgroundColor3"] = Color3.fromRGB(0, 245, 255);
G2L["Skybox_7"]["Size"] = UDim2.new(0.2, 0, 0.3, 0);
G2L["Skybox_7"]["Text"] = [[Skybox]];
G2L["Skybox_7"]["Name"] = [[Skybox]];
G2L["Skybox_7"]["Position"] = UDim2.new(0.25514, 0, 0.13924, 0);


G2L["LocalScript_8"] = Instance.new("LocalScript", G2L["Skybox_7"]);



G2L["UICorner_9"] = Instance.new("UICorner", G2L["Frame_2"]);



G2L["Important_a"] = Instance.new("TextLabel", G2L["Frame_2"]);
G2L["Important_a"]["TextWrapped"] = true;
G2L["Important_a"]["BorderSizePixel"] = 0;
G2L["Important_a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["Important_a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Important_a"]["BackgroundTransparency"] = 1;
G2L["Important_a"]["Size"] = UDim2.new(0.93416, 0, 0.12658, 0);
G2L["Important_a"]["Text"] = [[More scripts will be added in the future]];
G2L["Important_a"]["Name"] = [[Important]];
G2L["Important_a"]["Position"] = UDim2.new(0.02469, 0, 0.78481, 0);


G2L["UIAspectRatioConstraint_b"] = Instance.new("UIAspectRatioConstraint", G2L["Frame_2"]);
G2L["UIAspectRatioConstraint_b"]["AspectRatio"] = 3.07595;


local function C_6()
	local script = G2L["LocalScript_6"];
	local decalid = "77858581719818"	
	--wait(1)	
	local function spam(root)	
	    for _, v in ipairs(root:GetDescendants()) do	
	        if v:IsA("Part") or v:IsA("MeshPart") then	
	            local decal = Instance.new("Decal",v) decal.Texture = "rbxassetid://"..decalid decal.Face = Enum.NormalId.Front	
	            local decal = Instance.new("Decal",v) decal.Texture = "rbxassetid://"..decalid decal.Face = Enum.NormalId.Back	
	            local decal = Instance.new("Decal",v) decal.Texture = "rbxassetid://"..decalid decal.Face = Enum.NormalId.Left	
	            local decal = Instance.new("Decal",v) decal.Texture = "rbxassetid://"..decalid decal.Face = Enum.NormalId.Right	
	            local decal = Instance.new("Decal",v) decal.Texture = "rbxassetid://"..decalid decal.Face = Enum.NormalId.Top	
	            local decal = Instance.new("Decal",v) decal.Texture = "rbxassetid://"..decalid decal.Face = Enum.NormalId.Bottom	
	        elseif v:IsA("Decal") then	
	            v.Texture = "rbxassetid://"..decalid	
	        elseif v:IsA("ShirtGraphic") then	
	            v.Graphic = "rbxassetid://"..decalid	
	        elseif v:IsA("Shirt") then	
	            v.ShirtTemplate = "rbxassetid://"..decalid	
	        elseif v:IsA("Pants") then	
	            v.PantsTemplate = "rbxassetid://"..decalid	
	        end	
	        spam(v)	
	    end	
	end	
	spam(workspace)	
end;
task.spawn(C_6);
local function C_8()
	local script = G2L["LocalScript_8"];
	local skyboxId = "rbxassetid://77858581719818"
local sky = Instance.new("Sky")

sky.SkyboxBk = skyboxId
sky.SkyboxDn = skyboxId
sky.SkyboxFt = skyboxId
sky.SkyboxLf = skyboxId
sky.SkyboxRt = skyboxId
sky.SkyboxUp = skyboxId

sky.Parent = game:GetService("Lighting")
end;
task.spawn(C_8);

return G2L["ScreenGui_1"], require;
