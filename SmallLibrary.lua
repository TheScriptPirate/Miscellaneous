local TweenService = game:GetService("TweenService")    
  
if game.CoreGui:FindFirstChild("SmallLibrary") then  
   game.CoreGui:FindFirstChild("SmallLibrary"):Destroy()  
end  
  
local Player = game.Players.LocalPlayer 
  
local Library = {}
function Library:CreateWindow(WinName)
	local SmallLibrary = Instance.new("ScreenGui")
	local Main_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local UIStroke_1 = Instance.new("UIStroke")
	local TopBar_1 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local TopBarExt_1 = Instance.new("Frame")
	local Title_1 = Instance.new("TextLabel")
	local ElementsHolder_1 = Instance.new("Frame")
	local Elements_1 = Instance.new("Frame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local UIPadding_4 = Instance.new("UIPadding")
	SmallLibrary.Name = "SmallLibrary"
	SmallLibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	SmallLibrary.Enabled = true
	Main_1.Name = "Main"
	Main_1.Parent = SmallLibrary
	Main_1.BackgroundColor3 = Color3.fromRGB(41,41,43)
	Main_1.BorderColor3 = Color3.fromRGB(27,42,53)
	Main_1.Position = UDim2.new(0.431995213, 0,0.320561945, 0)
	Main_1.Size = UDim2.new(0, 231,0, 281)
	Main_1.Active = true
	Main_1.Draggable = true
	UICorner_1.Parent = Main_1

	UIStroke_1.Parent = Main_1
	UIStroke_1.Color = Color3.fromRGB(207,134,31)
	UIStroke_1.Thickness = 2

	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Main_1
	TopBar_1.BackgroundColor3 = Color3.fromRGB(207,134,31)
	TopBar_1.BorderColor3 = Color3.fromRGB(27,42,53)
	TopBar_1.Size = UDim2.new(0, 231,0, 20)

	UICorner_2.Parent = TopBar_1

	UIStroke_2.Parent = TopBar_1
	UIStroke_2.Color = Color3.fromRGB(207,134,31)
	UIStroke_2.Thickness = 2

	TopBarExt_1.Name = "TopBarExt"
	TopBarExt_1.Parent = TopBar_1
	TopBarExt_1.BackgroundColor3 = Color3.fromRGB(207,134,31)
	TopBarExt_1.BorderColor3 = Color3.fromRGB(27,42,53)
	TopBarExt_1.BorderSizePixel = 0
	TopBarExt_1.Position = UDim2.new(0, 0,0.54838717, 0)
	TopBarExt_1.Size = UDim2.new(0, 232,0, 12)

	Title_1.Name = "Title"
	Title_1.Parent = TopBar_1
	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(27,42,53)
	Title_1.BorderSizePixel = 0
	Title_1.Position = UDim2.new(0.0303030312, 0,0.100000001, 0)
	Title_1.Size = UDim2.new(0, 217,0, 17)
	Title_1.Font = Enum.Font.Gotham
	Title_1.Text = WinName
	Title_1.TextColor3 = Color3.fromRGB(41,41,43)
	Title_1.TextSize = 12

	ElementsHolder_1.Name = "ElementsHolder"
	ElementsHolder_1.Parent = Main_1
	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ElementsHolder_1.BackgroundTransparency = 1
	ElementsHolder_1.BorderColor3 = Color3.fromRGB(27,42,53)
	ElementsHolder_1.BorderSizePixel = 0
	ElementsHolder_1.Position = UDim2.new(0, 0,0.0889679715, 0)
	ElementsHolder_1.Size = UDim2.new(0, 227,0, 255)

	Elements_1.Name = "Elements"
	Elements_1.Parent = ElementsHolder_1
	Elements_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Elements_1.BackgroundColor3 = Color3.fromRGB(41,41,43)
	Elements_1.BorderColor3 = Color3.fromRGB(27,42,53)
	Elements_1.Position = UDim2.new(0.5, 0,0.498039216, 0)
	Elements_1.Size = UDim2.new(0, 221,0, 250)

	UIListLayout_1.Parent = Elements_1
	UIListLayout_1.Padding = UDim.new(0,7)
	UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIPadding_4.Parent = Elements_1
	UIPadding_4.PaddingLeft = UDim.new(0,2)
	UIPadding_4.PaddingTop = UDim.new(0,5)
	
	local Sections = {}
	function Sections:CreateSection(SecName)
		local SectionHolder_1 = Instance.new("Frame")
		local Section_1 = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local SectionLine_1 = Instance.new("Frame")
		local UIStroke_4 = Instance.new("UIStroke")
		local UICorner_4 = Instance.new("UICorner")
		local SectionTxt_1 = Instance.new("TextLabel")
		local UIPadding_3 = Instance.new("UIPadding")
		SectionHolder_1.Name = "SectionHolder"
		SectionHolder_1.Parent = Elements_1
		SectionHolder_1.BackgroundColor3 = Color3.fromRGB(41,41,43)
		SectionHolder_1.BorderColor3 = Color3.fromRGB(27,42,53)
		SectionHolder_1.BorderSizePixel = 0
		SectionHolder_1.Position = UDim2.new(0, 0,0.00800000038, 0)
		SectionHolder_1.Size = UDim2.new(0, 107,0, 244)

		Section_1.Name = "Section"
		Section_1.Parent = SectionHolder_1
		Section_1.BackgroundColor3 = Color3.fromRGB(41,41,43)
		Section_1.BackgroundTransparency = 1
		Section_1.BorderColor3 = Color3.fromRGB(27,42,53)
		Section_1.BorderSizePixel = 0
		Section_1.Position = UDim2.new(0, 0,0.108762898, 0)
		Section_1.Size = UDim2.new(0, 108,0, 214)
		Section_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Section_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		Section_1.CanvasPosition = Vector2.new(0, 0)
		Section_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
		Section_1.ElasticBehavior = Enum.ElasticBehavior.Never
		Section_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		Section_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		Section_1.ScrollBarImageTransparency = 1
		Section_1.ScrollBarThickness = 1
		Section_1.ScrollingDirection = Enum.ScrollingDirection.Y
		Section_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		Section_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		Section_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

		UIListLayout_2.Parent = Section_1
		UIListLayout_2.Padding = UDim.new(0,4)
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		SectionLine_1.Name = "SectionLine"
		SectionLine_1.Parent = SectionHolder_1
		SectionLine_1.BackgroundColor3 = Color3.fromRGB(207,134,31)
		SectionLine_1.BorderColor3 = Color3.fromRGB(27,42,53)
		SectionLine_1.BorderSizePixel = 0
		SectionLine_1.Position = UDim2.new(-0.0186915882, 0,0.0901639313, 0)
		SectionLine_1.Size = UDim2.new(0, 110,0, 2)

		UIStroke_4.Parent = SectionHolder_1
		UIStroke_4.Color = Color3.fromRGB(207,134,31)
		UIStroke_4.Thickness = 2

		UICorner_4.Parent = SectionHolder_1

		SectionTxt_1.Name = "SectionTxt"
		SectionTxt_1.Parent = SectionHolder_1
		SectionTxt_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		SectionTxt_1.BackgroundTransparency = 1
		SectionTxt_1.BorderColor3 = Color3.fromRGB(27,42,53)
		SectionTxt_1.BorderSizePixel = 0
		SectionTxt_1.Position = UDim2.new(0.000654274074, 0,0.00361608295, 0)
		SectionTxt_1.Size = UDim2.new(0, 108,0, 22)
		SectionTxt_1.Font = Enum.Font.Gotham
		SectionTxt_1.Text = SecName
		SectionTxt_1.TextColor3 = Color3.fromRGB(207,134,31)
		SectionTxt_1.TextSize = 12
		UIPadding_3.Parent = Section_1
		UIPadding_3.PaddingBottom = UDim.new(0,3)
		UIPadding_3.PaddingLeft = UDim.new(0,2)
		UIPadding_3.PaddingTop = UDim.new(0,1)
		
		local Elements = {}
		function Elements:CreateLabel(LabName)
			local LabelHolder_1 = Instance.new("Frame")
			local LabelTxt_1 = Instance.new("TextLabel")
			LabelHolder_1.Name = "LabelHolder"
			LabelHolder_1.Parent = Section_1
			LabelHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			LabelHolder_1.BackgroundTransparency = 1
			LabelHolder_1.BorderColor3 = Color3.fromRGB(27,42,53)
			LabelHolder_1.BorderSizePixel = 0
			LabelHolder_1.Position = UDim2.new(0.027777778, 0,0.00467289705, 0)
			LabelHolder_1.Size = UDim2.new(0, 103,0, 19)

			LabelTxt_1.Name = "LabelTxt"
			LabelTxt_1.Parent = LabelHolder_1
			LabelTxt_1.Active = true
			LabelTxt_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			LabelTxt_1.BackgroundTransparency = 1
			LabelTxt_1.BorderColor3 = Color3.fromRGB(27,42,53)
			LabelTxt_1.BorderSizePixel = 0
			LabelTxt_1.Size = UDim2.new(0, 103,0, 19)
			LabelTxt_1.Font = Enum.Font.Gotham
			LabelTxt_1.Text = LabName
			LabelTxt_1.TextColor3 = Color3.fromRGB(207,134,31)
			LabelTxt_1.TextSize = 9
		end
		function Elements:CreateButton(ButName,Callback)
            Callback = Callback or function() end    
            
            local targetTransparencyOn = 0.6
            local targetTransparencyOff = 1
            
			local ButtonHolder_1 = Instance.new("Frame")
			local ButtonBtn_1 = Instance.new("TextButton")
			local UICorner_10 = Instance.new("UICorner")
			
			ButtonHolder_1.Name = "ButtonHolder"
			ButtonHolder_1.Parent = Section_1
			ButtonHolder_1.BackgroundColor3 = Color3.fromRGB(207,134,31)
			ButtonHolder_1.BackgroundTransparency = 1
			ButtonHolder_1.BorderColor3 = Color3.fromRGB(27,42,53)
			ButtonHolder_1.BorderSizePixel = 0
			ButtonHolder_1.Position = UDim2.new(0.027777778, 0,0.00467289705, 0)
			ButtonHolder_1.Size = UDim2.new(0, 103,0, 19)
			
			UICorner_10.Parent = ButtonHolder_1

			ButtonBtn_1.Name = "ButtonBtn"
			ButtonBtn_1.Parent = ButtonHolder_1
			ButtonBtn_1.Active = true
			ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ButtonBtn_1.BackgroundTransparency = 1
			ButtonBtn_1.BorderColor3 = Color3.fromRGB(27,42,53)
			ButtonBtn_1.BorderSizePixel = 0
			ButtonBtn_1.Size = UDim2.new(0, 103,0, 19)
			ButtonBtn_1.Font = Enum.Font.Gotham
			ButtonBtn_1.Text = ButName
			ButtonBtn_1.TextColor3 = Color3.fromRGB(207,134,31)
			ButtonBtn_1.TextSize = 11
			
			local tweenInfo = TweenInfo.new(0.5)
            local tweena = TweenService:Create(ButtonHolder_1, tweenInfo, {BackgroundTransparency = targetTransparencyOn})
            local tweend = TweenService:Create(ButtonHolder_1, tweenInfo, {BackgroundTransparency = targetTransparencyOff})

			ButtonBtn_1.MouseButton1Click:Connect(function()
			   tweena:Play()
			   wait(0.1)
			   tweend:Play()     
               Callback()    
            end)     
		end
		function Elements:CreateToggle(TogName,Callback)
		    Callback = Callback or function() end    
		    local toggled = false     
            local debounce = false   
 
		    local targetColorOn = Color3.fromRGB(207,134,31)
		    local targetColorOff = Color3.fromRGB(41,41,43)
			local ToggleHolder_1 = Instance.new("Frame")
			local ToggleBtn_1 = Instance.new("TextButton")
			local UIPadding_1 = Instance.new("UIPadding")
			local Toggler_1 = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local UIStroke_3 = Instance.new("UIStroke")
			local UIPadding_2 = Instance.new("UIPadding")
			ToggleHolder_1.Name = "ToggleHolder"
			ToggleHolder_1.Parent = Section_1
			ToggleHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ToggleHolder_1.BackgroundTransparency = 1
			ToggleHolder_1.BorderColor3 = Color3.fromRGB(27,42,53)
			ToggleHolder_1.BorderSizePixel = 0
			ToggleHolder_1.Position = UDim2.new(0.027777778, 0,0.00467289705, 0)
			ToggleHolder_1.Size = UDim2.new(0, 103,0, 19)

			ToggleBtn_1.Name = "ToggleBtn"
			ToggleBtn_1.Parent = ToggleHolder_1
			ToggleBtn_1.Active = true
			ToggleBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ToggleBtn_1.BackgroundTransparency = 1
			ToggleBtn_1.BorderColor3 = Color3.fromRGB(27,42,53)
			ToggleBtn_1.BorderSizePixel = 0
			ToggleBtn_1.Size = UDim2.new(0, 103,0, 19)
			ToggleBtn_1.Font = Enum.Font.Gotham
			ToggleBtn_1.Text = TogName
			ToggleBtn_1.TextColor3 = Color3.fromRGB(207,134,31)
			ToggleBtn_1.TextSize = 11
			ToggleBtn_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_1.Parent = ToggleBtn_1
			UIPadding_1.PaddingLeft = UDim.new(0,4)

			Toggler_1.Name = "Toggler"
			Toggler_1.Parent = ToggleHolder_1
			Toggler_1.BackgroundColor3 = Color3.fromRGB(41,41,43)
			Toggler_1.BorderColor3 = Color3.fromRGB(27,42,53)
			Toggler_1.Position = UDim2.new(0.900913, 0,0.210526317, 0)
			Toggler_1.Size = UDim2.new(0, 10,0, 10)

			UICorner_3.Parent = Toggler_1

			UIStroke_3.Parent = Toggler_1
			UIStroke_3.Color = Color3.fromRGB(207,134,31)
			UIStroke_3.Thickness = 1

			UIPadding_2.Parent = ToggleHolder_1
			UIPadding_2.PaddingRight = UDim.new(0,4)
			
			local targetColor = Color3.fromRGB(255, 0, 0)

            local tweenInfo = TweenInfo.new(0.5)
            local tweencon = TweenService:Create(Toggler_1, tweenInfo, {BackgroundColor3 = targetColorOn})
            local tweencoff= TweenService:Create(Toggler_1, tweenInfo, {BackgroundColor3 = targetColorOff})

			                           ToggleBtn_1.MouseButton1Click:Connect(function()     
  
                                    if debounce == false then     
  
                                            if toggled == false then     
  
                                                    debounce = true     
  
                                                    tweencon:Play()    
  
                                                    debounce = false     
  
                                                    toggled = true     
  
                                                    pcall(Callback, toggled)     
  
                                            elseif toggled == true then     
  
                                                    debounce = true      
  
                                                    tweencoff:Play()    
  
                                                    debounce = false     
  
                                                    toggled = false     
  
                                                    pcall(Callback, toggled)     
  
                                            end     
  
                                    end     
  
                            end)    
		end
		return Elements
	end
	return Sections
end
return Library