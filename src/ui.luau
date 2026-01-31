-- ui.luau
-- This script creates the UI for the menu.

local ui = {}

function ui.init()
    -- Create the main screen GUI
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "MenuGui"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Create the main frame
    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0.5, 0, 0.6, 0)
    mainFrame.Position = UDim2.new(0.25, 0, 0.2, 0)
    mainFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    mainFrame.BackgroundTransparency = 0.3
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui

    -- Create a UI corner for rounded corners
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 8)
    uiCorner.Parent = mainFrame

    -- Create the tabs
    local tabs = {"Home", "Settings", "Credits"}
    for i, tabName in ipairs(tabs) do
        local tab = Instance.new("TextButton")
        tab.Name = tabName
        tab.Text = tabName
        tab.Size = UDim2.new(0.2, 0, 0.1, 0)
        tab.Position = UDim2.new(0.1 + (i - 1) * 0.25, 0, 0.05, 0)
        tab.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        tab.TextColor3 = Color3.new(1, 1, 1)
        tab.Font = Enum.Font.SourceSans
        tab.TextSize = 18
        tab.BorderSizePixel = 0
        tab.Parent = mainFrame

        local tabCorner = Instance.new("UICorner")
        tabCorner.CornerRadius = UDim.new(0, 4)
        tabCorner.Parent = tab
    end
end

return ui
