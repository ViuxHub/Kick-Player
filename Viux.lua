-- Insert this code into a LocalScript within a ScreenGui By Viux Join My Discord https://discord.gg/8RgKfMuS

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Gui = Instance.new("ScreenGui")
Gui.Name = "KickGui"
Gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 120)
Frame.Position = UDim2.new(0.5, -100, 0.5, -60)
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 0.5
Frame.Active = true -- Enable user interaction on mobile
Frame.Draggable = true -- Make the frame draggable on mobile
Frame.Parent = Gui

local Heading = Instance.new("TextLabel")
Heading.Size = UDim2.new(1, -20, 0, 30)
Heading.Position = UDim2.new(0, 10, 0, 10)
Heading.BackgroundColor3 = Color3.new(1, 1, 1)
Heading.TextColor3 = Color3.new(0, 0, 0)
Heading.Font = Enum.Font.SourceSansBold
Heading.TextSize = 17
Heading.Text = "Kick Player"
Heading.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(1, -20, 0, 30)
TextBox.Position = UDim2.new(0, 10, 0, 50)
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.TextSize = 18
TextBox.PlaceholderText = "Custom Kick Message"
TextBox.Parent = Frame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(1, -20, 0, 30)
Button.Position = UDim2.new(0, 10, 0, 90)
Button.BackgroundColor3 = Color3.new(1, 0, 0)
Button.TextColor3 = Color3.new(1, 1, 1)
Button.Text = "Kick All"
Button.Font = Enum.Font.SourceSansBold
Button.TextSize = 20
Button.Parent = Frame

Button.MouseButton1Click:Connect(function()
    local customMessage = TextBox.Text
    LocalPlayer:Kick(customMessage)
end)
