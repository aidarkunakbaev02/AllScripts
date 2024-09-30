local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/linemaster2/esp-library/main/library.lua"))();











ESP.Enabled = false;



ESP.ShowBox = false;



ESP.ShowName = false;



ESP.ShowHealth = false;



ESP.ShowTracer = false;



ESP.ShowDistance = false;



ESP.ShowSkeletons = false;







    local ESP_SETTINGS = {



        BoxOutlineColor = Color3.new(1, 1, 1),



        BoxColor = Color3.new(1, 1, 1),



        NameColor = Color3.new(1, 1, 1),



        HealthOutlineColor = Color3.new(0, 0, 0),



        HealthHighColor = Color3.new(0, 1, 0),



        HealthLowColor = Color3.new(1, 0, 0),



        CharSize = Vector2.new(4, 6),



        Teamcheck = false,



        WallCheck = false,



        Enabled = false,



        ShowBox = false,



        BoxType = "2D",



        ShowName = false,



        ShowHealth = false,



        ShowDistance = false,



        ShowSkeletons = false,



        ShowTracer = false,



        TracerColor = Color3.new(1, 1, 1), 



        TracerThickness = 2,



        SkeletonsColor = Color3.new(1, 1, 1),



        TracerPosition = "Bottom",



    }





local l = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/dxhooknotify/src.lua", true))()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/Orionlibrary')))()

local Window = OrionLib:MakeWindow({Name = "Onetap Mobile | No Scope Arcade (2021) Free", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})



local Tab = Window:MakeTab({

	Name = "Aim",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})



Tab:AddLabel("Welcome! 😀")



Tab:AddButton({

	Name = "AimBot Small",

	Callback = function()

      		_G.config = {

Fov = 30,

MaxTransparency = 0.1,

Smoothness = 1,

TargetPart = "Head",

TeamCheck = false,

WallCheck = true,

MaxDistanceEnabled = false,

MaxDistance = 1500,

FovColor = Color3.fromRGB(255, 0, 0.)

}



loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/aimbot/main/Projeto%20LKA%20x%20F%20Hub", true))()

l:Notify("Aim loaded!","Aim",3)

  	end    

})



Tab:AddButton({

	Name = "Aim Medium",

	Callback = function()

      		_G.config = {

Fov = 40,

MaxTransparency = 0.1,

Smoothness = 1,

TargetPart = "Head",

TeamCheck = false,

WallCheck = true,

MaxDistanceEnabled = false,

MaxDistance = 1500,

FovColor = Color3.fromRGB(255, 0, 0.)

}



loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/aimbot/main/Projeto%20LKA%20x%20F%20Hub", true))()

l:Notify("Aim loaded!","Aim",3)

  	end    

})



Tab:AddButton({

	Name = "Aim Big",

	Callback = function()

      		_G.config = {

Fov = 50,

MaxTransparency = 0.1,

Smoothness = 1,

TargetPart = "Head",

TeamCheck = false,

WallCheck = true,

MaxDistanceEnabled = false,

MaxDistance = 1500,

FovColor = Color3.fromRGB(255, 0, 0.)

}



loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/aimbot/main/Projeto%20LKA%20x%20F%20Hub", true))()

l:Notify("Aim loaded!","Aim",3)

  	end    

})





Tab:AddButton({

	Name = "Aim 140",

	Callback = function()

      		_G.config = {

Fov = 140,

MaxTransparency = 0.1,

Smoothness = 1,

TargetPart = "Head",

TeamCheck = false,

WallCheck = true,

MaxDistanceEnabled = false,

MaxDistance = 1500,

FovColor = Color3.fromRGB(255, 0, 0.)

}



loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/aimbot/main/Projeto%20LKA%20x%20F%20Hub", true))()

l:Notify("Aim loaded!","Aim",3)

  	end    

})



Tab:AddButton({

	Name = "Aim 360 Fov LoL",

	Callback = function()

      		_G.config = {

Fov = 360,

MaxTransparency = 0.1,

Smoothness = 1,

TargetPart = "Head",

TeamCheck = false,

WallCheck = true,

MaxDistanceEnabled = false,

MaxDistance = 1500,

FovColor = Color3.fromRGB(255, 0, 0.)

}



loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/aimbot/main/Projeto%20LKA%20x%20F%20Hub", true))()

l:Notify("Aim loaded!","Aim",3)

  	end    

})



Tab:AddButton({

	Name = "Bhop",

	Callback = function()

      		local player = game.Players.LocalPlayer

local humanoid = player.Character and player.Character:WaitForChild("Humanoid")



-- Function to make the character jump

local function autoJump()

    while true do

        wait(0) -- Adjust the time interval between jumps (in seconds)



        if humanoid then

            humanoid.Jump = true

        end

    end

end



-- Call the function to start automatic jumping

autoJump()

  	end    

})



local Tab = Window:MakeTab({

	Name = "Visual",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})



Tab:AddToggle({

	Name = "Enable Esp",

	Default = false,

	Callback = function(Value)

		ESP.Enabled = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Name Enemy",

	Default = false,

	Callback = function(Value)

		ESP.ShowName = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Box Enemy",

	Default = false,

	Callback = function(Value)

		ESP.ShowBox = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Tracers Enemy",

	Default = false,

	Callback = function(Value)

		ESP.ShowTracer = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Health Enemy",

	Default = false,

	Callback = function(Value)

		ESP.ShowHealth = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Enemy Skeleton",

	Default = false,

	Callback = function(Value)

		ESP.ShowSkeletons = Value;

	end    

})







Tab:AddDropdown({

	Name = "Esp box Type",

	Default = "2D",

	Options = {"2D", "Corner Box Esp"},

	Callback = function(Value)

		 ESP.BoxType = Value

	end    

})



Tab:AddDropdown({

	Name = "Tracer position",

	Default = "Bottom",

	Options = {"Bottom", "Top", "Middle"},

	Callback = function(Value)

		ESP.TracerPosition = Value;

	end    

})



local Tab = Window:MakeTab({

	Name = "Credits",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})



Tab:AddLabel("Made By Aidar#2500")

Tab:AddLabel("Source modded by thaibao7444")

Tab:AddLabel("Onetap Free V1 Mobile")



OrionLib:Init()



















