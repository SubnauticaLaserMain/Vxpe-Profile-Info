shared.VapeIndependent = true
shared.CustomSaveVape = "name of file to save"
shared.VapeExecuted = true



local GuiLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/GuiLibrary.lua', true))()


local CoreGui = game:GetService('CoreGui')
local CorePackages = game:GetService('CorePackages')
local PlayerService = game:GetService('Players')
local UIS = game:GetService('UserInputService')






local GUI = GuiLibrary.CreateMainWindow()
local ClientInfo = GuiLibrary.CreateWindow({
    Name = 'ClientInfo',
    Icon = 'vape/assets/UtilityIcon.png',
    IconSize = 17
})

GUI.CreateButton({
    Name = 'Client-Info',
    Function = function(callback)
        ClientInfo.SetVisible(callback)
    end,
    Icon = 'vape/assets/UtilityIcon.png',
    IconSize = 17
})




local InfoFrameHolder = GuiLibrary.CreateCustomWindow({
    Name = 'Info',
    Icon = 'vape/assets/ProfilesIcon.png',
    IconSize = 19
})

InfoFrameHolder.SetVisible(false)


local function run(func) func() end




run(function()
    local OpenStats = {Enabled = false}


    OpenStats = GuiLibrary.ObjectsThatCanBeSaved.ClientInfoWindow.Api.CreateOptionsButton({
        Name = 'Open Client Stats',
        Function = function(callback)
            InfoFrameHolder.SetVisible(callback)
        end
    })
end)




local List = Instance.new('ScrollingFrame')
List.BackgroundTransparency = 0.2
List.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
List.Size = UDim2.new(1, 0, 1, 0)
List.BorderSizePixel = 0
List.Parent = InfoFrameHolder.GetCustomChildren()
List.ScrollBarImageColor3 = Color3.new(1, 1, 1)
List.AutomaticCanvasSize = Enum.AutomaticSize.Y
List.CanvasSize = UDim2.new(0, 0, 0, 0)

local Layout = Instance.new('UIListLayout')
Layout.Parent = List
Layout.Padding = UDim.new(0, 3)


local function CreateText(Text, Color)
    local Calc_X = (List.ScrollBarThickness - List.Size.X.Offset)


    print(Calc_X)
    local TextLabel = Instance.new('TextLabel', List)
    TextLabel.Size = UDim2.new(0, (Calc_X), 0, 20)
    TextLabel.AutomaticSize = Enum.AutomaticSize.Y
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextColor3 = ((Color) or Color3.new(1, 1, 1))
    TextLabel.Text = ((Text) or 'Nil')
    TextLabel.BackgroundTransparency = 1
    TextLabel.BorderSizePixel = 0
    TextLabel.TextSize = 14

    local Padding = Instance.new('UIPadding', TextLabel)
    Padding.PaddingBottom = UDim.new(0, 5)
    Padding.PaddingLeft = UDim.new(0, 5)
    Padding.PaddingRight = UDim.new(0, 5)
    Padding.PaddingTop = UDim.new(0, 5)
    

    return TextLabel
end



local PlatformLabel = CreateText('Platform: '..tostring(UIS:GetPlatform().Name))




--loadstring(game:HttpGet('https://raw.githubusercontent.com/SubnauticaLaserMain/Vxpe-Profile-Info/main/Unbugged.lua', true))()
