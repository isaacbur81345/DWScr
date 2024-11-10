-- Gui to Lua
-- Version: 3.2

-- Instances:

local Keysys = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local CodeName = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Sub = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Message = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local FrameBG = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local GKey = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

--Properties:

Keysys.Name = "Keysys"
Keysys.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = Keysys
KeyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyFrame.BackgroundTransparency = 1.000
KeyFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
KeyFrame.Position = UDim2.new(0.353340566, 0, 0.397007942, 0)
KeyFrame.Size = UDim2.new(0.291872561, 0, 0.226337269, 0)

Title.Name = "Title"
Title.Parent = KeyFrame
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0971679613, 0, -0.254910946, 0)
Title.Size = UDim2.new(0.800000072, 0, 0.252150774, 0)
Title.Font = Enum.Font.FredokaOne
Title.Text = "Papers's Key system"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

UICorner.Parent = Title

CodeName.Name = "CodeName"
CodeName.Parent = KeyFrame
CodeName.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
CodeName.BorderColor3 = Color3.fromRGB(27, 42, 53)
CodeName.Position = UDim2.new(0.135751814, 0, 0.1134625, 0)
CodeName.Size = UDim2.new(0.731893599, 0, 0.346845329, 0)
CodeName.Font = Enum.Font.GothamMedium
CodeName.Text = ""
CodeName.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeName.TextScaled = true
CodeName.TextSize = 14.000
CodeName.TextWrapped = true

UICorner_2.Parent = CodeName

Sub.Name = "Sub"
Sub.Parent = KeyFrame
Sub.BackgroundColor3 = Color3.fromRGB(135, 255, 120)
Sub.BorderColor3 = Color3.fromRGB(27, 42, 53)
Sub.Position = UDim2.new(0.0711077601, 0, 0.59119451, 0)
Sub.Size = UDim2.new(0.424628675, 0, 0.347018242, 0)
Sub.ZIndex = 10
Sub.Font = Enum.Font.GothamBold
Sub.Text = "Submit"
Sub.TextColor3 = Color3.fromRGB(59, 163, 59)
Sub.TextScaled = true
Sub.TextSize = 14.000
Sub.TextWrapped = true

UICorner_3.Parent = Sub

Message.Name = "Message"
Message.Parent = KeyFrame
Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Message.BackgroundTransparency = 1.000
Message.BorderColor3 = Color3.fromRGB(27, 42, 53)
Message.Position = UDim2.new(-0.013341126, 0, 1.11681712, 0)
Message.Size = UDim2.new(1.03382301, 0, 0.252150774, 0)
Message.Visible = false
Message.Font = Enum.Font.GothamBold
Message.Text = "Error message"
Message.TextColor3 = Color3.fromRGB(204, 0, 0)
Message.TextScaled = true
Message.TextSize = 14.000
Message.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
Message.TextStrokeTransparency = 0.000
Message.TextWrapped = true

Frame.Parent = KeyFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.ZIndex = 0

UICorner_4.Parent = Frame

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(80, 80, 80)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
UIGradient.Rotation = 90
UIGradient.Parent = Frame

FrameBG.Name = "FrameBG"
FrameBG.Parent = KeyFrame
FrameBG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameBG.BorderColor3 = Color3.fromRGB(27, 42, 53)
FrameBG.Position = UDim2.new(-0.0149999997, 0, -0.0599999987, 0)
FrameBG.Size = UDim2.new(1.02999997, 0, 1.12, 0)
FrameBG.ZIndex = -2

UICorner_5.Parent = FrameBG

UIAspectRatioConstraint.Parent = KeyFrame
UIAspectRatioConstraint.AspectRatio = 3.090

GKey.Name = "GKey"
GKey.Parent = KeyFrame
GKey.BackgroundColor3 = Color3.fromRGB(230, 153, 0)
GKey.BorderColor3 = Color3.fromRGB(27, 42, 53)
GKey.Position = UDim2.new(0.540335953, 0, 0.59119451, 0)
GKey.Size = UDim2.new(0.411521763, 0, 0.347018242, 0)
GKey.ZIndex = 10
GKey.Font = Enum.Font.GothamBold
GKey.Text = "Get key"
GKey.TextColor3 = Color3.fromRGB(154, 100, 0)
GKey.TextScaled = true
GKey.TextSize = 14.000
GKey.TextWrapped = true

UICorner_6.Parent = GKey
Keysys.Parent = game.Players.LocalPlayer.PlayerGui
local timer = 0
local HttpService = game:GetService("HttpService")

local function dec(jsonString)
    local success, result = pcall(function()
        return HttpService:JSONDecode(jsonString)
    end)

    if success then
        return {o = result, true}
    else
        return {jsonString, false}
    end
end

local code = game:HttpGet("https://isaacbur81345.pythonanywhere.com/?key=".. CodeName.Text.. "&UserID=".. game.Players.LocalPlayer.UserId)
if code[2] then
    Keysys:Destroy()
    loadstring(code.o.Code)()
end

Sub.MouseButton1Click:Connect(function()
	local code = game:HttpGet("https://isaacbur81345.pythonanywhere.com/?key=".. CodeName.Text.. "&UserID=".. game.Players.LocalPlayer.UserId)
    if code[2] then
        Keysys:Destroy()
        loadstring(code.o.Code)()
    else
        timer = 5
	    Message.Text = code[1]
    end
end)

GKey.MouseButton1Click:Connect(function()
    setclipboard("https://paperskeysys.tiiny.io/")
    timer = 5
	Message.Text = "pasted to clipboard"
end)

while true do
	if timer > 0 then
		Message.Visible = true
		timer = timer - 1
	else
		Message.Visible = false
	end
	wait(1)
end
