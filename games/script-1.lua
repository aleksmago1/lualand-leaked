local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")
local player = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LuaLandPremiumGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

local guiVisible = true

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 550, 0, 360)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(45, 45, 45)
MainStroke.Thickness = 1
MainStroke.Parent = MainFrame

-- TOP BAR
local TopBar = Instance.new("Frame")
TopBar.Name = "TopBar"
TopBar.Size = UDim2.new(1, 0, 0, 60)
TopBar.Position = UDim2.new(0, 0, 0, 0)
TopBar.BackgroundTransparency = 1
TopBar.Parent = MainFrame

local TopBarSeparator = Instance.new("Frame")
TopBarSeparator.Size = UDim2.new(1, 0, 0, 1)
TopBarSeparator.Position = UDim2.new(0, 0, 1, 0)
TopBarSeparator.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TopBarSeparator.BorderSizePixel = 0
TopBarSeparator.Parent = TopBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -80, 0, 30)
TitleLabel.Position = UDim2.new(0, 20, 0, 8)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Lua Land | Guess the clone"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 18
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TopBar

local SubtitleLabel = Instance.new("TextLabel")
SubtitleLabel.Size = UDim2.new(1, -80, 0, 20)
SubtitleLabel.Position = UDim2.new(0, 20, 0, 32)
SubtitleLabel.BackgroundTransparency = 1
SubtitleLabel.Text = "Developed By LLH Lua Land"
SubtitleLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
SubtitleLabel.TextSize = 12
SubtitleLabel.Font = Enum.Font.Gotham
SubtitleLabel.TextXAlignment = Enum.TextXAlignment.Left
SubtitleLabel.Parent = TopBar

-- CLOSE BUTTON (X)
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 28, 0, 28)
CloseButton.Position = UDim2.new(1, -38, 0, 16)
CloseButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
CloseButton.Text = "✕"
CloseButton.TextColor3 = Color3.fromRGB(180, 180, 180)
CloseButton.TextSize = 14
CloseButton.Font = Enum.Font.GothamBold
CloseButton.BorderSizePixel = 0
CloseButton.Parent = TopBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 6)
CloseCorner.Parent = CloseButton

local CloseStroke = Instance.new("UIStroke")
CloseStroke.Color = Color3.fromRGB(60, 60, 60)
CloseStroke.Thickness = 1
CloseStroke.Parent = CloseButton

CloseButton.MouseEnter:Connect(function()
    TweenService:Create(CloseButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(180, 40, 40), TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
end)
CloseButton.MouseLeave:Connect(function()
    TweenService:Create(CloseButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(40, 40, 40), TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
end)
CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    guiVisible = false
end)

-- Z KEYBIND to toggle GUI
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Z then
        guiVisible = not guiVisible
        MainFrame.Visible = guiVisible
    end
end)

-- DRAG
local dragging, dragInput, dragStart, startPos

TopBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

TopBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- SIDEBAR
local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 150, 0, 299)
Sidebar.Position = UDim2.new(0, 0, 0, 61)
Sidebar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Sidebar.BorderSizePixel = 0
Sidebar.Parent = MainFrame

local SidebarSeparator = Instance.new("Frame")
SidebarSeparator.Size = UDim2.new(0, 1, 1, 0)
SidebarSeparator.Position = UDim2.new(1, 0, 0, 0)
SidebarSeparator.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SidebarSeparator.BorderSizePixel = 0
SidebarSeparator.Parent = Sidebar

-- CONTENT AREA
local ContentContainer = Instance.new("Frame")
ContentContainer.Name = "ContentContainer"
ContentContainer.Size = UDim2.new(0, 399, 0, 299)
ContentContainer.Position = UDim2.new(0, 151, 0, 61)
ContentContainer.BackgroundTransparency = 1
ContentContainer.Parent = MainFrame

local ContentPadding = Instance.new("UIPadding")
ContentPadding.PaddingTop = UDim.new(0, 18)
ContentPadding.PaddingLeft = UDim.new(0, 18)
ContentPadding.PaddingRight = UDim.new(0, 18)
ContentPadding.PaddingBottom = UDim.new(0, 18)
ContentPadding.Parent = ContentContainer

local pages = {}
local tabButtons = {}

local function createPage(name, isScrollable)
    local page
    if isScrollable then
        page = Instance.new("ScrollingFrame")
        page.CanvasSize = UDim2.new(0, 0, 0, 0)
        page.ScrollBarThickness = 3
        page.ScrollBarImageColor3 = Color3.fromRGB(70, 70, 70)
        page.BorderSizePixel = 0
    else
        page = Instance.new("Frame")
    end
    page.Name = name .. "Page"
    page.Size = UDim2.new(1, 0, 1, 0)
    page.BackgroundTransparency = 1
    page.Visible = false
    page.Parent = ContentContainer
    pages[name] = page
    return page
end

local HomePage       = createPage("Home", true)
local ChangelogsPage = createPage("Changelogs", true)
local MainPage       = createPage("Main", true)
local CreditsPage    = createPage("Credits", true)

-- TAB BUTTONS with explicit Y positions (no UIListLayout on sidebar)
local function createTab(name, iconId, yOffset)
    local TabButton = Instance.new("TextButton")
    TabButton.Name = name .. "Tab"
    TabButton.Size = UDim2.new(0, 130, 0, 32)
    TabButton.Position = UDim2.new(0, 10, 0, yOffset)
    TabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TabButton.BackgroundTransparency = 1
    TabButton.Text = ""
    TabButton.TextColor3 = Color3.fromRGB(180, 180, 180)
    TabButton.Font = Enum.Font.GothamMedium
    TabButton.TextSize = 13
    TabButton.TextXAlignment = Enum.TextXAlignment.Left
    TabButton.Parent = Sidebar

    local TabCorner = Instance.new("UICorner")
    TabCorner.CornerRadius = UDim.new(0, 6)
    TabCorner.Parent = TabButton

    -- Icon
    local Icon = Instance.new("ImageLabel")
    Icon.Size = UDim2.new(0, 16, 0, 16)
    Icon.Position = UDim2.new(0, 10, 0.5, -8)
    Icon.BackgroundTransparency = 1
    Icon.ImageColor3 = Color3.fromRGB(180, 180, 180)
    Icon.Image = iconId
    Icon.Parent = TabButton

    -- Label (separate from icon, no overlap)
    local TabLabel = Instance.new("TextLabel")
    TabLabel.Size = UDim2.new(1, -36, 1, 0)
    TabLabel.Position = UDim2.new(0, 34, 0, 0)
    TabLabel.BackgroundTransparency = 1
    TabLabel.Text = name
    TabLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
    TabLabel.Font = Enum.Font.GothamMedium
    TabLabel.TextSize = 13
    TabLabel.TextXAlignment = Enum.TextXAlignment.Left
    TabLabel.TextYAlignment = Enum.TextYAlignment.Center
    TabLabel.Parent = TabButton

    tabButtons[name] = {Button = TabButton, Icon = Icon, Label = TabLabel}

    TabButton.MouseEnter:Connect(function()
        if not pages[name].Visible then
            TweenService:Create(TabButton, TweenInfo.new(0.3), {BackgroundTransparency = 0.8}):Play()
            TweenService:Create(TabLabel, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            TweenService:Create(Icon, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        end
    end)

    TabButton.MouseLeave:Connect(function()
        if not pages[name].Visible then
            TweenService:Create(TabButton, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
            TweenService:Create(TabLabel, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
            TweenService:Create(Icon, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(180, 180, 180)}):Play()
        end
    end)

    TabButton.MouseButton1Click:Connect(function()
        for pname, page in pairs(pages) do
            page.Visible = false
            local bd = tabButtons[pname]
            TweenService:Create(bd.Button, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
            TweenService:Create(bd.Label, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
            TweenService:Create(bd.Icon, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(180, 180, 180)}):Play()
        end
        pages[name].Visible = true
        TweenService:Create(TabButton, TweenInfo.new(0.2), {BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
        TweenService:Create(TabLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        TweenService:Create(Icon, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
    end)
end

createTab("Home",       "rbxassetid://13060262529",      10)
createTab("Changelogs", "rbxassetid://136449956980028",  52)  -- NEW ICON
createTab("Main",       "rbxassetid://137649072568517",  94)
createTab("Credits",    "rbxassetid://94743950497910",  136)

-- LABEL HELPER
local function createLabel(parent, text, font, color, ySize)
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, 0, 0, ySize or 24)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.TextColor3 = color or Color3.fromRGB(210, 210, 210)
    lbl.Font = font
    lbl.TextSize = 13
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextYAlignment = Enum.TextYAlignment.Center
    lbl.Parent = parent
    return lbl
end

local execName = "Unknown"
if identifyexecutor then execName = identifyexecutor() end

-- HOME PAGE
local homeLayout = Instance.new("UIListLayout")
homeLayout.Parent = HomePage
homeLayout.SortOrder = Enum.SortOrder.LayoutOrder
homeLayout.Padding = UDim.new(0, 4)

createLabel(HomePage, "ABOUT ME", Enum.Font.GothamBold, Color3.fromRGB(255,255,255), 30)
createLabel(HomePage, "Username: " .. player.Name, Enum.Font.Gotham)
createLabel(HomePage, "UserId: " .. tostring(player.UserId), Enum.Font.Gotham)
createLabel(HomePage, "Account Age: " .. tostring(player.AccountAge), Enum.Font.Gotham)
createLabel(HomePage, "Executor: " .. execName, Enum.Font.Gotham)
createLabel(HomePage, "Created: 3/31/2026", Enum.Font.Gotham)

local spacer = Instance.new("Frame")
spacer.Size = UDim2.new(1, 0, 0, 15)
spacer.BackgroundTransparency = 1
spacer.Parent = HomePage

createLabel(HomePage, "ABOUT GAME", Enum.Font.GothamBold, Color3.fromRGB(255,255,255), 30)
createLabel(HomePage, "Name: Guess the clone", Enum.Font.Gotham)
createLabel(HomePage, "Developer: Tagurit Games", Enum.Font.Gotham)
createLabel(HomePage, "Genre: Party & Casual", Enum.Font.Gotham)
createLabel(HomePage, "Subgenre: Childhood Game", Enum.Font.Gotham)

homeLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    HomePage.CanvasSize = UDim2.new(0, 0, 0, homeLayout.AbsoluteContentSize.Y + 10)
end)

-- CHANGELOGS PAGE
local clogLayout = Instance.new("UIListLayout")
clogLayout.Parent = ChangelogsPage
clogLayout.SortOrder = Enum.SortOrder.LayoutOrder
clogLayout.Padding = UDim.new(0, 8)

createLabel(ChangelogsPage, "[ + ] Fixed some bugs", Enum.Font.Gotham)
createLabel(ChangelogsPage, "[ + ] Better dragging pos", Enum.Font.Gotham)
createLabel(ChangelogsPage, "[ + ] Added more features", Enum.Font.Gotham)
createLabel(ChangelogsPage, "[ + ] Key deleted", Enum.Font.Gotham)
createLabel(ChangelogsPage, "[ + ] New Obfuscator", Enum.Font.Gotham)

clogLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ChangelogsPage.CanvasSize = UDim2.new(0, 0, 0, clogLayout.AbsoluteContentSize.Y + 10)
end)

-- MAIN PAGE
local mainLayout = Instance.new("UIListLayout")
mainLayout.Parent = MainPage
mainLayout.SortOrder = Enum.SortOrder.LayoutOrder
mainLayout.Padding = UDim.new(0, 10)

local function createFeatureButton(name, scriptUrl)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Size = UDim2.new(1, -12, 0, 38)
    btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    btn.Text = "  " .. name
    btn.TextColor3 = Color3.fromRGB(230, 230, 230)
    btn.Font = Enum.Font.GothamMedium
    btn.TextSize = 13
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.ClipsDescendants = true
    btn.Parent = MainPage

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = btn

    local btnStroke = Instance.new("UIStroke")
    btnStroke.Color = Color3.fromRGB(45, 45, 45)
    btnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    btnStroke.Parent = btn

    local executeIcon = Instance.new("ImageLabel")
    executeIcon.Size = UDim2.new(0, 16, 0, 16)
    executeIcon.Position = UDim2.new(1, -26, 0.5, -8)
    executeIcon.BackgroundTransparency = 1
    executeIcon.Image = "rbxassetid://3944680095"
    executeIcon.ImageColor3 = Color3.fromRGB(150, 150, 150)
    executeIcon.Parent = btn

    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35,35,35)}):Play()
        TweenService:Create(btnStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(70,70,70)}):Play()
        TweenService:Create(executeIcon, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(25,25,25)}):Play()
        TweenService:Create(btnStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(45,45,45)}):Play()
        TweenService:Create(executeIcon, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(150,150,150)}):Play()
    end)
    btn.MouseButton1Down:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.1), {Size = UDim2.new(1,-16,0,34)}):Play()
    end)
    btn.MouseButton1Up:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.1), {Size = UDim2.new(1,-12,0,38)}):Play()
    end)
    btn.MouseButton1Click:Connect(function()
        local ripple = Instance.new("Frame")
        ripple.BackgroundColor3 = Color3.fromRGB(255,255,255)
        ripple.BackgroundTransparency = 0.8
        ripple.Position = UDim2.new(0.5,0,0.5,0)
        ripple.AnchorPoint = Vector2.new(0.5,0.5)
        ripple.Size = UDim2.new(0,0,0,0)
        local rc = Instance.new("UICorner")
        rc.CornerRadius = UDim.new(1,0)
        rc.Parent = ripple
        ripple.Parent = btn
        TweenService:Create(ripple, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(2,0,6,0), BackgroundTransparency=1}):Play()
        game.Debris:AddItem(ripple, 0.4)
        loadstring(game:HttpGet(scriptUrl))()
    end)
end

createFeatureButton("Trigger Speed Boost",    "https://gist.githubusercontent.com/Angelo-Gitland/5a62a2b46a08940422b40b5fb9fcd816/raw/33d4905acc1de541e0779314d6c022216a40626c/GTC%2520Speed%2520Boost")
createFeatureButton("Trigger Tiny Ability",   "https://gist.githubusercontent.com/Angelo-Gitland/df6590911a664f3b7e85c1f2954d8de8/raw/1fcb71d34c67f0c6d6a35d95d915d2d6f991862d/GTC%2520Tiny%2520Ability")
createFeatureButton("Trigger Crowd Ability",  "https://gist.githubusercontent.com/Angelo-Gitland/d05856da2f63fbec9a1f2aa8e8a1fe11/raw/6a882883467e89347007a5b3641bd39af11f8281/GTC%2520Crowd%2520Ability")
createFeatureButton("Trigger Invis Boost",    "https://gist.githubusercontent.com/Angelo-Gitland/8975b52491e128656effcd33ac8fe03b/raw/8e7778ab78bac5bfb4dea822712ed109a6ee4c0f/GTC%2520Invis%2520Boost")
createFeatureButton("Trigger Mimic Ability",  "https://gist.githubusercontent.com/Angelo-Gitland/38e1d5907879d39720069465f2379955/raw/53978ab2fc7e27c609f498a58ccde8b65a99eadc/GTC%2520Mimic%2520Ability")
createFeatureButton("Trigger Bodyswap Boost", "https://gist.githubusercontent.com/Angelo-Gitland/4b2407889c0a6cca393a4806e60beb81/raw/43d7f6c44b665658560f87c6f398a2196130ef06/GTC%2520Bodyswap%2520Boost")
createFeatureButton("Trigger Fake Seeker",    "https://gist.githubusercontent.com/Angelo-Gitland/64404e4e4dea42445fce648159685219/raw/435671b8fe7f3393b5cefe3f12c35f24dc4a835c/GTC%2520Fake%2520Seeker")
createFeatureButton("Trigger Fart Ability",   "https://gist.githubusercontent.com/Angelo-Gitland/7e82df8ab843e2907fbfcac598837022/raw/1c85e00ae63d160cefde691707dcf184e87d4e2b/GTC%2520Fart%2520Ability")
createFeatureButton("Trigger Shield",         "https://gist.githubusercontent.com/Angelo-Gitland/5d87bd614726d01bf482935568cde445/raw/750ba25a8c82df7cd2aca7648502ae31b091536f/GTC%2520Shield")
createFeatureButton("Loop Spleef",            "https://gist.githubusercontent.com/Angelo-Gitland/13c259f5c21c44f793b74610f53e14d7/raw/3d4c9c428db25154282487d906ae2c65c29f2f68/GTC%2520Loop%2520Spleef")
createFeatureButton("Auto-Buy Crate",         "https://gist.githubusercontent.com/Angelo-Gitland/ee6f81bdd3ac0ed07f32c5c27f0cabbf/raw/0b6ecee31bc39c4795c41fa09006ce5339518b02/GTC%2520Auto-Buy%2520Crate")
createFeatureButton("Detect Roles",           "https://gist.githubusercontent.com/Angelo-Gitland/fbf33fcd25ef58c44c3e843ddce9ff89/raw/ebfb832ce58741e04f2ca2a83886b4890ee75b07/GTC%2520Detect%2520Roles")
createFeatureButton("Hide Clones",            "https://gist.githubusercontent.com/Angelo-Gitland/86cbc17d7aa63ac7a0baae6f8c6792f7/raw/225c9e872abfde57f5696a79809307e9419dff1b/GTC%2520Delete%2520Clones")
createFeatureButton("Teleport to Lobby",      "https://gist.githubusercontent.com/Angelo-Gitland/69cf7d1b0418c2b4a58e10f31b5e73ee/raw/b3757d2d60dd6b7e08928d6fac1f4bd2dfd8fc03/GTC%2520Teleport%2520to%2520lobby")
createFeatureButton("Teleport to Map",        "https://gist.githubusercontent.com/Angelo-Gitland/f0ae1d7009b44ade5417389cd378e4a6/raw/7b1504db4920f676198c2347edf6e0a4f3f5684b/GTC%2520Teleport%2520to%2520map")
createFeatureButton("Anti-Kill",              "https://gist.githubusercontent.com/Angelo-Gitland/e1b3ba714af099c4c978c5848cfb1a28/raw/b0f8d1bbd0ca66937c5103cf73a2675d5f14f6d9/GTC%2520Anti-Kill")
createFeatureButton("Kill-All Clones",        "https://gist.githubusercontent.com/Angelo-Gitland/b7ec9d61aa502309ca335c650a842fb4/raw/35290c29e5f30bc3773b5b0e3f9e567a871a8bfc/GTC%2520Kill-All%2520Clones")
createFeatureButton("Boost Speed",            "https://gist.githubusercontent.com/Angelo-Gitland/a3a11355f92e6c7857b4dabf83c251ed/raw/c45413dcdab2922078035ea083e50d8f38fad596/Speed%2520Boost")

mainLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    MainPage.CanvasSize = UDim2.new(0, 0, 0, mainLayout.AbsoluteContentSize.Y + 15)
end)

-- CREDITS PAGE (scrollable now)
local credLayout = Instance.new("UIListLayout")
credLayout.Parent = CreditsPage
credLayout.SortOrder = Enum.SortOrder.LayoutOrder
credLayout.Padding = UDim.new(0, 10)

local function createCreditFrame(title, name)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -10, 0, 50)
    frame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    frame.Parent = CreditsPage

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(45, 45, 45)
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Parent = frame

    local titleLbl = Instance.new("TextLabel")
    titleLbl.Size = UDim2.new(1, -30, 0, 20)
    titleLbl.Position = UDim2.new(0, 15, 0, 5)
    titleLbl.BackgroundTransparency = 1
    titleLbl.Text = title
    titleLbl.TextColor3 = Color3.fromRGB(150, 150, 150)
    titleLbl.Font = Enum.Font.Gotham
    titleLbl.TextSize = 11
    titleLbl.TextXAlignment = Enum.TextXAlignment.Left
    titleLbl.Parent = frame

    local nameLbl = Instance.new("TextLabel")
    nameLbl.Size = UDim2.new(1, -30, 0, 20)
    nameLbl.Position = UDim2.new(0, 15, 0, 22)
    nameLbl.BackgroundTransparency = 1
    nameLbl.Text = name
    nameLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLbl.Font = Enum.Font.GothamMedium
    nameLbl.TextSize = 14
    nameLbl.TextXAlignment = Enum.TextXAlignment.Left
    nameLbl.Parent = frame
end

createCreditFrame("Developer", "LLH LuaLand")
createCreditFrame("Partner", "Eric_3337")
createCreditFrame("Gui By", "LLH LuaLand")

-- JOIN DISCORD BUTTON in Credits
local discordBtn = Instance.new("TextButton")
discordBtn.Name = "JoinDiscord"
discordBtn.Size = UDim2.new(1, -10, 0, 38)
discordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242) -- Discord blue
discordBtn.Text = "  Join Discord"
discordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
discordBtn.Font = Enum.Font.GothamBold
discordBtn.TextSize = 13
discordBtn.TextXAlignment = Enum.TextXAlignment.Center
discordBtn.ClipsDescendants = true
discordBtn.Parent = CreditsPage

local discordCorner = Instance.new("UICorner")
discordCorner.CornerRadius = UDim.new(0, 8)
discordCorner.Parent = discordBtn

local discordStroke = Instance.new("UIStroke")
discordStroke.Color = Color3.fromRGB(70, 82, 200)
discordStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
discordStroke.Parent = discordBtn

discordBtn.MouseEnter:Connect(function()
    TweenService:Create(discordBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(70, 82, 220)}):Play()
end)
discordBtn.MouseLeave:Connect(function()
    TweenService:Create(discordBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(88, 101, 242)}):Play()
end)
discordBtn.MouseButton1Click:Connect(function()
    -- Ripple effect
    local ripple = Instance.new("Frame")
    ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ripple.BackgroundTransparency = 0.8
    ripple.Position = UDim2.new(0.5, 0, 0.5, 0)
    ripple.AnchorPoint = Vector2.new(0.5, 0.5)
    ripple.Size = UDim2.new(0, 0, 0, 0)
    local rc = Instance.new("UICorner")
    rc.CornerRadius = UDim.new(1, 0)
    rc.Parent = ripple
    ripple.Parent = discordBtn
    TweenService:Create(ripple, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(2,0,6,0), BackgroundTransparency = 1}):Play()
    game.Debris:AddItem(ripple, 0.4)

    -- setclipboard if available
    if setclipboard then
        setclipboard("https://discord.gg/luaLand")
    end

    -- Notification
    StarterGui:SetCore("SendNotification", {
        Title = "LuaLand",
        Text  = "Link copied to clipboard!",
        Duration = 4,
    })
end)

credLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    CreditsPage.CanvasSize = UDim2.new(0, 0, 0, credLayout.AbsoluteContentSize.Y + 15)
end)

-- SET DEFAULT TAB (Home)
pages["Home"].Visible = true
TweenService:Create(tabButtons["Home"].Button, TweenInfo.new(0), {BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(45,45,45)}):Play()
TweenService:Create(tabButtons["Home"].Label,  TweenInfo.new(0), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()
TweenService:Create(tabButtons["Home"].Icon,   TweenInfo.new(0), {ImageColor3 = Color3.fromRGB(255,255,255)}):Play()