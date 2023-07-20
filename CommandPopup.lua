local TweenService = game:GetService("TweenService")  
local Player = game.Players.LocalPlayer

if game.CoreGui:FindFirstChild("CommandHub") then
    game.CoreGui:FindFirstChild("CommandHub"):Destroy()
end

local Library = {}

function Library:CreatePopup(Title,Text)
  local CommandHub = Instance.new("ScreenGui")
  local PopupHolder_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local PopupTitleHolder_1 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local PopupTitle_1 = Instance.new("TextLabel")
	local UIPadding_1 = Instance.new("UIPadding")
	local PopupTextHolder_1 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local PopupText_1 = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")

	local targetPosition1 = UDim2.new(0.85, 0,0.86, 0)
	local tweenInfo1 = TweenInfo.new(2, Enum.EasingStyle.Exponential)
	local tween1 = TweenService:Create(PopupHolder_1, tweenInfo1, {Position = targetPosition1})
	local targetPosition2 = UDim2.new(1.2, 0,0.86, 0)
	local tweenInfo2 = TweenInfo.new(2, Enum.EasingStyle.Exponential)
	local tween2 = TweenService:Create(PopupHolder_1, tweenInfo2, {Position = targetPosition2})

    CommandHub.Name = "CommandHub"
	CommandHub.Parent = game.CoreGui
	CommandHub.Enabled = true
	CommandHub.ResetOnSpawn = false
	
	PopupHolder_1.Name = "PopupHolder"
	PopupHolder_1.Parent = CommandHub
	PopupHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)
	PopupHolder_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	PopupHolder_1.BackgroundTransparency = 0.4
	PopupHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PopupHolder_1.BorderSizePixel = 0
	PopupHolder_1.Position = UDim2.new(1.2, 0,0.86, 0)
	PopupHolder_1.Size = UDim2.new(0, 224,0, 85)
	PopupHolder_1.Active = true
	PopupHolder_1.Visible = true

	UICorner_1.Parent = PopupHolder_1
	UICorner_1.CornerRadius = UDim.new(0,10)

	PopupTitleHolder_1.Name = "PopupTitleHolder"
	PopupTitleHolder_1.Parent = PopupHolder_1
	PopupTitleHolder_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	PopupTitleHolder_1.BackgroundTransparency = 0.4
	PopupTitleHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PopupTitleHolder_1.BorderSizePixel = 0
	PopupTitleHolder_1.Position = UDim2.new(0.0270281732, 0,0.0742662847, 0)
	PopupTitleHolder_1.Size = UDim2.new(0, 211,0, 26)

	UICorner_2.Parent = PopupTitleHolder_1
	UICorner_2.CornerRadius = UDim.new(0,10)

	PopupTitle_1.Name = "PopupTitle"
	PopupTitle_1.Parent = PopupTitleHolder_1
	PopupTitle_1.AnchorPoint = Vector2.new(0.5, 0.5)
	PopupTitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	PopupTitle_1.BackgroundTransparency = 1
	PopupTitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PopupTitle_1.BorderSizePixel = 0
	PopupTitle_1.Position = UDim2.new(0.5, 0,0.5, 0)
	PopupTitle_1.Size = UDim2.new(0, 211,0, 26)
	PopupTitle_1.Font = Enum.Font.FredokaOne
	PopupTitle_1.Text = Title
	PopupTitle_1.TextColor3 = Color3.fromRGB(0,128,0)
	PopupTitle_1.TextSize = 14
	PopupTitle_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_1.Parent = PopupTitle_1
	UIPadding_1.PaddingLeft = UDim.new(0,6)

	PopupTextHolder_1.Name = "PopupTextHolder"
	PopupTextHolder_1.Parent = PopupHolder_1
	PopupTextHolder_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	PopupTextHolder_1.BackgroundTransparency = 0.4
	PopupTextHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PopupTextHolder_1.BorderSizePixel = 0
	PopupTextHolder_1.Position = UDim2.new(0.0270000007, 0,0.449999988, 0)
	PopupTextHolder_1.Size = UDim2.new(0, 211,0, 40)

	UICorner_3.Parent = PopupTextHolder_1
	UICorner_3.CornerRadius = UDim.new(0,10)

	PopupText_1.Name = "PopupText"
	PopupText_1.Parent = PopupTextHolder_1
	PopupText_1.AnchorPoint = Vector2.new(0.5, 0.5)
	PopupText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	PopupText_1.BackgroundTransparency = 1
	PopupText_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PopupText_1.BorderSizePixel = 0
	PopupText_1.Position = UDim2.new(0.5, 0,0.5, 0)
	PopupText_1.Size = UDim2.new(0, 211,0, 40)
	PopupText_1.Font = Enum.Font.FredokaOne
	PopupText_1.Text = Text
	PopupText_1.TextColor3 = Color3.fromRGB(255,255,255)
	PopupText_1.TextSize = 12
	PopupText_1.TextWrapped = true
	PopupText_1.TextXAlignment = Enum.TextXAlignment.Left
	PopupText_1.TextYAlignment = Enum.TextYAlignment.Top

	UIPadding_2.Parent = PopupText_1
	UIPadding_2.PaddingBottom = UDim.new(0,6)
	UIPadding_2.PaddingLeft = UDim.new(0,6)
	UIPadding_2.PaddingRight = UDim.new(0,6)
	UIPadding_2.PaddingTop = UDim.new(0,6)
	tween1:Play()
	wait(6)
	tween2:Play()
end
