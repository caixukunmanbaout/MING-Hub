--我就一个破翻译的还要看我源码
if game.GameId == 847722000 then
	if getgenv().RakeGui then
		return
	end

	if syn then
		game.StarterGui:SetCore("SendNotification", {
			Title = "SYF",
			Text = "只是翻译",
			Duration = 5
		})
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "SYF",
			Text = "只是翻译",
			Duration = 5
		})
	end


	local Me = {
		LocalPlayer = game.Players.LocalPlayer,
		Character = game.Players.LocalPlayer.Character,
	}




	local AllowRunService = true

	-- Stamina Table
    --[[
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" then
            if rawget(v,"stamina") then
                _G.StaminaTable = v
            end
        end
    end
    ]]

	local HidePart = Instance.new("Part")
	HidePart.Size = Vector3.new(20,1000,20)
	HidePart.Parent = workspace
	HidePart.Position = Vector3.new(0,10000,0)
	HidePart.Anchored = true

	local HidePartHightLight = Instance.new("Highlight")
	HidePartHightLight.Name = "HidePartHightLight"
	HidePartHightLight.FillColor = Color3.new(255,255,255)
	HidePartHightLight.OutlineColor = Color3.new(170,0,0)
	HidePartHightLight.FillTransparency = .8
	HidePartHightLight.OutlineTransparency = .8
	HidePartHightLight.Parent = HidePart

	
	local function getHum()
		if game:FindService("Players").LocalPlayer and game:FindService("Players").LocalPlayer.Character and game:FindService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
			return game:FindService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		else
			return false
		end
	end
	
	local function GET_HRP()
		if not game.Players.LocalPlayer.Character then

		else
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				return game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			end
		end
		return nil
	end

	local function SET_HRP_CFRAME(cframer : CFrame)
		GET_HRP().CFrame = cframer	
	end




	local function openhousedoor()
		for i = 1,1 do
			local lastpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame

			SET_HRP_CFRAME(game:FindService("Workspace").Map.SafeHouse.Door.Door.CFrame+Vector3.new(0,-7,0))
			wait()
			GET_HRP().Anchored = true
			wait(.4)
			local ohString1 = "Door"

			workspace.Map.SafeHouse.Door.RemoteEvent:FireServer(ohString1)
			wait(.4)
			SET_HRP_CFRAME(lastpos)
			wait()
			GET_HRP().Anchored = false
			wait(.4)
		end
	end

	local function MOUSETP()
		local mouse = game.Players.LocalPlayer:GetMouse()

		local tweenService = game:FindService("TweenService")
		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local part = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		local goal = {CFrame = CFrame.new(mouse.Hit.Position)}
		local tween = tweenService:Create(part, tweenInfo, goal)
		tween:Play()
	end

	local function opencrate()
		local ohString1 = "Open"
		local ohBoolean2 = true

		game:FindService("ReplicatedStorage").SupplyClientEvent:FireServer(ohString1, ohBoolean2)
	end

	local function aigoto(pos : Vector3)
		local path = game:FindService("PathfindingService"):CreatePath()

		path:ComputeAsync(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,pos)

		local waypoints = path:GetWaypoints()

		for i,v in pairs(waypoints) do
			getHum():MoveTo(v.Position)
		end
	end


	local function restorepower()
		local lastpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
		wait()
		for i = 1,1000 do
			SET_HRP_CFRAME(CFrame.new(-280.808014, 20.3924561, -212.159821, -0.10549771, -1.16743761e-08, -0.994419575, 9.45945828e-08, 1, -2.17754046e-08, 0.994419575, -9.63639621e-08, -0.10549771))
		end
		GET_HRP().Anchored = true
		wait()
		local ohString1 = "StationStart"

		workspace.Map.PowerStation.StationFolder.RemoteEvent:FireServer(ohString1)
		wait(20)
		GET_HRP().Anchored = false
	end



	local function airdropchams(mode)
		if tostring(mode) == "Enable" then
			if game:FindService("Workspace").Debris.SupplyCrates:FindFirstChild("Box") then
				if game:FindService("Workspace").Debris.SupplyCrates.Box:FindFirstChild("SleepyDropChams") then

				else
					local chams = Instance.new("Highlight")
					chams.FillColor = Color3.new(0.317647, 1, 0)
					chams.OutlineColor = Color3.new(0, 1, 0.250980)
					chams.Parent = game:FindService("Workspace").Debris.SupplyCrates.Box
					chams.Adornee = game:FindService("Workspace").Debris.SupplyCrates.Box
					chams.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					chams.OutlineTransparency = 0
					chams.FillTransparency = 1
					chams.Name = "SleepyDropChams"
				end
			end
		elseif tostring(mode) == "Disable" then
			for i,v in pairs(game:FindService("Workspace").Debris.SupplyCrates:GetDescendants()) do
				if v.Name == "SleepyDropChams" then
					v:Remove()
				end
			end		
		end

	end

	local function rakechams()
		if game.Workspace:FindFirstChild("Rake") then
			if game.Workspace.Rake:FindFirstChild("SleepyRakeChams") then

			else
				local chams = Instance.new("Highlight")
				chams.FillColor = Color3.new(170, 0, 0)
				chams.OutlineColor = Color3.new(255,255,255)
				chams.Parent = game.Workspace.Rake
				chams.Adornee = game.Workspace.Rake
				chams.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				chams.OutlineTransparency = .9
				chams.FillTransparency = 0.5
				chams.Name = "SleepyRakeChams"
			end

		end

	end

	local function disablerakechams()
		if game.Workspace:FindFirstChild("Rake") then
			for i,v in pairs(game.Workspace:FindFirstChild("Rake"):GetDescendants()) do
				if v.Name == "SleepyRakeChams" then
					v:Destroy()
				end
			end
		end
	end



	local RunService = game:FindService("RunService")
	local InputService = game:FindService("UserInputService")
	local FreeCamPart = Instance.new("Part")
	FreeCamPart.Anchored = true
	FreeCamPart.Size = Vector3.new(1,1,1)
	FreeCamPart.Parent = workspace
	FreeCamPart.CFrame = CFrame.new(0,10000,0)
	FreeCamPart.Transparency = 1
	FreeCamPart.Name = "FreeCamPart"





	pcall(function() getgenv().RakeGui = true end)


	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/ltseverydayyou/Rayfield-backup/main/Rayfield'))()


	local Window = Rayfield:CreateWindow({
		Name = "Project [SYF汉化]",
		LoadingTitle = "Project [SYF汉化]",
		LoadingSubtitle = "SYF Hub",
		ConfigurationSaving = {
			Enabled = true,
			FolderName = "ProjectTheRake",
			FileName = "Project"
		}
	})

	--Tabs
	local PlayerTab = Window:CreateTab("玩家", 7743866529)
	local ClientTab = Window:CreateTab("显示", 7733779610)
	local ExploitsTab = Window:CreateTab("高级", 7733798747)
	local SettingsTab = Window:CreateTab("设置", 7743878358)

	ClientTab:CreateToggle({
		Name = "自由视角",
		CurrentValue = false,
		Flag = "自由视角",
		Callback = function(state)
			_G.FreeCam = state
			if _G.FreeCam == true then
				pcall(function()

					FreeCamPart.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
				end)
				repeat wait()
					pcall(function()
						function tweenPart(time,partto,TSCF)
							local tweenService = game:FindService("TweenService")
							local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
							local part = partto
							local goal = {}
							goal.CFrame = TSCF
							local tween = tweenService:Create(part, tweenInfo, goal)
							tween:Play()
						end
						game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
						local mouse = game.Players.LocalPlayer:GetMouse()
						game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
						game.Workspace.CurrentCamera.CameraSubject = FreeCamPart

						FreeCamPart.CFrame = CFrame.new(FreeCamPart.Position,mouse.Hit.Position)
						if InputService:IsKeyDown(Enum.KeyCode.Space) then
							tweenPart(0.04,FreeCamPart,FreeCamPart.CFrame + Vector3.new(0,_G.FreeCamSpeed,0))
							--FreeCamPart.CFrame = FreeCamPart.CFrame + Vector3.new(0,_G.FreeCamSpeed,0)
						elseif InputService:IsKeyDown(Enum.KeyCode.LeftShift) then
							tweenPart(0.04,FreeCamPart,FreeCamPart.CFrame + Vector3.new(0,-_G.FreeCamSpeed,0))
							--FreeCamPart.CFrame = FreeCamPart.CFrame + Vector3.new(0,-_G.FreeCamSpeed,0)
						end
						if true then
							if InputService:IsKeyDown(Enum.KeyCode.W) then
								tweenPart(0.04,FreeCamPart,FreeCamPart.CFrame+FreeCamPart.CFrame.LookVector * _G.FreeCamSpeed)
								-- FreeCamPart.CFrame = FreeCamPart.CFrame+FreeCamPart.CFrame.LookVector * _G.FreeCamSpeed
							elseif InputService:IsKeyDown(Enum.KeyCode.S) then
								tweenPart(0.04,FreeCamPart,FreeCamPart.CFrame+FreeCamPart.CFrame.LookVector * -_G.FreeCamSpeed)
								-- FreeCamPart.CFrame = FreeCamPart.CFrame+FreeCamPart.CFrame.LookVector * -_G.FreeCamSpeed
							end
						end
					end)
				until _G.FreeCam == false
				pcall(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
					game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
					game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Head
				end)
			end
		end,
	})

	ClientTab:CreateSlider({
		Name = "速度",
		Range = {0.01, 20},
		Increment = 0.01,
		CurrentValue = 0.2,
		Flag = "速度",
		Callback = function(Value)
			_G.FreeCamSpeed = Value
		end,
	})

	ClientTab:CreateToggle({
		Name = "没有雾",
		CurrentValue = false,
		Flag = "没有雾",
		Callback = function(state)
			_G.NoFog = state
			if state == false then
				game:FindService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value = 75
			end
		end,
	})

	-- no fog

	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			if _G.NoFog == true then
				game:FindService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value = 9e9
			end
		end
	end)

	ClientTab:CreateButton({
		Name = "第三人称",
		Callback = function()
			game.Players.LocalPlayer.Character.RagdollTime.RagdollSwitch.Value = true
			game.Players.LocalPlayer.Character.RagdollTime.RagdollSwitch.Value = false
		end,
	})



	PlayerTab:CreateToggle({
		Name = "无限体力",
		CurrentValue = false,
		Flag = "无限体力",
		Callback = function(state)
			_G.InfStamina = state
			if _G.InfStamina == true then
				for i,v in pairs(getgc(true)) do
					if type(v) == "table" then
						if rawget(v,"STAMINA_REGEN") then
							v.STAMINA_REGEN = 100
							v.JUMP_STAMINA = 0
							v.JUMP_COOLDOWN = 0
							v.STAMINA_TAKE = 0
							v.stamina = 100
						end
					end
				end
			end
		end,
	})

	PlayerTab:CreateToggle({
		Name = "夜视",
		CurrentValue = false,
		Flag = "夜视",
		Callback = function(state)
			_G.InfNightVision = state
			if _G.InfNightVision == true then
				for i,v in pairs(getgc(true)) do
					if type(v) == "table" then
						if rawget(v,"NVG_TAKE") then
							v.NVG_TAKE = 0
							v.NVG_REGEN = 100
						end
					end
				end                
			end
		end,
	})

	local RakeKillauraToggle = ExploitsTab:CreateToggle({
		Name = "Rake杀死光环",
		CurrentValue = false,
		Flag = "Rake杀死光环",
		Callback = function(state)
			_G.RakeKillAura = state
			Rayfield:Notify({
				Title = "Rake杀死光环",
				Content = "Rake Killaura : "..tostring(_G.RakeKillAura),
				Duration = 1,
				Image = 4483362458,
			})
			if _G.RakeKillAura == true then
				repeat wait()
					pcall(function()
						for i,v in pairs(game.Workspace:GetChildren()) do
							if game.Workspace:FindFirstChild("Rake") then
								if (game.Workspace.Rake.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 200 then
									game.Players.LocalPlayer.Character.StunStick.Event:FireServer("")
									wait()
									game.Players.LocalPlayer.Character.StunStick.Event:FireServer("", workspace.Rake.HumanoidRootPart)	
								end
							end
						end
						wait(.1)
					end)
				until _G.RakeKillAura == false
			end
		end,
	})

	-- rake killaura hitpart 
	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			if _G.RakeKillAura == true then
				pcall(function()
					if game.Workspace:FindFirstChild("Rake") then
						game.Players.LocalPlayer.Character.StunStick.HitPart.Position = game.Workspace:FindFirstChild("Rake").HumanoidRootPart.Position
					end
				end)
			end
		end
	end)



	-- rake killaura bind

	ExploitsTab:CreateKeybind({
		Name = "切换杀死光环",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "切换杀死光环",
		Callback = function(state)
			if _G.RakeKillAura == true then
				RakeKillauraToggle:Set(false)
			elseif _G.RakeKillAura == false then
				RakeKillauraToggle:Set(true)
			end
		end,
	})

	ClientTab:CreateToggle({
		Name = "Rake的位置",
		CurrentValue = false,
		Flag = "Rake的位置",
		Callback = function(state)
			_G.RakeChams = state
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v.Name == "Rake" then
					v:SetAttribute("hasESP",false)
				end
			end
			if _G.RakeChams == true then
				repeat wait()

				until _G.RakeChams == false
			elseif _G.RakeChams == false then
				if game.Workspace:FindFirstChild("Rake") then
					if game.Workspace:FindFirstChild("Rake"):FindFirstChild("RakeChams") then
						game.Workspace:FindFirstChild("Rake"):FindFirstChild("RakeChams"):Remove()
					end
				end
			end
		end,
	})

	ClientTab:CreateToggle({
		Name = "玩家的位置",
		CurrentValue = false,
		Flag = "玩家的位置",
		Callback = function(state)
			_G.PlayerESP = state
			if _G.PlayerESP == true then
				repeat wait()

				until _G.PlayerESP == false
				for i,v in pairs(game:FindService("Players"):GetPlayers()) do
					pcall(function()
						if not v.Character then
						else
							if v.Character:GetAttribute("PlayerESP") == true then
								v.Character:SetAttribute("PlayerESP",false)
							end
							if v.Character:FindFirstChild("PlayerChams") then
								v.Character.PlayerChams:Remove()

							end
						end
					end)
				end
			end
		end,
	})

	ClientTab:CreateToggle({
		Name = "显示走路距离",
		CurrentValue = false,
		Flag = "显示走路距离",
		Callback = function(state)
			_G.PlayerESPShowDistance = state
		end,
	})

	ExploitsTab:CreateButton({
		Name = "吸废铁",
		Callback = function()
			for i,v in pairs(game.Workspace.Filter.ScrapSpawns:GetDescendants()) do
				if v.Name:lower() == "scrap" then
					v:PivotTo(game.Players.LocalPlayer.Character:GetPivot())
				end
			end
		end,
	})

	ClientTab:CreateToggle({
		Name = "信号枪的位置",
		CurrentValue = false,
		Flag = "信号枪的位置",
		Callback = function(state)
			_G.FlareGunESP = state
			if _G.FlareGunESP == false then
				if game:FindService("Workspace"):FindFirstChild("FlareGunPickUp") then
					game:FindService("Workspace"):FindFirstChild("FlareGunPickUp"):SetAttribute("FlareGunESP",false)
				end
				for i,v in pairs(game.Workspace:GetChildren()) do
					if v.Name == "FlareGunPickUp" then
						if v:FindFirstChild("FlareGunChams") then
							v.FlareGunChams:Remove()
						end
					end
				end
			end
		end,
	})

	ClientTab:CreateToggle({
		Name = "空投的位置",
		CurrentValue = false,
		Flag = "空投的位置",
		Callback = function(state)
			_G.SupplyDropESP = state
			for i,v in pairs(game:FindService("Workspace").Debris.SupplyCrates:GetChildren()) do
				v:SetAttribute("空投",false)
			end
		end,
	})



	-- Flare Gun ESP 

	game:FindService("RunService").Heartbeat:Connect(function(deltaTime)
		if AllowRunService == true then
			if _G.FlareGunESP == true then
				if game:FindService("Workspace"):FindFirstChild("FlareGunPickUp") then
					if game:FindService("Workspace"):FindFirstChild("FlareGunPickUp"):GetAttribute("FlareGunESP") == true then

					else
						game:FindService("Workspace"):FindFirstChild("FlareGunPickUp"):SetAttribute("FlareGunESP",true)
						local esp = Drawing.new("Text")
						esp.Text = "信号枪"
						esp.Color = Color3.fromRGB(0, 225, 255)
						esp.Outline = false
						esp.Center = true
						esp.Font = 25
						esp.Size = 25
						esp.Visible = true
						game:FindService("RunService").Heartbeat:Connect(function()
							if AllowRunService == true then
								if _G.FlareGunESP == true then
									if game:FindService("Workspace"):FindFirstChild("FlareGunPickUp") then
										local cam = workspace.CurrentCamera
										local Pos,OnScreen = cam:WorldToViewportPoint(game:FindService("Workspace").FlareGunPickUp.FlareGun.Position)
										if OnScreen then
											esp.Visible = true
											esp.Position = Vector2.new(Pos.X,Pos.Y)
										else
											esp.Visible = false
										end
									else
										esp.Visible = false
									end
								else
									esp.Visible = false 
								end
							else
								esp.Visible = false
							end
						end)
					end
					for i,v in pairs(game.Workspace:GetChildren()) do
						if v.Name == "FlareGunPickUp" then
							if v:FindFirstChild("FlareGunChams") then
								v.FlareGunChams.Enabled = true
							else
								local FlareGunChams = Instance.new("Highlight")
								FlareGunChams.Parent = v
								FlareGunChams.Enabled = true
								FlareGunChams.Adornee = v
								FlareGunChams.FillColor = Color3.fromRGB(255, 0, 0)
								FlareGunChams.FillTransparency = 0.3
								FlareGunChams.OutlineTransparency = .8
								FlareGunChams.OutlineColor = Color3.fromRGB(170,170,170)
								FlareGunChams.Name = "FlareGunChams"
							end
						end
					end
				end 
			end
		end
	end)

	-- Rake Chams 



	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			if _G.RakeChams == true then
				for i,v in pairs(game.Workspace:GetChildren()) do
					if v.Name == "Rake" then
						if v:FindFirstChild("RakeChams") then
							v.RakeChams.Enabled = true
						else
							local RakeChams = Instance.new("Highlight")
							RakeChams.Parent = v
							RakeChams.Adornee = v
							RakeChams.FillColor = Color3.fromRGB(170,0,0)
							RakeChams.OutlineColor = Color3.fromRGB(255,255,255)
							RakeChams.FillTransparency = .3
							RakeChams.OutlineTransparency =.9
							RakeChams.Name = "RakeChams" -- add chams
						end
					end
				end
				for i,v in pairs(game.Workspace:GetChildren()) do
					if v.Name == "Rake" then
						if v:GetAttribute("hasESP") == true then

						else
							v:SetAttribute("hasESP",true) do
								local ESP = Drawing.new("Text")
								ESP.Center = true
								ESP.Outline = false
								ESP.Text = v.Name
								ESP.Font = 25
								ESP.Size = 25
								ESP.Color = Color3.fromRGB(255, 0, 0)
								ESP.Visible = true
								game:FindService("RunService").Heartbeat:Connect(function()
									pcall(function()
										if AllowRunService == true then
											if _G.RakeChams == true then
												if game.Workspace:FindFirstChild(v.Name) then
													local cam = workspace.CurrentCamera
													local Pos,OnScreen = cam:WorldToViewportPoint(v.Head.Position)
													if OnScreen then
														ESP.Text = tostring(v)..""tostring(v.Monster.Health)
														ESP.Visible = true
														ESP.Position = Vector2.new(Pos.X,Pos.Y)
													else
														ESP.Visible = false
													end
												else
													ESP.Visible = false
												end
											else
												ESP.Visible = false
											end
										else
											ESP.Visible = false
										end
									end)
								end)
							end
						end
					end
				end
			end
		end
	end)


	-- Player Esp 

	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			if _G.PlayerESP == true then
				for i,v in pairs(game:FindService("Players"):GetPlayers()) do
					if v.Name ~= game.Players.LocalPlayer.Name then
						if not v.Character then

						else
							if v.Character:FindFirstChild("Head") then
								if v.Character:GetAttribute("PlayerESP") == true then

								else
									local ESP = Drawing.new("Text")
									ESP.Center = true
									ESP.Outline = false
									ESP.Color = Color3.fromRGB(0, 255, 34)
									ESP.Size = 18
									ESP.Font = 18
									ESP.Text = v.Name.." [当前距离: "..tostring(v.DistanceTravelled.Value).."]"
									ESP.Visible = false

									v.Character:SetAttribute("PlayerESP",true)
									game:FindService("RunService").Heartbeat:Connect(function()
										pcall(function()
											if AllowRunService == true then
												if _G.PlayerESP == true then
													if game:FindService("Players"):FindFirstChild(tostring(v.Name)) then
														local cam = workspace.CurrentCamera
														local Pos,OnScreen = cam:WorldToViewportPoint(v.Character.Head.Position)
														if OnScreen then
															ESP.Visible = true
															ESP.Position = Vector2.new(Pos.X,Pos.Y)
															if _G.PlayerESPShowDistance == true then
																ESP.Text = v.Name.." [当前距离: "..tostring(v.DistanceTravelled.Value).."]"
															else
																ESP.Text = v.Name
															end
														else
															ESP.Visible = false
														end
													else
														ESP.Visible = false
													end
												else
													ESP.Visible = false 
												end
											else
												ESP.Visible = false
											end
										end)
									end)

								end
							end
						end
					end
				end      
				for i,v in pairs(game.Players:GetPlayers()) do
					if not v.Character then 
					else
						if v.Name ~= game.Players.LocalPlayer.Name then
							if v.Character:FindFirstChild("PlayerChams") then
								v.Character.PlayerChams.Enabled = true
							else
								local PlayerChams = Instance.new("Highlight")
								PlayerChams.Parent = v.Character
								PlayerChams.Enabled = true
								PlayerChams.Adornee = v.Character
								PlayerChams.FillColor = Color3.fromRGB(0, 11, 170)
								PlayerChams.FillTransparency = 0.3
								PlayerChams.OutlineTransparency = .8
								PlayerChams.OutlineColor = Color3.fromRGB(170,170,170)
								PlayerChams.Name = "PlayerChams"
							end
						end
					end
				end
			end

		end
	end)

	-- SupplyDrop ESP

	game:FindService("RunService").Heartbeat:Connect(function(deltaTime)
		if AllowRunService == true then
			if _G.SupplyDropESP == true then
				for i,v in pairs(game:FindService("Workspace").Debris.SupplyCrates:GetChildren()) do
					if v.Name == "Box" then
						if v:GetAttribute("SupplyDropESP") == true then

						else

							v:SetAttribute("SupplyDropESP",true) 
							local ESP = Drawing.new("Text")
							ESP.Color = Color3.fromRGB(251, 255, 0)
							ESP.Outline = false
							ESP.Size = 25
							ESP.Font = 25
							ESP.Text = "空投"
							ESP.Visible = true
							ESP.Center = true
							game:FindService("RunService").Heartbeat:Connect(function()
								pcall(function()
									if AllowRunService == true then
										if _G.SupplyDropESP == true then

											if game:FindService("Workspace").Debris.SupplyCrates:FindFirstChild(v.Name) then
												local cam = workspace.CurrentCamera
												local Pos,OnScreen = cam:WorldToViewportPoint(v.HitBox.Position)
												if OnScreen then

													ESP.Visible = true
													ESP.Position = Vector2.new(Pos.X,Pos.Y)
												else

													ESP.Visible = false
												end
											else
												ESP.Visible = false
											end
										else
											ESP.Visible = false
										end
									else
										ESP.Visible = false
									end
								end)
							end)
						end
					end
				end

			end
		end
	end)




	-- Location ESP 


	local Locations = {
		["发电厂"] = {
			["Position"] = Vector3.new(-281.6848449707031, 21.50823974609375, -212.7472686767578),
			["hasESP"] = false,
		},
		["安全屋"] = {
			["Position"] = Vector3.new(-363.491, 16.8744, 70.3037),
			["hasESP"] = false,
		},
		["大本营"] = {
			["Position"] = Vector3.new(-70.7132568359375, 17.61418914794922, 209.00674438476562),
			["hasESP"] = false,
		},
		["商店"] = {
			["Position"] = Vector3.new(-25.1567, 17.2076, -258.362),
			["hasESP"] = false
		}
	}

	ClientTab:CreateToggle({
		Name = "位置",
		CurrentValue = false,
		Flag = "位置",
		Callback = function(state)
			_G.LocationESP = state
			if _G.LocationESP == false then
				for i,v in pairs(Locations) do
					if v.hasESP == true then
						v.hasESP = false
					end
				end
			end
		end,
	})

	game:FindService("RunService").Heartbeat:Connect(function(deltaTime)
		if AllowRunService == true then
			if _G.LocationESP == true then
				for i,v in pairs(Locations) do
					if v.hasESP == true then

					else
						v.hasESP = true
						local ESP = Drawing.new("Text")
						ESP.Size = 25
						ESP.Color = Color3.fromRGB(255, 136, 0)
						ESP.Font = 25
						ESP.Text = tostring(i)
						ESP.Visible = true
						ESP.Center = true
						ESP.Outline = false
						game:FindService("RunService").Heartbeat:Connect(function()
							if AllowRunService == true then
								if _G.LocationESP == true then
									local cam = workspace.CurrentCamera
									local Pos,OnScreen = cam:WorldToViewportPoint(v.Position)
									if OnScreen then
										ESP.Visible = true
										ESP.Text = "「建筑」 "..tostring(i)
										ESP.Position = Vector2.new(Pos.X,Pos.Y)
									else
										ESP.Visible = false
									end
								else
									ESP.Visible = false
								end
							else
								ESP.Visible = false
							end
						end)
					end
				end 
			end
		end
	end)

	-- Scrap ESP

	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			if _G.ScrapESP == true then
				for i,v in pairs(game.Workspace.Filter.ScrapSpawns:GetDescendants()) do
					if v.Name == "Scrap" then
						if v:GetAttribute("ScrapESP") == true then
						else
							v:SetAttribute("ScrapESP",true)
							local ScrapESP = Drawing.new("Text")
							ScrapESP.Center = true
							ScrapESP.Outline = false
							ScrapESP.Color = Color3.fromRGB(77, 35, 1)
							ScrapESP.Size = 25
							ScrapESP.Font = 25
							ScrapESP.Text = "废金属"..""..tostring(v.Parent.PointsVal.Value).."积分 第"..tostring(v.Parent.LevelVal.Value).."级"
							ScrapESP.Visible = false
							game:FindService("RunService").Heartbeat:Connect(function()
								if AllowRunService == true then
									if v.Parent == nil then
										ScrapESP.Visible = false
									else
										local cam = workspace.CurrentCamera
										local Vec3,OnScreen = cam:WorldToViewportPoint(v.Position)

										if OnScreen then
											if _G.ScrapESP == true then
												ScrapESP.Visible = true
												ScrapESP.Position = Vector2.new(Vec3.X,Vec3.Y)
											else
												ScrapESP.Visible = false
											end
										else
											ScrapESP.Visible = false
										end
									end
								else
									ScrapESP.Visible = false
								end
							end)
						end
					end
				end
				for i,v in pairs(game.Workspace.Filter.ScrapSpawns:GetDescendants()) do
					if v.Name == "Scrap" then
						if v:FindFirstChild("ScrapChams") then
							v.ScrapChams.Enabled = true
						else
							local ScrapChams = Instance.new("Highlight")
							ScrapChams.Parent = v
							ScrapChams.Adornee = v
							ScrapChams.FillColor = Color3.fromRGB(77, 35, 1)
							ScrapChams.FillTransparency = 0
							ScrapChams.OutlineTransparency = 0
							ScrapChams.OutlineColor = Color3.fromRGB(170,170,170)
							ScrapChams.Name = "ScrapChams"
						end
					end
				end
			end
		end
	end)

	ClientTab:CreateToggle({
		Name = "废铁的位置",
		CurrentValue = false,
		Flag = "废铁的位置",
		Callback = function(state)
			_G.ScrapESP = state
			if _G.ScrapESP == true then
				repeat wait()

				until _G.ScrapESP == false
				for i,v in pairs(game:FindService("Workspace").Filter.ScrapSpawns:GetDescendants()) do
					pcall(function()
						if v.Name == "ScrapChams" then
							v:Remove()
						end                        
						if v:GetAttribute("ScrapESP") == true then
							v:SetAttribute("ScrapESP",false)
						end
					end)
				end
			elseif _G.ScrapESP == false then
				for i,v in pairs(game:FindService("Workspace").Filter.ScrapSpawns:GetDescendants()) do
					pcall(function()
						if v.Name == "ScrapChams" then
							v:Remove()
							v:SetAttribute("ScrapESP",false)
						end
					end)
				end
				for i,v in pairs(game.Workspace.Filter.ScrapSpawns:GetDescendants()) do
					pcall(function()
						if v:GetAttribute("ScrapESP") == true then
							v:SetAttribute("ScrapESP",false)
						end
					end)
				end
			end
		end,
	})

	ExploitsTab:CreateButton({
		Name = "删除空气墙",
		Callback = function()
			for i,v in pairs(game:FindService("Workspace").Filter.InvisibleWalls:GetChildren()) do
				if v.Name:lower() == "invisiblewall" or v.Name:lower() == "invis" then
					v:Remove()
				end
			end
		end,
	})

	ExploitsTab:CreateToggle({
		Name = "隐藏",
		CurrentValue = false,
		Flag = "隐藏",
		Callback = function(state)
			if state == true then
				if GET_HRP() ~= nil then
					GET_HRP().Anchored = false
					for i = 1,10 do
						local lastY = GET_HRP().Position.Y
						
						GET_HRP().CFrame = CFrame.new(GET_HRP().Position) + Vector3.new(0,5,0)
						wait()
						GET_HRP().CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) + Vector3.new(0,-5,0)
					end
					GET_HRP().CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) + Vector3.new(0,-15,0)
					wait()
					GET_HRP().Anchored = true
					HidePart.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-505,0)
					HidePartHightLight.Adornee = HidePart	
					HidePartHightLight.Parent = HidePart	
				end
			elseif state == false then
				if GET_HRP() ~= nil then
					GET_HRP().Anchored = false
					for i = 1,10 do
						local lastY = GET_HRP().Position.Y

						GET_HRP().CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) + Vector3.new(0,5,0)
						wait()
						GET_HRP().CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) + Vector3.new(0,-5,0)
					end
					GET_HRP().CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) + Vector3.new(0,15,0)
					wait()

					GET_HRP().Anchored = false
					HidePartHightLight.Adornee = nil	
					HidePartHightLight.Parent = nil		 
				end	
			end
		end,
	})

	PlayerTab:CreateToggle({
		Name = "没有坠落伤害",
		CurrentValue = false,
		Flag = "没有坠落伤害",
		Callback = function(state)
			_G.NoFallDMG = state
		end,
	})

	PlayerTab:CreateSlider({
		Name = "视野",
		Range = {0, 120},
		Increment = 1,
		CurrentValue = 70,
		Flag = "视野",
		Callback = function(state)
			_G.FieldOfView=state
		end,
	})

	PlayerTab:CreateToggle({
		Name = "视野",
		CurrentValue = false,
		Flag = "视野",
		Callback = function(state)
			_G.enableFOV = state
		end,
	})
	
	PlayerTab:CreateSlider({
		Name = "肘路速度",
		Range = {0, 30},
		Increment = 1,
		CurrentValue = 16,
		Flag = "走路速度",
		Callback = function(state)
			_G.WalkSpeedd=state
		end,
	})

	PlayerTab:CreateToggle({
		Name = "走路速度",
		CurrentValue = false,
		Flag = "走路速度",
		Callback = function(state)
			_G.enableSpeed = state
		end,
	})

	-- no fall damage hook

	local mt = getrawmetatable(game)
	local namecall = mt.__namecall
	setreadonly(mt, false)

	mt.__namecall = function(self,...)
		if _G.NoFallDMG == true then
			local args = {...}
			local method = getnamecallmethod()

			if tostring(self) == "FD_Event" then
				args[1] = 0
				args[2] = 0
				return self.FireServer(self,unpack(args))
			end 
		end
		return namecall(self,...)
	end

	ExploitsTab:CreateToggle({
		Name = "抢空投大手子",
		CurrentValue = false,
		Flag = "抢空投大手子",
		Callback = function(state)
			_G.InstaOpenSupplyDrop = state
		end,
	})

	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			if _G.InstaOpenSupplyDrop == true then
				pcall(function()
					for i,v in pairs(game:FindService("Workspace").Debris.SupplyCrates.Box.GUIPart.ProximityPrompt:GetAttributes()) do


						game:FindService("Workspace").Debris.SupplyCrates.Box.GUIPart.ProximityPrompt:SetAttribute(tostring(i),false)

					end
					game:FindService("Workspace").Debris.SupplyCrates.Box.UnlockValue.Value = 100
				end)
			end
		end
	end)

	game:FindService("RunService").RenderStepped:Connect(function()
		if AllowRunService then
			if _G.enableFOV == true then
				local num = _G.FieldOfView
				local hh=game:FindService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0, Enum.EasingStyle.Linear), {FieldOfView=tonumber(num)})
				hh:Play()
			end
		end
	end)
	
	game:FindService("RunService").RenderStepped:Connect(function()
		if AllowRunService then
			local spedyy = _G.WalkSpeedd
			if _G.enableSpeed == true and getHum() then
				getHum().WalkSpeed = tonumber(spedyy)
			end
		end
	end)

	function DestroyUI()
		AllowRunService = false
		FreeCamPart:Remove()
		for i,v in pairs(game.Workspace.Filter.ScrapSpawns:GetDescendants()) do
			pcall(function()
				if v:GetAttribute("ScrapESP") == true then
					v:SetAttribute("ScrapESP",false)
				end
			end)
		end
		HidePart:Remove()
		getgenv().RakeGui=false
		Rayfield:Destroy()
	end

	local RakeTargetCounter = ExploitsTab:CreateLabel("Rake的公鸡对象:")
	local TimeUntilDayCounter = ExploitsTab:CreateLabel("时间:")

	-- update time until day label

	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			if game:FindService("ReplicatedStorage").Night.Value == true then
				TimeUntilDayCounter:Set("时间:"..game:FindService("ReplicatedStorage").Timer.Value)
			end
			if game:FindService("ReplicatedStorage").Night.Value == false then
				TimeUntilDayCounter:Set("时间:"..game:FindService("ReplicatedStorage").Timer.Value)
			end
		end
	end)

	-- update rakes targetlabel


	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			pcall(function()
				if game:FindService("Workspace"):FindFirstChild("Rake") then
					if game:FindService("Workspace").Rake.TargetVal.Value == nil then

					else
						pcall(function()
							RakeTargetCounter:Set("Rake的公鸡对象:"..tostring(game:FindService("时间:").Rake.TargetVal.Value.Parent))
						end)
					end

				end
			end)
		end
	end)


	-- alert if blood hour

	game:FindService("RunService").Heartbeat:Connect(function()
		if AllowRunService == true then
			if game:FindService("ReplicatedStorage").InitiateBloodHour.Value == true then
				Rayfield:Notify({
					Title = "红温",
					Content = "Rake要红温了:O",
					Duration = 5,
					Image = 4483362458,
				})
				game:FindService("ReplicatedStorage").InitiateBloodHour.Value = false
			end
		end
	end)

	SettingsTab:CreateButton({
		Name = "销毁UI",
		Callback = function()
			DestroyUI()
		end,
	})



	Rayfield:LoadConfiguration()
end