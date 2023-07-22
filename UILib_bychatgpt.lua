-- Create a basic UI library

local UI = {}

local function createUI(parent, size, position, backgroundColor, borderSizePixel)
    local uiElement = Instance.new("Frame")
    uiElement.Size = size
    uiElement.Position = position
    uiElement.BackgroundColor3 = backgroundColor
    uiElement.BorderSizePixel = borderSizePixel
    uiElement.Parent = parent
    return uiElement
end

-- Create a title bar with a close button
function UI.CreateTitleBar(parent, title)
    local titleBar = createUI(parent, UDim2.new(1, 0, 0, 30), UDim2.new(0, 0, 0, 0), Color3.fromRGB(40, 40, 40), 0)

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -30, 1, 0)
    titleLabel.Position = UDim2.new(0, 5, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 18
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = titleBar

    local closeButton = Instance.new("TextButton")
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Position = UDim2.new(1, -30, 0, 0)
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    closeButton.BorderSizePixel = 0
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.new(1, 1, 1)
    closeButton.Font = Enum.Font.SourceSansBold
    closeButton.TextSize = 18
    closeButton.Parent = titleBar

    closeButton.MouseButton1Click:Connect(function()
        parent.Visible = false
    end)

    return titleBar
end

-- Create a tab UI
function UI.CreateTabUI(parent, tabs)
    local tabUI = createUI(parent, UDim2.new(1, 0, 1, -30), UDim2.new(0, 0, 0, 30), Color3.fromRGB(60, 60, 60), 0)

    local tabButtons = {}
    local activeTab = nil

    local function activateTab(tabButton)
        if activeTab then
            activeTab.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        end
        tabButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        activeTab = tabButton
    end

    for i, tabTitle in ipairs(tabs) do
        local tabButton = Instance.new("TextButton")
        tabButton.Size = UDim2.new(0, 100, 0, 30)
        tabButton.Position = UDim2.new(0, (i - 1) * 100, 0, 0)
        tabButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        tabButton.BorderSizePixel = 0
        tabButton.Text = tabTitle
        tabButton.TextColor3 = Color3.new(1, 1, 1)
        tabButton.Font = Enum.Font.SourceSansBold
        tabButton.TextSize = 18
        tabButton.Parent = tabUI

        tabButton.MouseButton1Click:Connect(function()
            activateTab(tabButton)
        end)

        table.insert(tabButtons, tabButton)
    end

    if #tabs > 0 then
        activateTab(tabButtons[1])
    end

    return tabUI, tabButtons
end

-- Create a basic button
function UI.CreateButton(parent, text, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -25)
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    button.BorderSizePixel = 0
    button.Text = text
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.Parent = parent

    button.MouseButton1Click:Connect(callback)

    return button
end

-- Create a toggle
function UI.CreateToggle(parent, label, initialValue, callback)
    local toggleFrame = createUI(parent, UDim2.new(0, 200, 0, 30), UDim2.new(0.5, -100, 0, 0), Color3.fromRGB(60, 60, 60), 0)

    local toggleLabel = Instance.new("TextLabel")
    toggleLabel.Size = UDim2.new(0, 150, 1, 0)
    toggleLabel.Position = UDim2.new(0, 5, 0, 0)
    toggleLabel.BackgroundTransparency = 1
    toggleLabel.Text = label
    toggleLabel.TextColor3 = Color3.new(1, 1, 1)
    toggleLabel.Font = Enum.Font.SourceSans
    toggleLabel.TextSize = 16
    toggleLabel.TextXAlignment = Enum.TextXAlignment.Left
    toggleLabel.Parent = toggleFrame

    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0, 40, 0, 30)
    toggleButton.Position = UDim2.new(1, -45, 0, 0)
    toggleButton.BackgroundColor3 = initialValue and Color3.fromRGB(50, 200, 50) or Color3.fromRGB(200, 50, 50)
    toggleButton.BorderSizePixel = 0
    toggleButton.Text = ""
    toggleButton.Parent = toggleFrame

    toggleButton.MouseButton1Click:Connect(function()
        initialValue = not initialValue
        toggleButton.BackgroundColor3 = initialValue and Color3.fromRGB(50, 200, 50) or Color3.fromRGB(200, 50, 50)
        if callback then
            callback(initialValue)
        end
    end)

    return toggleFrame, initialValue
end

-- Create a textbox
function UI.CreateTextbox(parent, label, callback)
    local textboxFrame = createUI(parent, UDim2.new(0, 200, 0, 30), UDim2.new(0.5, -100, 0, 0), Color3.fromRGB(60, 60, 60), 0)

    local textboxLabel = Instance.new("TextLabel")
    textboxLabel.Size = UDim2.new(0, 150, 1, 0)
    textboxLabel.Position = UDim2.new(0, 5, 0, 0)
    textboxLabel.BackgroundTransparency = 1
    textboxLabel.Text = label
    textboxLabel.TextColor3 = Color3.new(1, 1, 1)
    textboxLabel.Font = Enum.Font.SourceSans
    textboxLabel.TextSize = 16
    textboxLabel.TextXAlignment = Enum.TextXAlignment.Left
    textboxLabel.Parent = textboxFrame

    local textbox = Instance.new("TextBox")
    textbox.Size = UDim2.new(0, 100, 0, 30)
    textbox.Position = UDim2.new(1, -105, 0, 0)
    textbox.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    textbox.BorderSizePixel = 0
    textbox.Text = ""
    textbox.TextColor3 = Color3.new(1, 1, 1)
    textbox.Font = Enum.Font.SourceSans
    textbox.TextSize = 16
    textbox.Parent = textboxFrame

    textbox.FocusLost:Connect(function(enterPressed)
        if enterPressed and callback then
            callback(textbox.Text)
        end
    end)

    return textboxFrame, textbox
end

-- Add other UI element creation functions here (e.g., sections, labels, sliders)

return UI
