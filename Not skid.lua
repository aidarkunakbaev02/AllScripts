-------------Orion Library--------------
----///Hey!///Why You Here?///This is for counter Blox project (rage cheat)///-------

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


Tab:AddToggle({
	Name = "TeamCheck",
	Default = false,
	Callback = function(Value)
		ESP.Teamcheck = Value;	
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
