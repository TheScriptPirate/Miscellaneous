local MessageBoxT = {
    BoxIcons = {
        ["Question"] = "http://www.roblox.com/asset/?id=8800441559",
        ["Error"] = "http://www.roblox.com/asset/?id=8800303348",
        ["Warning"] = "http://www.roblox.com/asset/?id=8800428538"
    }
}

local ID = 8801438982

local CurrentCamera;
local plrs = game:GetService("Players")
local plr = game:GetService("Players").LocalPlayer
local TweenService = game:GetService("TweenService")
local inpService = game:GetService("UserInputService")
local Mouse = plr:GetMouse()

while (not CurrentCamera) do
    CurrentCamera = workspace.CurrentCamera
    wait()
end

local minimized = false

local function ToBounds(X,Y, MW)
    if (X - MW.Size.X.Offset / 2 < 0) then
        X = MW.Size.X.Offset / 2
    end

    if ((MW.AbsoluteSize.Y - Y) - MW.Size.Y.Offset / 2 >= MW.AbsoluteSize.Y) then
        Y = MW.Size.Y.Offset / 2
    end

    if ((X + MW.AbsoluteSize.X) >= (CurrentCamera.ViewportSize.X) + MW.Size.X.Offset / 2) then
        X = CurrentCamera.ViewportSize.X - MW.AbsoluteSize.X + MW.Size.X.Offset / 2
    end

    if (((Y + MW.AbsoluteSize.Y) + 35) >= (CurrentCamera.ViewportSize.Y) + MW.Size.Y.Offset / 2) then
        Y = (CurrentCamera.ViewportSize.Y - MW.AbsoluteSize.Y) - 35 + MW.Size.Y.Offset / 2
    end

    return UDim2.new(0, X, 0, Y)
end

local function Tween(object, time, properties)
    local info = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    TweenService:Create(object, info, properties):Play()
end

-- thank you kesh for drag :) <3
local function ApplyDrag(Component, MainWindow)
    local MouseDown = false
    local MB1 = Enum.UserInputType.MouseButton1 -- no way in hell am i indexing that 24/7
    local MM = Enum.UserInputType.MouseMovement -- no way in hell am i indexing that 24/7

    local Position = Vector2.new()

    local InputBegan = Component.InputBegan:Connect(function(input)
        if (input.UserInputType == MB1) then
            Component.BackgroundTransparency = 0
            Component["Box-Title"].TextColor3 = Color3.fromRGB(255,255,255)
            Component["Close"]["btn"].TextColor3 = Color3.fromRGB(255,255,255)
            MouseDown = true
            Position = Vector2.new(input.Position.X-MainWindow.AbsolutePosition.X-MainWindow.Size.X.Offset / 2, input.Position.Y-MainWindow.AbsolutePosition.Y-MainWindow.Size.Y.Offset / 2)
        end
    end)

    local InputEnded = Component.InputEnded:Connect(function(input)
        if (input.UserInputType == MB1) then
            MouseDown = false
            Component.BackgroundTransparency = 1
            Component["Box-Title"].TextColor3 = Color3.fromRGB(0,0,0)
            Component["Close"]["btn"].TextColor3 = Color3.fromRGB(0,0,0)
        end
    end)

    local InputChanged;

    InputChanged = game:GetService("UserInputService").InputChanged:Connect(function(input)
        if (MouseDown and input.UserInputType == MM) then
            Tween(MainWindow, 0.1, {Position = ToBounds((Mouse.X-Position.X), (Mouse.Y-Position.Y), MainWindow)})
            --MainWindow.Position = ToBounds((Mouse.X-Position.X), (Mouse.Y-Position.Y), MainWindow)
        end
    end)
end

function MessageBoxT.Show(option)
    option = typeof(option) == "table" and option or {}
    local MessageDescription = tostring(option.Description) and option.Description or "This is a Notification"
    local Options = tostring(option.MessageBoxButtons) and option.MessageBoxButtons or "OK"
    local MessageIcon = tostring(option.MessageBoxIcon) and option.MessageBoxIcon or "Warning"
    local ResultCallback = typeof(option.Result) == "function" and option.Result or function() end
    local MessageTitle = tostring(option.Text) and option.Text or ""
    local CustomPos = option.Position or UDim2.new(0.5,0,0.5,0)

    local GUI

    local Addup = 0

    if (game.CoreGui:FindFirstChild("Notifications")) then
        GUI = game.CoreGui:FindFirstChild("Notifications")
    else
        GUI = Instance.new("ScreenGui")
        GUI.Name = "Notifications"
        GUI.Parent = game.CoreGui
    end

    local MessageBox = Instance.new("Frame")
    MessageBox.Name = "MessageBox"
    MessageBox.Size = UDim2.new(0, 300, 0, 200)
    MessageBox.Position = CustomPos
    MessageBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MessageBox.BackgroundTransparency = 1
    MessageBox.Parent = GUI

    --// Applying Options
    local MessageHeader = Instance.new("Frame")
    MessageHeader.Name = "Message-Header"
    MessageHeader.Size = UDim2.new(1, 0, 0, 30)
    MessageHeader.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    MessageHeader.BorderSizePixel = 0
    MessageHeader.Parent = MessageBox

    local BoxTitle = Instance.new("TextLabel")
    BoxTitle.Name = "Box-Title"
    BoxTitle.Size = UDim2.new(1, -20, 1, 0)
    BoxTitle.Position = UDim2.new(0, 20, 0, 0)
    BoxTitle.BackgroundTransparency = 1
    BoxTitle.Text = MessageTitle
    BoxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    BoxTitle.TextSize = 14
    BoxTitle.TextXAlignment = Enum.TextXAlignment.Left
    BoxTitle.Font = Enum.Font.SourceSansBold
    BoxTitle.Parent = MessageHeader

    local CloseButton = Instance.new("TextButton")
    CloseButton.Name = "Close"
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Position = UDim2.new(1, -30, 0, 0)
    CloseButton.BackgroundTransparency = 1
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.TextSize = 14
    CloseButton.Font = Enum.Font.SourceSansBold
    CloseButton.Parent = MessageHeader

    local MessageDescriptionLabel = Instance.new("TextLabel")
    MessageDescriptionLabel.Name = "MessageDescription"
    MessageDescriptionLabel.Size = UDim2.new(1, -40, 1, -80)
    MessageDescriptionLabel.Position = UDim2.new(0, 20, 0, 60)
    MessageDescriptionLabel.BackgroundTransparency = 1
    MessageDescriptionLabel.Text = MessageDescription
    MessageDescriptionLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    MessageDescriptionLabel.TextSize = 14
    MessageDescriptionLabel.TextWrapped = true
    MessageDescriptionLabel.TextXAlignment = Enum.TextXAlignment.Left
    MessageDescriptionLabel.TextYAlignment = Enum.TextYAlignment.Top
    MessageDescriptionLabel.Parent = MessageBox

    local MessageBoxButtons = Instance.new("Frame")
    MessageBoxButtons.Name = "MessageBoxButtons"
    MessageBoxButtons.Size = UDim2.new(1, 0, 0, 40)
    MessageBoxButtons.Position = UDim2.new(0, 0, 1, -40)
    MessageBoxButtons.BackgroundTransparency = 1
    MessageBoxButtons.Parent = MessageBox

    local UIButtonLayout = Instance.new("UIListLayout")
    UIButtonLayout.Name = "UIButtonLayout"
    UIButtonLayout.FillDirection = Enum.FillDirection.Horizontal
    UIButtonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIButtonLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIButtonLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIButtonLayout.Padding = UDim.new(0, 10)
    UIButtonLayout.Parent = MessageBoxButtons

    MessageBox.Size = UDim2.new(0, MessageDescriptionLabel.TextBounds.X + 100, 0, MessageDescriptionLabel.TextBounds.Y + 110)

    local function CreateButton(text)
        local Button = Instance.new("TextButton")
        Button.Name = text
        Button.Size = UDim2.new(0, 80, 1, 0)
        Button.BackgroundTransparency = 0.8
        Button.Text = text
        Button.TextColor3 = Color3.fromRGB(0, 0, 0)
        Button.TextSize = 14
        Button.Font = Enum.Font.SourceSansBold
        Button.Parent = MessageBoxButtons

        return Button
    end

    if Options ~= "None" then
        local Button = CreateButton(Options)
        Button.MouseButton1Click:Connect(function()
            ResultCallback(Button.Text)
            game.TweenService:Create(MessageBox, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait(0.1)
            MessageBox:Destroy()
        end)
        Addup = 36
    else
        Addup = 6
    end

    if MessageDescriptionLabel.TextBounds.Y >= 16 then
        MessageDescriptionLabel.Position = UDim2.new(0, 48, 0, 42)
        Addup -= 14
    end

    MessageBox.Size = UDim2.new(0, MessageDescriptionLabel.TextBounds.X + 100, 0, MessageDescriptionLabel.TextBounds.Y + 70 + Addup)

    MessageBox.BackgroundTransparency = 0.5

    game.TweenService:Create(MessageBox, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        BackgroundTransparency = 1
    }):Play()
end

return MessageBoxT
