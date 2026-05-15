local LMG2L = {}
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local TextService = game:GetService("TextService")
local isTextHidden = false
local isSyntaxOn = false
local isNumberLinesOn = false
local isAutoCompleteOn = false
local isClipboardOn = false

local targetParent
pcall(function() targetParent = game:GetService("CoreGui") end)
if not targetParent then targetParent = LocalPlayer:WaitForChild("PlayerGui") end

LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", targetParent)
LMG2L["ScreenGui_1"].SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
LMG2L["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LMG2L["ScreenGui_1"].ResetOnSpawn = false
LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"])
LMG2L["Frame_2"].BorderSizePixel = 4
LMG2L["Frame_2"].BackgroundColor3 = Color3.fromRGB(230, 230, 230)
LMG2L["Frame_2"].Size = UDim2.new(0, 630, 0, 620)
LMG2L["Frame_2"].AnchorPoint = Vector2.new(0.5, 0.5)
LMG2L["Frame_2"].Position = UDim2.new(0.5, 0, 0.5, 0)
LMG2L["Frame_2"].Visible = true
LMG2L["Title_b"] = Instance.new("TextLabel", LMG2L["Frame_2"])
LMG2L["Title_b"].BorderSizePixel = 4
LMG2L["Title_b"].TextSize = 30
LMG2L["Title_b"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Title_b"].TextYAlignment = Enum.TextYAlignment.Bottom
LMG2L["Title_b"].BackgroundColor3 = Color3.fromRGB(192, 192, 192)
LMG2L["Title_b"].FontFace = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]])
LMG2L["Title_b"].Size = UDim2.new(0, 630, 0, 38)
LMG2L["Title_b"].Position = UDim2.new(0, 0, 0, 0)
LMG2L["Title_b"].Text = [[      Project IAMEPIC ]]
LMG2L["Title_b"].Name = [[Title]]
LMG2L["Title_b"].ZIndex = 5
LMG2L["Tagline label_5"] = Instance.new("TextLabel", LMG2L["Frame_2"])
LMG2L["Tagline label_5"].BorderSizePixel = 0
LMG2L["Tagline label_5"].TextSize = 24
LMG2L["Tagline label_5"].BackgroundColor3 = Color3.fromRGB(192, 192, 192)
LMG2L["Tagline label_5"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Tagline label_5"].Size = UDim2.new(0, 216, 0, 26)
LMG2L["Tagline label_5"].Text = [[â€” The epic roblox executor]]
LMG2L["Tagline label_5"].Name = [[Tagline label]]
LMG2L["Tagline label_5"].Position = UDim2.new(0, 246, 0, 6)
LMG2L["Frame_10"] = Instance.new("Frame", LMG2L["Frame_2"])
LMG2L["Frame_10"].BorderSizePixel = 4
LMG2L["Frame_10"].BackgroundColor3 = Color3.fromRGB(143, 143, 143)
LMG2L["Frame_10"].Size = UDim2.new(0, 152, 0, 292)
LMG2L["Frame_10"].Position = UDim2.new(0, 464, 0, 52)
LMG2L["Frame_10"].Name = [[Frame_10]]
LMG2L["Frame_10"].ZIndex = 2
LMG2L["EditorScroll"] = Instance.new("ScrollingFrame", LMG2L["Frame_2"])
LMG2L["EditorScroll"].Name = "EditorScroll"
LMG2L["EditorScroll"].Position = UDim2.new(0, 18, 0, 52)
LMG2L["EditorScroll"].Size = UDim2.new(0, 428, 0, 292)
LMG2L["EditorScroll"].BackgroundColor3 = Color3.fromRGB(202, 202, 202)
LMG2L["EditorScroll"].BorderSizePixel = 4
LMG2L["EditorScroll"].ScrollBarThickness = 6
LMG2L["EditorScroll"].CanvasSize = UDim2.new(0, 428, 0, 292)
LMG2L["EditorScroll"].ScrollingDirection = Enum.ScrollingDirection.XY
LMG2L["EditorScroll"].AutomaticCanvasSize = Enum.AutomaticSize.None
LMG2L["EditorScroll"].ElasticBehavior = Enum.ElasticBehavior.Never
LMG2L["EditorScroll"].ClipsDescendants = true
LMG2L["NumberLinesLabel"] = Instance.new("TextLabel", LMG2L["EditorScroll"])
LMG2L["NumberLinesLabel"].Name = "NumberLinesLabel"
LMG2L["NumberLinesLabel"].Position = UDim2.new(0, 0, 0, 0)
LMG2L["NumberLinesLabel"].Size = UDim2.new(0, 28, 0, 292)
LMG2L["NumberLinesLabel"].BackgroundColor3 = Color3.fromRGB(172, 172, 172)
LMG2L["NumberLinesLabel"].BorderSizePixel = 0
LMG2L["NumberLinesLabel"].TextSize = 20
LMG2L["NumberLinesLabel"].TextXAlignment = Enum.TextXAlignment.Right
LMG2L["NumberLinesLabel"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["NumberLinesLabel"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["NumberLinesLabel"].TextColor3 = Color3.fromRGB(80, 80, 80)
LMG2L["NumberLinesLabel"].Text = ""
LMG2L["NumberLinesLabel"].Visible = false
LMG2L["NumberLinesLabel"].ZIndex = 3
LMG2L["Editor_c"] = Instance.new("TextBox", LMG2L["EditorScroll"])
LMG2L["Editor_c"].Name = [[Editor]]
LMG2L["Editor_c"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Editor_c"].BorderSizePixel = 0
LMG2L["Editor_c"].TextSize = 20
LMG2L["Editor_c"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["Editor_c"].BackgroundColor3 = Color3.fromRGB(202, 202, 202)
LMG2L["Editor_c"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Editor_c"].MultiLine = true
LMG2L["Editor_c"].ClearTextOnFocus = false
LMG2L["Editor_c"].PlaceholderText = [[print("Project IAmEpic")]]
LMG2L["Editor_c"].Size = UDim2.new(0, 428, 0, 292)
LMG2L["Editor_c"].Position = UDim2.new(0, 0, 0, 0)
LMG2L["Editor_c"].Text = [[]]
LMG2L["Editor_c"].ZIndex = 2
LMG2L["EditorOverlay"] = Instance.new("TextLabel", LMG2L["EditorScroll"])
LMG2L["EditorOverlay"].Name = "EditorOverlay"
LMG2L["EditorOverlay"].Position = UDim2.new(0, 0, 0, 0)
LMG2L["EditorOverlay"].Size = UDim2.new(0, 428, 0, 292)
LMG2L["EditorOverlay"].BackgroundTransparency = 1
LMG2L["EditorOverlay"].BorderSizePixel = 0
LMG2L["EditorOverlay"].TextSize = 20
LMG2L["EditorOverlay"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["EditorOverlay"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["EditorOverlay"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["EditorOverlay"].TextColor3 = Color3.fromRGB(30, 30, 30)
LMG2L["EditorOverlay"].RichText = true
LMG2L["EditorOverlay"].Text = ""
LMG2L["EditorOverlay"].Visible = false
LMG2L["EditorOverlay"].ZIndex = 3
LMG2L["ScriptsScroll"] = Instance.new("ScrollingFrame", LMG2L["Frame_10"])
LMG2L["ScriptsScroll"].Name = "ScriptsScroll"
LMG2L["ScriptsScroll"].Position = UDim2.new(0, 0, 0, 0)
LMG2L["ScriptsScroll"].Size = UDim2.new(1, 0, 1, 0)
LMG2L["ScriptsScroll"].BackgroundColor3 = Color3.fromRGB(143, 143, 143)
LMG2L["ScriptsScroll"].BorderSizePixel = 0
LMG2L["ScriptsScroll"].ScrollBarThickness = 6
LMG2L["ScriptsScroll"].AutomaticCanvasSize = Enum.AutomaticSize.Y
LMG2L["ScriptsScroll"].CanvasSize = UDim2.new(0, 0, 0, 0)
LMG2L["ScriptsScroll"].ScrollingDirection = Enum.ScrollingDirection.Y
LMG2L["ScriptsScroll"].ElasticBehavior = Enum.ElasticBehavior.Never
LMG2L["ScriptsScroll"].ClipsDescendants = true
local ScriptsLayout = Instance.new("UIListLayout", LMG2L["ScriptsScroll"])
ScriptsLayout.SortOrder = Enum.SortOrder.LayoutOrder
ScriptsLayout.Padding = UDim.new(0, 4)
local ScriptsPad = Instance.new("UIPadding", LMG2L["ScriptsScroll"])
ScriptsPad.PaddingTop = UDim.new(0, 4)
ScriptsPad.PaddingLeft = UDim.new(0, 4)
ScriptsPad.PaddingRight = UDim.new(0, 4)
LMG2L["Execute button_7"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Execute button_7"].TextWrapped = true
LMG2L["Execute button_7"].BorderSizePixel = 4
LMG2L["Execute button_7"].TextSize = 36
LMG2L["Execute button_7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Execute button_7"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Execute button_7"].BorderMode = Enum.BorderMode.Inset
LMG2L["Execute button_7"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Execute button_7"].Text = [[Execute]]
LMG2L["Execute button_7"].Name = [[Execute button]]
LMG2L["Execute button_7"].Position = UDim2.new(0, 14, 0, 364)
LMG2L["Copy button_4"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Copy button_4"].TextWrapped = true
LMG2L["Copy button_4"].BorderSizePixel = 4
LMG2L["Copy button_4"].TextSize = 36
LMG2L["Copy button_4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Copy button_4"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Copy button_4"].BorderMode = Enum.BorderMode.Inset
LMG2L["Copy button_4"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Copy button_4"].Text = [[Copy]]
LMG2L["Copy button_4"].Name = [[Copy button]]
LMG2L["Copy button_4"].Position = UDim2.new(0, 338, 0, 368)
LMG2L["Clear button_a"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Clear button_a"].TextWrapped = true
LMG2L["Clear button_a"].BorderSizePixel = 4
LMG2L["Clear button_a"].TextSize = 36
LMG2L["Clear button_a"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Clear button_a"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Clear button_a"].BorderMode = Enum.BorderMode.Inset
LMG2L["Clear button_a"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Clear button_a"].Text = [[Clear]]
LMG2L["Clear button_a"].Name = [[Clear button]]
LMG2L["Clear button_a"].Position = UDim2.new(0, 174, 0, 366)
LMG2L["Inject button_9"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Inject button_9"].BorderSizePixel = 4
LMG2L["Inject button_9"].TextSize = 36
LMG2L["Inject button_9"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Inject button_9"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Inject button_9"].BorderMode = Enum.BorderMode.Inset
LMG2L["Inject button_9"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Inject button_9"].Text = [[Inject]]
LMG2L["Inject button_9"].Name = [[Inject button]]
LMG2L["Inject button_9"].Position = UDim2.new(0, 506, 0, 370)
LMG2L["Respawn button_8"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Respawn button_8"].BorderSizePixel = 4
LMG2L["Respawn button_8"].TextSize = 34
LMG2L["Respawn button_8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Respawn button_8"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Respawn button_8"].BorderMode = Enum.BorderMode.Inset
LMG2L["Respawn button_8"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Respawn button_8"].Text = [[Respawn]]
LMG2L["Respawn button_8"].Name = [[Respawn button]]
LMG2L["Respawn button_8"].Position = UDim2.new(0, 176, 0, 420)
LMG2L["Hide text button_6"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Hide text button_6"].BorderSizePixel = 4
LMG2L["Hide text button_6"].TextSize = 36
LMG2L["Hide text button_6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Hide text button_6"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Hide text button_6"].BorderMode = Enum.BorderMode.Inset
LMG2L["Hide text button_6"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Hide text button_6"].Text = [[Hide]]
LMG2L["Hide text button_6"].Name = [[Hide text button]]
LMG2L["Hide text button_6"].Position = UDim2.new(0, 340, 0, 420)
LMG2L["Console button_3"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Console button_3"].BorderSizePixel = 4
LMG2L["Console button_3"].TextSize = 36
LMG2L["Console button_3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Console button_3"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Console button_3"].BorderMode = Enum.BorderMode.Inset
LMG2L["Console button_3"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Console button_3"].Text = [[Console]]
LMG2L["Console button_3"].Name = [[Console button]]
LMG2L["Console button_3"].Position = UDim2.new(0, 504, 0, 420)
LMG2L["R6 rig button_11"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["R6 rig button_11"].BorderSizePixel = 4
LMG2L["R6 rig button_11"].TextSize = 36
LMG2L["R6 rig button_11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["R6 rig button_11"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["R6 rig button_11"].BorderMode = Enum.BorderMode.Inset
LMG2L["R6 rig button_11"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["R6 rig button_11"].Text = [[R6 Rig]]
LMG2L["R6 rig button_11"].Name = [[R6 rig button]]
LMG2L["R6 rig button_11"].Position = UDim2.new(0, 14, 0, 420)
LMG2L["Cmds textbox_d"] = Instance.new("TextBox", LMG2L["Frame_2"])
LMG2L["Cmds textbox_d"].Name = [[Cmds textbox]]
LMG2L["Cmds textbox_d"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Cmds textbox_d"].BorderSizePixel = 4
LMG2L["Cmds textbox_d"].TextSize = 18
LMG2L["Cmds textbox_d"].TextColor3 = Color3.fromRGB(28, 43, 54)
LMG2L["Cmds textbox_d"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Cmds textbox_d"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Cmds textbox_d"].BorderMode = Enum.BorderMode.Inset
LMG2L["Cmds textbox_d"].PlaceholderText = [[Type "/help" for commands!]]
LMG2L["Cmds textbox_d"].Size = UDim2.new(0, 476, 0, 36)
LMG2L["Cmds textbox_d"].Position = UDim2.new(0, 14, 0, 552)
LMG2L["Cmds textbox_d"].Text = [[]]
LMG2L["Run Command button_e"] = Instance.new("TextButton", LMG2L["Cmds textbox_d"])
LMG2L["Run Command button_e"].BorderSizePixel = 4
LMG2L["Run Command button_e"].TextSize = 24
LMG2L["Run Command button_e"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Run Command button_e"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Run Command button_e"].BorderMode = Enum.BorderMode.Inset
LMG2L["Run Command button_e"].Size = UDim2.new(0, 130, 0, 36)
LMG2L["Run Command button_e"].Text = [[Run Command]]
LMG2L["Run Command button_e"].Name = [[Run Command button]]
LMG2L["Run Command button_e"].Position = UDim2.new(0, 478, 0, -4)
LMG2L["Next page button_f"] = Instance.new("TextButton", LMG2L["Run Command button_e"])
LMG2L["Next page button_f"].BorderSizePixel = 4
LMG2L["Next page button_f"].TextSize = 18
LMG2L["Next page button_f"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Next page button_f"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Next page button_f"].BorderMode = Enum.BorderMode.Inset
LMG2L["Next page button_f"].Size = UDim2.new(0, 116, 0, 22)
LMG2L["Next page button_f"].Text = [[Settings]]
LMG2L["Next page button_f"].Name = [[Next page button]]
LMG2L["Next page button_f"].Position = UDim2.new(0, 18, 0, 46)
LMG2L["SettingsFrame"] = Instance.new("Frame", LMG2L["ScreenGui_1"])
LMG2L["SettingsFrame"].BorderSizePixel = 4
LMG2L["SettingsFrame"].BackgroundColor3 = Color3.fromRGB(230, 230, 230)
LMG2L["SettingsFrame"].Size = UDim2.new(0, 630, 0, 570)
LMG2L["SettingsFrame"].AnchorPoint = Vector2.new(0.5, 0.5)
LMG2L["SettingsFrame"].Position = UDim2.new(0.5, 0, 0.5, 0)
LMG2L["SettingsFrame"].Visible = false
LMG2L["SettingsFrame"].Name = "SettingsFrame"
LMG2L["Title_f"] = Instance.new("TextLabel", LMG2L["SettingsFrame"])
LMG2L["Title_f"].BorderSizePixel = 4
LMG2L["Title_f"].TextSize = 39
LMG2L["Title_f"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Title_f"].BackgroundColor3 = Color3.fromRGB(230, 230, 230)
LMG2L["Title_f"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Title_f"].Size = UDim2.new(0, 632, 0, 46)
LMG2L["Title_f"].Text = [[Project IAmEpic | Settings]]
LMG2L["Title_f"].Name = [[Title]]
LMG2L["Title_f"].Position = UDim2.new(0, -2, 0, 0)
LMG2L["Title_f"].ZIndex = 5
LMG2L["Allow clipboard button_3"] = Instance.new("TextButton", LMG2L["SettingsFrame"])
LMG2L["Allow clipboard button_3"].BorderSizePixel = 0
LMG2L["Allow clipboard button_3"].TextSize = 39
LMG2L["Allow clipboard button_3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Allow clipboard button_3"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Allow clipboard button_3"].Size = UDim2.new(0, 306, 0, 52)
LMG2L["Allow clipboard button_3"].Text = [[Allow clipboard]]
LMG2L["Allow clipboard button_3"].Name = [[Allow clipboard button]]
LMG2L["Allow clipboard button_3"].Position = UDim2.new(0, 12, 0, 250)
Instance.new("UICorner", LMG2L["Allow clipboard button_3"])
LMG2L["Allow clipboard description label_5"] = Instance.new("TextLabel", LMG2L["Allow clipboard button_3"])
LMG2L["Allow clipboard description label_5"].TextWrapped = true
LMG2L["Allow clipboard description label_5"].BorderSizePixel = 0
LMG2L["Allow clipboard description label_5"].TextSize = 24
LMG2L["Allow clipboard description label_5"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Allow clipboard description label_5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Allow clipboard description label_5"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Allow clipboard description label_5"].Size = UDim2.new(0, 302, 0, 72)
LMG2L["Allow clipboard description label_5"].Text = [[Allow executor from setting text to clipboard.]]
LMG2L["Allow clipboard description label_5"].Name = [[Allow clipboard description label]]
LMG2L["Allow clipboard description label_5"].Position = UDim2.new(0, 312, 0, -8)
Instance.new("UICorner", LMG2L["Allow clipboard description label_5"])
LMG2L["Syntax highlight button_7"] = Instance.new("TextButton", LMG2L["SettingsFrame"])
LMG2L["Syntax highlight button_7"].BorderSizePixel = 0
LMG2L["Syntax highlight button_7"].TextSize = 39
LMG2L["Syntax highlight button_7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Syntax highlight button_7"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Syntax highlight button_7"].Size = UDim2.new(0, 306, 0, 56)
LMG2L["Syntax highlight button_7"].Text = [[Syntax Highlight]]
LMG2L["Syntax highlight button_7"].Name = [[Syntax highlight button]]
LMG2L["Syntax highlight button_7"].Position = UDim2.new(0, 12, 0, 64)
Instance.new("UICorner", LMG2L["Syntax highlight button_7"])
LMG2L["Syntax highlight description label_9"] = Instance.new("TextLabel", LMG2L["Syntax highlight button_7"])
LMG2L["Syntax highlight description label_9"].TextWrapped = true
LMG2L["Syntax highlight description label_9"].BorderSizePixel = 0
LMG2L["Syntax highlight description label_9"].TextSize = 24
LMG2L["Syntax highlight description label_9"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Syntax highlight description label_9"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Syntax highlight description label_9"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Syntax highlight description label_9"].Size = UDim2.new(0, 302, 0, 72)
LMG2L["Syntax highlight description label_9"].Text = [[Highlights the syntax in the code for checking errors & Improve coding.]]
LMG2L["Syntax highlight description label_9"].Name = [[Syntax highlight description label]]
LMG2L["Syntax highlight description label_9"].Position = UDim2.new(0, 312, 0, -8)
Instance.new("UICorner", LMG2L["Syntax highlight description label_9"])
LMG2L["Numberlines button_b"] = Instance.new("TextButton", LMG2L["SettingsFrame"])
LMG2L["Numberlines button_b"].BorderSizePixel = 0
LMG2L["Numberlines button_b"].TextSize = 39
LMG2L["Numberlines button_b"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Numberlines button_b"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Numberlines button_b"].Size = UDim2.new(0, 306, 0, 52)
LMG2L["Numberlines button_b"].Text = [[NumberLines]]
LMG2L["Numberlines button_b"].Name = [[Numberlines button]]
LMG2L["Numberlines button_b"].Position = UDim2.new(0, 14, 0, 158)
Instance.new("UICorner", LMG2L["Numberlines button_b"])
LMG2L["Numberlines description label_d"] = Instance.new("TextLabel", LMG2L["Numberlines button_b"])
LMG2L["Numberlines description label_d"].TextWrapped = true
LMG2L["Numberlines description label_d"].BorderSizePixel = 0
LMG2L["Numberlines description label_d"].TextSize = 24
LMG2L["Numberlines description label_d"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Numberlines description label_d"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Numberlines description label_d"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Numberlines description label_d"].Size = UDim2.new(0, 302, 0, 72)
LMG2L["Numberlines description label_d"].Text = [[Good for coding, Easy to find syntax errors and better for coding.]]
LMG2L["Numberlines description label_d"].Name = [[Numberlines description label]]
LMG2L["Numberlines description label_d"].Position = UDim2.new(0, 310, 0, -8)
Instance.new("UICorner", LMG2L["Numberlines description label_d"])
LMG2L["Auto-complete button_10"] = Instance.new("TextButton", LMG2L["SettingsFrame"])
LMG2L["Auto-complete button_10"].BorderSizePixel = 0
LMG2L["Auto-complete button_10"].TextSize = 48
LMG2L["Auto-complete button_10"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Auto-complete button_10"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Auto-complete button_10"].Size = UDim2.new(0, 306, 0, 52)
LMG2L["Auto-complete button_10"].Text = [[Auto-Complete]]
LMG2L["Auto-complete button_10"].Name = [[Auto-complete button]]
LMG2L["Auto-complete button_10"].Position = UDim2.new(0, 10, 0, 354)
Instance.new("UICorner", LMG2L["Auto-complete button_10"])
LMG2L["Auto-complete description label_12"] = Instance.new("TextLabel", LMG2L["Auto-complete button_10"])
LMG2L["Auto-complete description label_12"].TextWrapped = true
LMG2L["Auto-complete description label_12"].BorderSizePixel = 0
LMG2L["Auto-complete description label_12"].TextSize = 24
LMG2L["Auto-complete description label_12"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Auto-complete description label_12"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Auto-complete description label_12"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Auto-complete description label_12"].Size = UDim2.new(0, 302, 0, 72)
LMG2L["Auto-complete description label_12"].Text = [[Good for coding, Makes scripting fast, easier and reduces errors.]]
LMG2L["Auto-complete description label_12"].Name = [[Auto-complete description label]]
LMG2L["Auto-complete description label_12"].Position = UDim2.new(0, 312, 0, -6)
Instance.new("UICorner", LMG2L["Auto-complete description label_12"])
LMG2L["Reset settings button_14"] = Instance.new("TextButton", LMG2L["SettingsFrame"])
LMG2L["Reset settings button_14"].BorderSizePixel = 0
LMG2L["Reset settings button_14"].TextSize = 50
LMG2L["Reset settings button_14"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Reset settings button_14"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Reset settings button_14"].Size = UDim2.new(0, 584, 0, 46)
LMG2L["Reset settings button_14"].Text = [[Reset Settings]]
LMG2L["Reset settings button_14"].Name = [[Reset settings button]]
LMG2L["Reset settings button_14"].Position = UDim2.new(0, 20, 0, 454)
LMG2L["Executor page button_15"] = Instance.new("TextButton", LMG2L["SettingsFrame"])
LMG2L["Executor page button_15"].BorderSizePixel = 4
LMG2L["Executor page button_15"].TextSize = 29
LMG2L["Executor page button_15"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Executor page button_15"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Executor page button_15"].Size = UDim2.new(0, 102, 0, 26)
LMG2L["Executor page button_15"].Text = [[Executor]]
LMG2L["Executor page button_15"].Name = [[Executor page button]]
LMG2L["Executor page button_15"].Position = UDim2.new(0, 0, 0, 544)
local function SetToggleColor(btn, isOn)
    if isOn then
        btn.BackgroundColor3 = Color3.fromRGB(100, 200, 120)
    else
        btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    end
end
local function ApplySyntaxHighlight()
    local text = LMG2L["Editor_c"].Text
    if text == "" then
        LMG2L["Editor_c"].TextTransparency = 0
        LMG2L["EditorOverlay"].Text = ""
        LMG2L["EditorOverlay"].Visible = false
        return
    end
    if isTextHidden then
        LMG2L["Editor_c"].TextTransparency = 1
        LMG2L["EditorOverlay"].Visible = false
        return
    end
    if not isSyntaxOn then
        LMG2L["Editor_c"].TextTransparency = 0
        LMG2L["EditorOverlay"].Visible = false
        local bounds = TextService:GetTextSize(text, LMG2L["Editor_c"].TextSize, Enum.Font.DenkOne, Vector2.new(math.huge, math.huge))
        local newX = math.max(428, bounds.X + 30)
        local newY = math.max(292, bounds.Y + 30)
        LMG2L["Editor_c"].Size = UDim2.new(0, newX, 0, newY)
        LMG2L["EditorOverlay"].Size = UDim2.new(0, newX, 0, newY)
        LMG2L["EditorScroll"].CanvasSize = UDim2.new(0, newX, 0, newY)
        return
    end
    LMG2L["Editor_c"].TextTransparency = 1
    LMG2L["EditorOverlay"].Visible = true
    local h = text:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")
    h = h:gsub("(%-%-[^\n]*)", function(s) return "\007"..s.."\008" end)
    h = h:gsub('("[^"]*")', function(s) return "\003"..s.."\004" end)
    h = h:gsub("('[^']*')", function(s) return "\003"..s.."\004" end)
    local keywords = {
    "and","break","do","else","elseif","end","false","for","function",
    "if","in","local","nil","not","or","repeat","return","then","true",
    "until","while","require","game","workspace","script","parent","print","warn","wait",
    "Players","RunService","TweenService","UserInputService","ReplicatedStorage",
    "ServerStorage","ServerScriptService","Lighting","SoundService","StarterGui",
    "StarterPlayer","StarterCharacterScripts","StarterPlayerScripts","Teams","Chat",
    "MarketplaceService","BadgeService","DataStoreService","HttpService","PathfindingService",
    "PhysicsService","CollectionService","GuiService","ContextActionService","TeleportService",
    "AnalyticsService","AssetService","AvatarEditorService","CoreGui","GroupService",
    "InsertService","KeyframeSequenceProvider","LocalizationService","MemoryStoreService",
    "MessagingService","NetworkClient","NetworkServer","NotificationService","PolicyService",
    "RemoteEvent","RemoteFunction","BindableEvent","BindableFunction","ScriptContext",
    "Part","Model","Frame","ScreenGui","SurfaceGui","BillboardGui","ImageLabel",
    "ImageButton","TextLabel","TextButton","TextBox","ScrollingFrame","ViewportFrame",
    "LocalScript","Script","ModuleScript","StringValue","IntValue","NumberValue",
    "BoolValue","ObjectValue","Color3Value","Vector3Value","CFrameValue","RayValue",
    "Folder","Configuration","Tool","Humanoid","HumanoidRootPart","CharacterMesh",
    "Accessory","Animation","AnimationController","AnimationTrack","Motor6D","Weld",
    "WeldConstraint","HingeConstraint","BallSocketConstraint","RodConstraint","RopeConstraint",
    "SpringConstraint","TorsionSpringConstraint","Attachment","Beam","Trail","Smoke",
    "Fire","Sparkles","PointLight","SpotLight","SurfaceLight","SelectionBox","SelectionSphere",
    "Sound","SoundGroup","EqualizerSoundEffect","ReverbSoundEffect","DistortionSoundEffect",
    "PitchShiftSoundEffect","ChorusSoundEffect","CompressorSoundEffect","FlangeSoundEffect",
    "SpecialMesh","CylinderMesh","BlockMesh","FileMesh","Sky","Atmosphere","Clouds",
    "BodyVelocity","BodyAngularVelocity","BodyForce","BodyGyro","BodyPosition","BodyThrust",
    "VectorForce","AlignPosition","AlignOrientation","LineForce","Torque",
    "Instance","Vector3","Vector2","CFrame","Color3","UDim2","UDim","Enum",
    "BrickColor","Ray","Region3","NumberSequence","ColorSequence","TweenInfo",
    "Rect","Random","tick","time","task","pairs","ipairs","next","select",
    "unpack","type","typeof","tostring","tonumber","rawget","rawset","rawequal",
    "rawlen","setmetatable","getmetatable","pcall","xpcall","error","assert",
    "FindFirstChild","FindFirstChildOfClass","FindFirstAncestor","FindFirstAncestorOfClass",
    "WaitForChild","GetChildren","GetDescendants","IsA","IsDescendantOf",
    "Clone","Destroy","Remove","GetPropertyChangedSignal","Changed",
    "Connect","Disconnect","Fire","Wait","Once","new","fromEulerAnglesXYZ",
    "fromOrientation","lookAt","Angles","identity","fromMatrix","pointToWorldSpace",
    "pointToObjectSpace","vectorToWorldSpace","vectorToObjectSpace","inverse","lerp",
    "Name","Parent","Archivable","ClassName","Position","Size","Rotation",
    "Transparency","Visible","Enabled","Value","Text","Color","Material",
    "Anchored","CanCollide","Massless","CastShadow","ZIndex","BackgroundColor3",
    "BackgroundTransparency","BorderSizePixel","TextColor3","TextSize","Font",
    "TextWrapped","TextScaled","PlaceholderText","MultiLine","RichText",
    "Image","ImageColor3","ImageTransparency","ScaleType","SliceCenter",
    "AnchorPoint","AutomaticSize","ClipsDescendants","Active","Selectable",
    "SizeConstraint","LayoutOrder","AutoButtonColor","Modal","ResetOnSpawn",
    "Health","MaxHealth","WalkSpeed","JumpPower","JumpHeight","AutoRotate",
    "NameDisplayDistance","HealthDisplayDistance","DisplayDistanceType",
    "CameraMaxZoomDistance","CameraMinZoomDistance","CameraMode",
    "math","string","table","coroutine","os","utf8","bit32",
    "insert","remove","concat","sort","find","format","sub","len","upper","lower",
    "rep","reverse","byte","char","gmatch","gsub","match","dump",
    "abs","ceil","floor","sqrt","max","min","huge","pi","random","randomseed",
    "sin","cos","tan","asin","acos","atan","atan2","exp","log","log10","pow","modf","fmod",
    "wrap","resume","yield","status","running","isyieldable","create",
    "clock","date","difftime","spawn","delay","defer","cancel","synchronize",
    "RenderFidelity","LevelOfDetail","NormalId","Axis","ForceFastCast","RaycastFilterType",
    "HumanoidStateType","MoveState","PartType","SurfaceType","SortOrder","FillDirection",
    "HorizontalAlignment","VerticalAlignment","ScaleType","FontWeight","TextXAlignment","TextYAlignment",
}
    for _, k in ipairs(keywords) do
        h = h:gsub("%f[%a]"..k.."%f[%A]", function(kw) return "\005"..kw.."\006" end)
    end
    h = h:gsub("%d+", function(n) return "\001"..n.."\002" end)
    h = h:gsub("\001(.-)\002", '<font color="#63BAD9">%1</font>')
    h = h:gsub("\003(.-)\004", '<font color="#D85BA6">%1</font>')
    h = h:gsub("\005(.-)\006", '<font color="#C8534B">%1</font>')
    h = h:gsub("\007(.-)\008", '<font color="#5B9992">%1</font>')
    LMG2L["EditorOverlay"].Text = h
    local bounds = TextService:GetTextSize(text, LMG2L["Editor_c"].TextSize, Enum.Font.DenkOne, Vector2.new(math.huge, math.huge))
    local newX = math.max(428, bounds.X + 30)
    local newY = math.max(292, bounds.Y + 30)
    LMG2L["Editor_c"].Size = UDim2.new(0, newX, 0, newY)
    LMG2L["EditorOverlay"].Size = UDim2.new(0, newX, 0, newY)
    LMG2L["EditorScroll"].CanvasSize = UDim2.new(0, newX, 0, newY)
end
local function UpdateNumberLines()
    if not isNumberLinesOn then
        LMG2L["NumberLinesLabel"].Visible = false
        LMG2L["Editor_c"].Position = UDim2.new(0, 0, 0, 0)
        LMG2L["EditorOverlay"].Position = UDim2.new(0, 0, 0, 0)
        return
    end
    local text = LMG2L["Editor_c"].Text
    local lines = 1
    for _ in text:gmatch("\n") do lines = lines + 1 end
    local lineStr = ""
    for i = 1, lines do
        lineStr = lineStr .. tostring(i) .. (i < lines and "\n" or "")
    end
    local bounds = TextService:GetTextSize(text, LMG2L["Editor_c"].TextSize, Enum.Font.DenkOne, Vector2.new(math.huge, math.huge))
    local newY = math.max(292, bounds.Y + 30)
    LMG2L["NumberLinesLabel"].Text = lineStr
    LMG2L["NumberLinesLabel"].Size = UDim2.new(0, 28, 0, newY)
    LMG2L["NumberLinesLabel"].Visible = true
    LMG2L["Editor_c"].Position = UDim2.new(0, 30, 0, 0)
    LMG2L["EditorOverlay"].Position = UDim2.new(0, 30, 0, 0)
end
local autoCompleteKeywords = {
    "and","break","do","else","elseif","end","false","for","function","if","in",
    "local","nil","not","or","repeat","return","then","true","until","while",
    "require","game","workspace","script","print","warn","wait","pairs","ipairs",
    "Instance","Color3","UDim2","Vector3","Vector2","CFrame","Enum","math","table","string",
    "Players","RunService","TweenService","UserInputService","ReplicatedStorage",
    "ServerStorage","ServerScriptService","Lighting","SoundService","StarterGui",
    "StarterPlayer","MarketplaceService","BadgeService","DataStoreService","HttpService",
    "PathfindingService","PhysicsService","CollectionService","GuiService","TeleportService",
    "ContextActionService","MessagingService","MemoryStoreService","PolicyService","GroupService",
    "InsertService","LocalizationService","AnalyticsService","AssetService","CoreGui",
    "RemoteEvent","RemoteFunction","BindableEvent","BindableFunction",
    "Part","Model","Frame","ScreenGui","SurfaceGui","BillboardGui","ImageLabel",
    "ImageButton","TextLabel","TextButton","TextBox","ScrollingFrame","ViewportFrame",
    "LocalScript","Script","ModuleScript","StringValue","IntValue","NumberValue",
    "BoolValue","ObjectValue","Color3Value","Vector3Value","CFrameValue","Folder",
    "Tool","Humanoid","HumanoidRootPart","Accessory","Animation","AnimationTrack",
    "AnimationController","Motor6D","Weld","WeldConstraint","HingeConstraint",
    "BallSocketConstraint","RodConstraint","RopeConstraint","SpringConstraint",
    "Attachment","Beam","Trail","Smoke","Fire","Sparkles","Sound","SoundGroup",
    "PointLight","SpotLight","SurfaceLight","SelectionBox","SelectionSphere",
    "SpecialMesh","CylinderMesh","BlockMesh","Sky","Atmosphere","Clouds",
    "BodyVelocity","BodyAngularVelocity","BodyForce","BodyGyro","BodyPosition",
    "VectorForce","AlignPosition","AlignOrientation","Torque","Configuration",
    "FindFirstChild","FindFirstChildOfClass","FindFirstAncestor","FindFirstAncestorOfClass",
    "WaitForChild","GetChildren","GetDescendants","GetService","IsA","IsDescendantOf",
    "Clone","Destroy","Remove","Connect","Disconnect","Fire","Wait","Once",
    "GetPropertyChangedSignal","Changed","new","fromEulerAnglesXYZ","fromOrientation",
    "lookAt","Angles","identity","fromMatrix","pointToWorldSpace","pointToObjectSpace",
    "vectorToWorldSpace","vectorToObjectSpace","inverse","lerp","toWorldSpace",
    "toObjectSpace","components","fuzzyEq","cross","dot","Magnitude","Unit","zero","one",
    "tick","time","task","type","typeof","tostring","tonumber","select","next","unpack",
    "rawget","rawset","rawequal","rawlen","setmetatable","getmetatable","pcall","xpcall",
    "error","assert","load","loadstring","coroutine","os","utf8","bit32","spawn","delay",
    "defer","cancel","wrap","resume","yield","status","running","create",
    "insert","remove","concat","sort","move","unpack","find","format","sub","len",
    "upper","lower","rep","reverse","byte","char","gmatch","gsub","match","dump",
    "abs","ceil","floor","sqrt","max","min","huge","pi","random","randomseed",
    "sin","cos","tan","asin","acos","atan","atan2","exp","log","modf","fmod","pow","clamp",
    "Name","Parent","ClassName","Archivable","Position","Size","Rotation","Orientation",
    "CFrame","Transparency","Visible","Enabled","Value","Text","Color","Material",
    "Anchored","CanCollide","Massless","CastShadow","ZIndex","BackgroundColor3",
    "BackgroundTransparency","BorderSizePixel","TextColor3","TextSize","Font",
    "TextWrapped","TextScaled","PlaceholderText","MultiLine","RichText",
    "Image","ImageColor3","ImageTransparency","ScaleType","AnchorPoint",
    "AutomaticSize","ClipsDescendants","Active","Selectable","LayoutOrder",
    "Health","MaxHealth","WalkSpeed","JumpPower","JumpHeight","AutoRotate",
    "RenderFidelity","HumanoidStateType","PartType","SurfaceType","NormalId",
    "RaycastFilterType","SortOrder","FillDirection","HorizontalAlignment","VerticalAlignment",
    "FontWeight","TextXAlignment","TextYAlignment","TweenInfo","RaycastParams","RaycastResult",
    "BrickColor","Ray","Region3","NumberSequence","ColorSequence","Rect","Random",
    "NumberRange","PathWaypoint","OverlapParams","SharedTable","DateTime","task",
}
local function TryAutoComplete(text)
    if not isAutoCompleteOn then return text end
    local lastWord = text:match("[%a_][%w_]*$")
    if not lastWord or #lastWord < 2 then return text end
    for _, kw in ipairs(autoCompleteKeywords) do
        if kw:sub(1, #lastWord):lower() == lastWord:lower() and kw ~= lastWord then
            return text:sub(1, #text - #lastWord) .. kw
        end
    end
    return text
end
local function ResetAllSettings()
    isSyntaxOn = false
    isNumberLinesOn = false
    isAutoCompleteOn = false
    isClipboardOn = false
    SetToggleColor(LMG2L["Syntax highlight button_7"], false)
    SetToggleColor(LMG2L["Numberlines button_b"], false)
    SetToggleColor(LMG2L["Auto-complete button_10"], false)
    SetToggleColor(LMG2L["Allow clipboard button_3"], false)
    LMG2L["Editor_c"].TextTransparency = 0
    LMG2L["EditorOverlay"].Visible = false
    LMG2L["NumberLinesLabel"].Visible = false
    LMG2L["Editor_c"].Position = UDim2.new(0, 0, 0, 0)
    LMG2L["EditorOverlay"].Position = UDim2.new(0, 0, 0, 0)
end
local function isGameSupported()
    local supported = false
    pcall(function()
        if syn or KRNL_LOADED or pebc_execute or fluxus or getgenv then supported = true end
    end)
    return supported
end
local function MakeDraggable(frame, handle)
    local dragging = false
    local dragStart, startPos
    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
        end
    end)
    handle.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end
MakeDraggable(LMG2L["Frame_2"], LMG2L["Title_b"])
MakeDraggable(LMG2L["Frame_2"], LMG2L["Frame_10"])
MakeDraggable(LMG2L["SettingsFrame"], LMG2L["Title_f"])
local function ShowExecutor()
    LMG2L["Frame_2"].Visible = true
    LMG2L["SettingsFrame"].Visible = false
end
local function ShowSettings()
    LMG2L["Frame_2"].Visible = false
    LMG2L["SettingsFrame"].Visible = true
end
local scriptExamples = {
    {
    name = "GreenHat.lua", 
    code = [[
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local tool = Instance.new("Tool")
tool.Name = "GreenHat"
tool.ToolTip = "By Lua Land"
tool.Parent = plr.Backpack
local part = Instance.new("Part")
part.Name = "Handle"
part.Size = Vector3.new(1, 1, 1)
part.Parent = tool
local handle = Instance.new("SpecialMesh", part)
handle.MeshId = "rbxassetid://15141943640"
handle.TextureId = "rbxassetid://15141943722"
tool.Activated:Connect(function()
    local proj = Instance.new("Part")
    proj.Size = Vector3.new(2, 2, 2)
    proj.CanCollide = true
    proj.Position = part.Position
    proj.Parent = workspace
    local m = Instance.new("SpecialMesh", proj)
    m.MeshId = "rbxassetid://15141943640"
    m.TextureId = "rbxassetid://15141943722"
    local dir = (mouse.Hit.p - part.Position).Unit
    local bv = Instance.new("BodyVelocity", proj)
    bv.MaxForce = Vector3.new(1, 1, 1) * math.huge
    bv.Velocity = dir * 250
    proj.Touched:Connect(function(hit)
        local hum = hit.Parent:FindFirstChild("Humanoid")
        if hum and hit.Parent.Name ~= plr.Name then
            hum.Health -= 10
            proj:Destroy()
        end
    end)
    game:GetService("Debris"):AddItem(proj, 5)
end)
]]
},
        {
        name = "c00lSkybox.lua",
        code = [[
local skyID = 113683131806910
local s = Instance.new("Sky")
s.Name = "SKY"
s.SkyboxBk = "http://www.roblox.com/asset/?id="..skyID
s.SkyboxDn = "http://www.roblox.com/asset/?id="..skyID
s.SkyboxFt = "http://www.roblox.com/asset/?id="..skyID
s.SkyboxLf = "http://www.roblox.com/asset/?id="..skyID
s.SkyboxRt = "http://www.roblox.com/asset/?id="..skyID
s.SkyboxUp = "http://www.roblox.com/asset/?id="..skyID
s.Parent = game.Lighting
]]
    },
        {
        name = "c00lDecal.lua",
        code = [[
local decalID = 113683131806910
for _, v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Part") then
        for i = 0, 5 do
            local d = Instance.new("Decal")
            d.Name = "MYDECALHUE"
            d.Face = i
            d.Parent = v
            d.Texture = "http://www.roblox.com/asset/?id="..decalID
        end
    elseif v:IsA("Model") then
        for _, b in pairs(v:GetChildren()) do
            if b:IsA("Part") then
                for i = 0, 5 do
                    local d = Instance.new("Decal")
                    d.Name = "MYDECALHUE"
                    d.Face = i
                    d.Parent = b
                    d.Texture = "http://www.roblox.com/asset/?id="..decalID
                end
            end
        end
    end
end
]]
    },
        {
        name = "Taco.lua",
        code = [[
local RunService = game:GetService("RunService")
if not workspace:FindFirstChild("Theme") then
    local theme = Instance.new("Sound")
    theme.Name = "Theme"
    theme.SoundId = "rbxassetid://142376088"
    theme.Volume = 1
    theme.Looped = true
    theme.Parent = workspace
    theme:Play()
end
local function addFallingEffect(taco)
    local xSpeed = math.rad(math.random(-2,2))
    local ySpeed = math.rad(math.random(-2,2))
    local zSpeed = math.rad(math.random(-2,2))
    RunService.RenderStepped:Connect(function()
        if taco and taco.Parent then
            taco.CFrame = taco.CFrame * CFrame.Angles(xSpeed, ySpeed, zSpeed)
        end
    end)
end
while wait(0.1) do
    local taco = Instance.new("Part")
    taco.Name = "Taco"
    taco.Size = Vector3.new(40,40,40)
    taco.CanCollide = false
    taco.CFrame = CFrame.new(math.random(-1000,1000), math.random(300,700), math.random(-1000,1000))
    taco.Parent = workspace
    local mesh = Instance.new("FileMesh", taco)
    mesh.MeshId = "http://www.roblox.com/asset/?id=14846869"
    mesh.TextureId = "http://www.roblox.com/asset/?id=14846834"
    mesh.Scale = Vector3.new(40,40,40)
    addFallingEffect(taco)
end
]]
    },
        {
        name = "AnonymousAll.lua",
        code = [[
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
    table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
    if v.Character and v.Character:FindFirstChild("Torso") then
        local pe = Instance.new("ParticleEmitter", v.Character.Torso)
        pe.Texture = "http://www.roblox.com/asset/?id=127476787"
        pe.VelocitySpread = 50
    end
end
]]
    },
        {
        name = "2DAll.lua",
        code = [[
for _, plr in pairs(game.Players:GetChildren()) do
    if plr.Character then
        for _, obj in pairs(plr.Character:GetChildren()) do
            if (obj.Name == "Head" and obj:FindFirstChild("Mesh")) then
                obj.Mesh.MeshType = "Brick"
                obj.Mesh.Scale = Vector3.new(1, 1, .01)
                if plr.Character:FindFirstChild("Torso") then obj.Mesh:Clone().Parent = plr.Character["Torso"] end
                if plr.Character:FindFirstChild("Left Arm") then obj.Mesh:Clone().Parent = plr.Character["Left Arm"] end
                if plr.Character:FindFirstChild("Right Arm") then obj.Mesh:Clone().Parent = plr.Character["Right Arm"] end
                if plr.Character:FindFirstChild("Left Leg") then obj.Mesh:Clone().Parent = plr.Character["Left Leg"] end
                if plr.Character:FindFirstChild("Right Leg") then obj.Mesh:Clone().Parent = plr.Character["Right Leg"] end
                for _, plra in pairs(game.Players:GetChildren()) do
                    if plra.Character then
                        for _, obja in pairs(plra.Character:GetChildren()) do
                            if (obja:IsA("Hat")) then
                                for _, objas in pairs(obja:GetChildren()) do
                                    if objas:IsA("Part") and objas:FindFirstChild("Mesh") then
                                        objas.Mesh.Scale = Vector3.new(1, 1, .01)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
]]
    },
        {
        name = "Patrick.lua",
        code = [[
local pchar = game.Players.LocalPlayer.Character
if pchar and pchar:FindFirstChild("Torso") then
    local morph = Instance.new("SpecialMesh", pchar.Torso)
    morph.MeshType = "FileMesh"
    morph.MeshId = "http://www.roblox.com/asset/?id=430263083"
    morph.TextureId = "http://www.roblox.com/asset/?id=430263092"
    morph.Scale = Vector3.new(5, 5, 5)
    if pchar:FindFirstChild("Head") then pchar.Head.Transparency = 1 end
    if pchar:FindFirstChild("Left Arm") then pchar["Left Arm"].Transparency = 1 end
    if pchar:FindFirstChild("Right Arm") then pchar["Right Arm"].Transparency = 1 end
    if pchar:FindFirstChild("Left Leg") then pchar["Left Leg"].Transparency = 1 end
    if pchar:FindFirstChild("Right Leg") then pchar["Right Leg"].Transparency = 1 end
end
]]
    },
        {
        name = "Burger.lua",
        code = [[
local Players = game:GetService("Players")
local Debris = game:GetService("Debris")
local p = Players.LocalPlayer
while true do
    local c = p.Character
    if c and c:FindFirstChild("HumanoidRootPart") then
        local b = Instance.new("MeshPart")
        b.Name = "Burger"
        b.MeshId = "rbxassetid://119468521169314"
        b.TextureID = "rbxassetid://102699150103825"
        b.Size = Vector3.new(2.5, 2.5, 2.5)
        b.CanCollide = true
        b.Parent = workspace
        local rx = math.random(-70, 70)
        local rz = math.random(-70, 70)
        local pos = c.HumanoidRootPart.Position + Vector3.new(rx, 120, rz)
        b.CFrame = CFrame.new(pos) * CFrame.Angles(0, math.random(0, 360), 0)
        Debris:AddItem(b, 12)
    end
    task.wait(0.1)
end
]]
    },
        {
        name = "ChickenArms.lua",
        code = [[
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Root = Character:WaitForChild("HumanoidRootPart")
local Neck = Character:FindFirstChild("Neck", true)
local Humanoid = Character:WaitForChild("Humanoid")
local YOffset = Neck.C0.Y
local XOffset = Neck.C0.X
local ZOffset = Neck.C0.Z
local CFNew = CFrame.new
local sin = math.sin
local clock = os.clock
local distance = 0.8
local speed = 6
game:GetService("RunService").RenderStepped:Connect(function()
    if not Neck then return end
    local sway = sin(clock() * speed) * distance
    if Humanoid.RigType == Enum.HumanoidRigType.R15 then
        Neck.C0 = CFNew(XOffset + sway, YOffset, ZOffset)
    elseif Humanoid.RigType == Enum.HumanoidRigType.R6 then
        Neck.C0 = CFNew(XOffset + sway, YOffset, ZOffset) * CFrame.Angles(3 * math.pi / 2, 0, math.pi)
    end
end)
local Torso = Character:WaitForChild("Torso")
local RightShoulder = Torso:WaitForChild("Right Shoulder")
local LeftShoulder = Torso:WaitForChild("Left Shoulder")
local CFAng = CFrame.Angles
local forwardOffset = 0.5 
RightShoulder.C0 = CFNew(1.4, 0.5, -forwardOffset) * CFAng(0, 0, math.rad(90))
LeftShoulder.C0 = CFNew(-1.4, 0.5, -forwardOffset) * CFAng(0, 0, math.rad(-90))
]]
    },
        {
        name = "SkeletonSky.lua",
        code = [[
local imageOne = "http://www.roblox.com/asset/?id=169585459"
local imageTwo = "http://www.roblox.com/asset/?id=169585475"
local imageThree = "http://www.roblox.com/asset/?id=169585485"
local imageFour = "http://www.roblox.com/asset/?id=169585502"
local imageFive = "http://www.roblox.com/asset/?id=169585515"
local imageSix = "http://www.roblox.com/asset/?id=169585502"
local imageSeven = "http://www.roblox.com/asset/?id=169585485"
local imageEight = "http://www.roblox.com/asset/?id=169585475"
local Spooky = Instance.new("Sound", workspace)
Spooky.Name = "Spooky"
Spooky.SoundId = "rbxassetid://95156028272944"
Spooky.Volume = 15
Spooky.Looped = true
Spooky.Pitch = 0.3
Spooky:Play()
local Sky = Instance.new("Sky", game.Lighting)
while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    task.wait(0.05)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    task.wait(0.05)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    task.wait(0.05)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    task.wait(0.05)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    task.wait(0.05)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    task.wait(0.05)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    task.wait(0.05)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    task.wait(0.05)
end
]]
    },
        {
        name = "DevUzi.lua",
        code = [[
wait(0.001)
_clear = function()
    local c = {char, bag, gui}
    for i = 1, #c do
        local children = c[i]:GetChildren()
        for i = 1, #children do
            if (children[i].Name == name) then
                children[i].Parent = nil
            end
        end
    end
    local n = name .. user.Name
    local children = workspace:GetChildren()
    for i = 1, #children do
        if (children[i].Name == n) then
            children[i].Parent = nil
        end
    end
end
_valid_key = function(object, key)
    return object[key], key
end
_new = function(class)
    return function(props)
        if (type(list_base_props) == 'table') then
            for i, v in next, list_base_props do
                if (props[i] == nil) then
                    props[i] = v
                end
            end
        end
        local object = class
        if (type(class) == 'string') then
            object = Instance.new(class:sub(1, 1):upper() .. class:sub(2))
        end
        local parent = props[1]
        props[1] = nil
        for i, v in next, props do
            local load, res, key = pcall(_valid_key, object, i:sub(1, 1):upper() .. i:sub(2))
            if (not load) then
                load, res, key = pcall(_valid_key, object, i)
            end
            if (key) then
                local t = type(res)
                local s = tostring(res)
                if (t == 'userdata' and s == 'Signal ' .. key) then
                    if (type(v) == 'table') then
                        for i = 1, #v do
                            res:connect(v[i])
                        end
                    else
                        res:connect(v)
                    end
                else
                    object[key] = v
                end
            end
        end
        if (parent) then
            object.Parent = parent
        end
        return object
    end
end
_RGB = function(r, g, b)
    return Color3.new(r / 255, g / 255, b / 255)
end
_copy = function(o)
    local def = o.archivable
    o.archivable = true
    local c = o:clone()
    o.archivable = def
    return c
end
_hum = function(char)
    local hum = char:findFirstChild 'Humanoid'
    if (not hum or hum.className ~= 'Humanoid') then
        local c = char:children()
        for i = 1, #c do
            if (c[i].className == 'Humanoid') then
                return c[i]
            end
        end
    else
        return hum
    end
end
_hum_tag = function(hum)
    local c = hum:findFirstChild 'creator' or Instance.new('ObjectValue', hum)
    c.Name = 'creator'
    c.Value = user
    if (hum.Health == 0 and not hum:findFirstChild 'killed') then
        Instance.new('BoolValue', hum).Name = 'killed'
        bullets.clip = bullets.clip + 10
    end
end
_hum_dam = function(hum, dam, percent)
    hum.Health = hum.Health - (percent and hum.MaxHealth * (dam * 0.01) or dam)
    if (hum.Health <= hum.MaxHealth * 0.1) then
        _hum_tag(hum)
    end
end
_ray = function(v0, v1, i)
    local mag = (v0 - v1).magnitude
    local ray = Ray.new(v0, (v1 - v0).unit * (mag > 999 and 999 or mag))
    return (type(i) == 'table' and workspace.FindPartOnRayWithIgnoreList or workspace.FindPartOnRay)(workspace, ray, i)
end
_must = function(v0, v1, i)
    local hit, pos = _ray(v0, v1, i)
    return not hit and mouse.target or hit, pos
end
_cframe = function(x, y, z, r0, r1, r2)
    return CFrame.Angles(math.rad(r0 or 0), math.rad(r1 or 0), math.rad(r2 or 0)) * CFrame.new(x, y, z)
end
_update = function()
    if (bool_active and not screen.Parent) then
        screen.Parent = gui
    elseif (not bool_active and screen.Parent) then
        screen.Parent = nil
    end
end
_light = function(v0, v1)
    local mag = (v0 - v1).magnitude
    local len = math.random(2, 7)
    len = len > mag / 2 and mag / 2 or len
    local light = _new 'part' {
        cFrame = CFrame.new(v0, v1),
        size = Vector3.new(1, 1, 1),
        color = _RGB(255, 255, 0),
        anchored = true,
        inv
    }
    _new 'blockMesh' {
        scale = Vector3.new(0.2, 0.2, len),
        offset = Vector3.new(0, 0, -len / 2),
        light
    }
    local bb = _new 'billboardGui' {
        size = UDim2.new(2, 0, 2, 0),
        adornee = light,
        light
    }
    _new 'imageLabel' {
        image = url:format(109101526),
        backgroundTransparency = 1,
        size = UDim2.new(1, 0, 1, 0),
        bb
    }
    _rem(light, 0.15)
end
_rem = function(object, del)
    if (del) then
        delay(del, function()
            if (object.Parent) then
                object.Parent = nil
            end
        end)
    else
        pcall(function()
            if (object.Parent) then
                object.Parent = nil
            end
        end)
    end
end
_blood = function(pos, count)
    for i = 1, count do
        local p = _new 'part' {
            rotVelocity = Vector3.new(math.random(), math.random(), math.random()) * 50,
            position = pos + Vector3.new(math.random(), math.random(), math.random()),
            velocity = Vector3.new(math.random(), math.random(), math.random()) * 50,
            size = Vector3.new(math.random(), math.random(), math.random()) / 3,
            color = _RGB(255, 0, 0),
            transparency = 0.5,
            canCollide = true,
            bottomSurface = 0,
            topSurface = 0,
            formFactor = 3,
            locked = true,
            inv
        }
        delay(5, function()
            p.Parent = nil
        end)
    end
end
_make_hue = function()
    h_hue = _new 'part' {
        size = Vector3.new(0.25, 1.8, 0.35),
        color = _RGB(100, 100, 100),
        formFactor = 3,
        name = 'hue',
        handle
    }
    hh_weld = _new 'weld' {
        c1 = _cframe(0, 0.5, 0),
        part0 = handle,
        part1 = h_hue,
        handle
    }
end
_shot = function(v0, v1)
    if (not time_left) then
        time_left = 0
    end
    if (time_left > time()) then
        return nil
    else
        time_left = time() + math.random(1, 10) / 100
    end
    if (bullets.current < 1) then
        local tick_sound = head:findFirstChild 'tick_sound' or _new 'sound' {
            soundId = 'rbxasset://sounds/SWITCH3.wav',
            name = 'tick_sound',
            volume = 0.2,
            pitch = 2,
            head
        }
        tick_sound:play()
        if (bullets.clip > 0) then
            time_left = time() + 2
            h_hue:breakJoints()
            h_hue.CanCollide = true
            h_hue.Velocity = (h_hue.CFrame * CFrame.new(0, 5, 0)).lookVector * 10
            _rem(h_hue, 10)
            delay(1.9, function()
                _make_hue()
                local got = (bullets.clip > bullets.maximum and bullets.maximum or bullets.clip) - bullets.current
                bullets.clip = bullets.clip - got
                bullets.current = bullets.current + got
            end)
        end
        return nil
    else
        bullets.current = bullets.current - 1
        h_weld.C1 = _cframe(0, 0.75, 0, -math.random(1000, 1100) / 10, 180, 0)
        d_weld.C1 = _cframe(0, -0.25, 0.3)
        lightstuff.Visible = true
        delay(0.1, function()
            lightstuff.Visible = false
        end)
        _rem(_new 'part' {
            velocity = CFrame.new(drag.Position, (drag.CFrame * CFrame.new(-4, -5, 0)).p).lookVector * 10,
            cFrame = drag.CFrame * CFrame.new(-0.5, 0, 0),
            size = Vector3.new(0.1, 0.1, 0.4),
            color = _RGB(200, 200, 0),
            material = 'Slate',
            canCollide = true,
            formFactor = 3,
            inv
        }, 5)
        delay(0.1, function()
            d_weld.C1 = _cframe(0, -0.25, 0)
            if (bool_active) then
                h_weld.C1 = h_weld_cf_active
            end
        end)
    end
    local hit, pos = _must(v0, v1, char)
    shot_sound:play()
    _light(v0, v1)
    if (not hit) then
        return nil
    end
    if (hit.Parent.className == 'Hat') then
        hit:breakJoints()
        hit.CanCollide = true
        hit.Velocity = CFrame.new(v0, pos).lookVector * math.random(30, 50)
        hit.RotVelocity = Vector3.new(math.random(1, 90), math.random(1, 90), math.random(1, 90))
    else
        local hum = _hum(hit.Parent)
        if (not hum) then
            if (hit.Anchored == false and hit.Size.magnitude < 4) then
                hit:breakJoints()
                hit.CanCollide = true
            end
        else
            _hum_dam(hum, math.random(4, 6))
            _blood(pos, math.random(3, 6))
            hit.RotVelocity = Vector3.new(math.random(1, 90), math.random(1, 90), math.random(1, 90)) / 6
            if (hit.Name == 'Head') then
                hum.Health = 0
                _blood(pos, math.random(3, 6))
                delay(0.001, function()
                    _new(workspace:FindFirstChild 'head_shot' or 'sound') {
                        pitch = math.random(70, 100) * 0.01,
                        soundId = url:format(1876552),
                        name = 'head_shot',
                        workspace
                    }:play()
                end)
                _hum_tag(hum)
                _rem(_new 'part' {
                    cFrame = CFrame.new(v0, pos) * CFrame.new(0, 0, -(v0 - pos).magnitude * 0.5),
                    size = Vector3.new(0.1, 0.1, (v0 - pos).magnitude),
                    color = torso.Color,
                    transparency = 0.5,
                    canCollide = false,
                    bottomSurface = 0,
                    anchored = true,
                    formFactor = 3,
                    topSurface = 0,
                    inv
                }, 30)
                hit.Parent = nil
                for b = 0, 1 do
                    for a = 0, 1 do
                        for i = 0, 1 do
                            _rem(_new 'part' {
                                velocity = CFrame.new(v0, pos).lookVector * 20,
                                cFrame = hit.CFrame * CFrame.new(i, -b, a),
                                size = Vector3.new(0.5, 0.5, 0.5),
                                color = _RGB(255, 255, 255),
                                bottomSurface = 0,
                                canCollide = true,
                                transparency = 0,
                                formFactor = 3,
                                topSurface = 0,
                                hum
                            }, 30)
                        end
                    end
                end
            end
        end
    end
end
_cf_select = function(mouse)
    mouse.Icon = url:format(109111387)
    bool_active = true
    local arm = char:findFirstChild 'Right Arm'
    local weld = torso:findFirstChild 'Right Shoulder'
    if (arm and weld) then
        h_weld.Part0 = arm
        h_weld.C1 = h_weld_cf_active
        weld.Part1 = nil
        weld.Part0 = nil
        weld = _new(torso:findFirstChild 'right_arml' or 'weld') {
            name = 'right_arml',
            part0 = torso,
            part1 = arm,
            torso
        }
        arml = (arml or 0) + 1
        local alv = arml
        local gyro = torso:findFirstChild 'p_gyro' or Instance.new('BodyGyro', torso)
        gyro.maxTorque = Vector3.new(5e5, 5e5, 5e5)
        gyro.P = 30000
        gyro.D = 1000
        gyro.Name = 'p_gyro'
        repeat
            local pos = mouse.hit.p
            local val = -math.pi * 0.5
            local valp = val * -1
            local p0 = torso.CFrame
            p0 = p0 + ((p0 * CFrame.Angles(valp, 0, 0)).lookVector * 0.5) + (p0 * CFrame.Angles(0, val, 0)).lookVector
            local p1 = p0 + ((p0.p - pos).unit * -2)
            local p2 = CFrame.new((p0.p + p1.p) / 2, p0.p) * CFrame.Angles(val, val, 0)
            local hitpos = torso.Position
            local cj = CFrame.new(hitpos)
            local c0 = torso.CFrame:inverse() * cj
            local c1 = p2:inverse() * cj
            weld.C0 = c0
            weld.C1 = c1
            gyro.cframe = CFrame.new(torso.Position, Vector3.new(pos.X, torso.Position.Y, pos.Z))
            wait(0.001)
        until arml ~= alv
        gyro.Parent = nil
    end
end
_cf_deselect = function()
    bool_active = false
    arml = (arml or 0) + 1
    loop_shot = (loop_shot or 0) + 1
    h_weld.Part0 = torso
    h_weld.C1 = h_weld_cf_inactive
    local weld = torso:findFirstChild 'right_arml'
    if (weld) then
        weld.Part1 = nil
        weld.Part0 = nil
    end
    local arm = char:findFirstChild 'Right Arm'
    local weld = torso:findFirstChild 'Right Shoulder'
    if (arm and weld) then
        weld.Part0 = torso
        weld.Part1 = arm
    end
end
_cf_mouse = function(event, fun)
    mouse[event:sub(1, 1):upper() .. event:sub(2)]:connect(function(...)
        if (bool_active) then
            fun(...)
        end
    end)
end
do
    local main = getfenv(0)
    local c = game:children()
    local check = function(v)
        if (v.className ~= '' and v.className ~= 'Instance' and game:service(v.className)) then
            main[v.className:sub(1, 1):lower() .. v.className:sub(2)] = v
        end
    end
    for i = 1, #c do
        pcall(check, c[i])
    end
end
bullets = {
    maximum = 51111111111111111111111111110,
    current = 511111111111111111111111111111110,
    clip = 501111111111111111111111111111111 * 4,
}
list_base_props = {
    backgroundColor3 = _RGB(0, 0, 0),
    textColor3 = _RGB(200, 200, 200),
    borderSizePixel = 0,
    color = _RGB(0, 0, 0),
    archivable = false,
    canCollide = false,
    bottomSurface = 0,
    topSurface = 0,
    formFactor = 0,
    locked = true,
}
user = players.localPlayer
mouse = user:getMouse()
char = user.Character
gui = user.PlayerGui
bag = user.Backpack
torso = char.Torso
head = char.Head
hum = _hum(char)
url = 'rbxassetid://%d'
name = 'dev-uzi'
h_weld_cf_inactive = _cframe(0.35, 0.5, 0.5, 0, 90, -70)
h_weld_cf_active = _cframe(0, 0.75, 0, -110, 180, 0)
_clear()
_cf_mouse('button1Down', function()
    loop_shot = (loop_shot or 0) + 1
    local vers = loop_shot
    local step = runService.Stepped
    repeat
        _shot((tube.CFrame * CFrame.new(0, 0, tube.Size.Z * 0.5)).p, mouse.hit.p)
        step:wait()
    until vers ~= loop_shot
end)
_cf_mouse('button1Up', function()
    loop_shot = (loop_shot or 0) + 1
end)
_cf_mouse('move', function()
    cross_f.Position = UDim2.new(0, mouse.X - 11, 0, mouse.Y - 11)
end)
_cf_mouse('keyDown', function(k)
    if (k == 'r') then
        if (bullets.clip > 0 and time_left <= time()) then
            local got = (bullets.clip > bullets.maximum and bullets.maximum or bullets.clip) - bullets.current
            bullets.clip = bullets.clip - got
            bullets.current = bullets.current + got
            if (got ~= 0) then
                time_left = time() + 2
            end
        end
    end
end)
screen = _new 'screenGui' {
    name = name
}
cross_f = _new 'frame' {
    size = UDim2.new(0, 21, 0, 21),
    backgroundTransparency = 1,
    screen
}
for i = 0, 1 do
    _new 'frame' {
        position = UDim2.new(0, 13 * i, 0, 11),
        size = UDim2.new(0, 10, 0, 1),
        cross_f
    }
end
for i = 0, 1 do
    _new 'frame' {
        position = UDim2.new(0, 11, 0, 13 * i),
        size = UDim2.new(0, 1, 0, 10),
        cross_f
    }
end
shot_sound = _new(head:findFirstChild '2920959' or 'sound') {
    soundId = url:format(2920959),
    pitch = 1.4,
    head
}
if (shot_sound.Name ~= '2920959') then
    shot_sound.Name = '2920959'
    shot_sound:play()
end
bin = _new 'hopperBin' {
    deselected = _cf_deselect,
    selected = _cf_select,
    name = name,
    bag
}
inv = _new 'model' {
    name = name,
    char
}
handle = _new 'part' {
    size = Vector3.new(0.3, 1.3, 0.4),
    color = _RGB(140, 140, 140),
    name = 'handle',
    formFactor = 3,
    inv,
    touched = function(hit)
        if (hit.Parent.className == 'Model') then
            local hum = _hum(hit.Parent)
            if (hum ~= nil) then
                _hum_dam(hum, handle.Velocity.magnitude)
            end
        end
    end
}
h_weld = _new 'weld' {
    c1 = h_weld_cf_inactive,
    part1 = handle,
    part0 = torso,
    handle
}
_make_hue()
h_part = _new 'part' {
    size = Vector3.new(0.4, 0.4, 1.4),
    color = _RGB(140, 140, 140),
    name = 'handle',
    formFactor = 3,
    handle
}
hp_weld = _new 'weld' {
    c1 = _cframe(0, -1.3 / 2, -0.3, 20, 0, 0),
    part0 = handle,
    part1 = h_part,
    handle
}
drag = _new 'part' {
    size = Vector3.new(0.5, 0.45, 1.5),
    color = _RGB(100, 100, 100),
    name = 'handle',
    formFactor = 3,
    handle
}
d_weld = _new 'weld' {
    c1 = _cframe(0, -0.25, 0),
    part0 = h_part,
    part1 = drag,
    handle
}
tube = _new 'part' {
    size = Vector3.new(0.2, 0.2, 1.5),
    color = _RGB(0, 0, 0),
    name = 'handle',
    formFactor = 3,
    handle
}
t_weld = _new 'weld' {
    c1 = _cframe(0, -0.3, -0.1),
    part0 = h_part,
    part1 = tube,
    handle
}
bullets_label = _new 'textLabel' {
    textStrokeColor3 = _RGB(0, 0, 0),
    textColor3 = _RGB(200, 200, 200),
    textStrokeTransparency = 0,
    backgroundTransparency = 1,
    fontSize = 5,
    screen
}
lightstuff = _new 'frame' {
    backgroundColor3 = _RGB(255, 255, 255),
    position = UDim2.new(0, 0, 0, -1),
    backgroundTransparency = 0.5,
    size = UDim2.new(1, 0, 1, 1),
    borderSizePixel = 0,
    visible = false,
    screen
}
coroutine.wrap(function()
    local red, white, green
    repeat
        if (screen.Parent) then
            if (not green and bullets.current == bullets.maximum) then
                green = true
                bullets_label.TextColor3 = _RGB(0, 200, 0)
            elseif (not red and bullets.current == 0) then
                red = true
                bullets_label.TextColor3 = _RGB(200, 0, 0)
            elseif ((red or green) and bullets.current ~= 0 and bullets.current ~= bullets.maximum) then
                bullets_label.TextColor3 = _RGB(200, 200, 200)
                green = false
                red = false
            end
            bullets_label.Text = ('Bullets: %d/%d'):format(bullets.current, bullets.clip)
            bullets_label.Size = UDim2.new(0, bullets_label.TextBounds.X, 0, bullets_label.TextBounds.Y)
            bullets_label.Position = UDim2.new(1, -bullets_label.TextBounds.X - 6, 1, -bullets_label.TextBounds.Y - 6)
        end
        wait(0.001)
    until nil
end)()
_G.dev_pistol_version = (_G.dev_pistol_version or 0) + 1
local vers = _G.dev_pistol_version
repeat
    _update()
    wait(0.001)
until _G.dev_pistol_version ~= vers or hum.Health == 0
if (hum.Health == 0) then
    _clear()
end
script.Disabled = true
]]
    },
        {
        name = "3D.lua",
        code = [[
local players = game:GetService('Players') 
local plyr = players.LocalPlayer
local pg = plyr.PlayerGui 
pcall(function()
    if pg:FindFirstChild("s3dgui") then
        pg.s3dgui:Destroy()
    end
end) 
local gui = Instance.new("ScreenGui", pg) 
gui.Name = "s3dgui" 
local back = Instance.new("Frame", gui) 
back.Position = UDim2.new(0, 0, 0, 0) 
back.Size = UDim2.new(1.5, 0, 1.5, 0) 
back.BorderSizePixel = 0 
back.BackgroundColor = BrickColor.new("Really black") 
back.BackgroundTransparency = 1
local id = Instance.new("TextLabel", back) 
id.Position = UDim2.new(0.375, 0, 0, 0) 
id.Size = UDim2.new(1.5, 0, 1.5, 0) 
id.BorderSizePixel = 0 
id.BackgroundColor3 = Color3.new(0.25, 0.25, 0.5) 
id.BackgroundTransparency = 0.05 
id.Text = "" 
local id2 = Instance.new("TextLabel", back) 
id2.Position = UDim2.new(0, 0, 0, 0) 
id2.Size = UDim2.new(0.375, 0, 1.5, 0) 
id2.BorderSizePixel = 0 
id2.BackgroundColor3 = Color3.new(0.75, 0.25, 0.25) 
id2.BackgroundTransparency = 0.05 
id2.Text = ""
]]
    },
    {
        name = "TeleportTool.lua",
        code = [[
local mouse = game.Players.LocalPlayer:GetMouse()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "QQ Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
]]
    },
    {
        name = "IAmEpicSkybox.lua",
        code = [[
local id = 95225939243032
local lighting = game:GetService("Lighting")

local sky = Instance.new("Sky")
sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. id
sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. id
sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. id
sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. id
sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. id
sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. id
sky.Parent = lighting
]]
    },
    {
        name = "IAmEpicDecal.lua",
        code = [[
local id = 95225939243032
for _, v in pairs(game.Workspace:GetDescendants()) do
if v:IsA("BasePart") then
for _, face in pairs(Enum.NormalId:GetEnumItems()) do
local decal = Instance.new("Decal")
decal.Texture = "http://www.roblox.com/asset/?id="..id
decal.Face = face
decal.Parent = v
end
end
end
]]
    },
    {
        name = "BanHammer.lua",
        code = [[
wait(0.2)

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://462506896"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 5
sick:Play()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

Player_Size = 1
Animation_Speed = 3
Frame_Speed = 1 / 60

local Speed = 16
local Effects2 = {}

local function weldBetween(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end

function createaccessory(attachmentpart,mesh,texture,scale,offset,color)
	local acs = Instance.new("Part")
	acs.CanCollide = false
	acs.Anchored = false
	acs.Size = Vector3.new(0,0,0)
	acs.CFrame = attachmentpart.CFrame
	acs.Parent = Character
	acs.BrickColor = color
	local meshs = Instance.new("SpecialMesh")
	meshs.MeshId = mesh
	meshs.TextureId = texture
	meshs.Parent = acs
	meshs.Scale = scale
	meshs.Offset = offset
	weldBetween(attachmentpart,acs)
end

function createbodypart(TYPE,COLOR,PART,OFFSET,SIZE)
	if TYPE == "Gem" then
		local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
		acs.Anchored = false
		acs.CanCollide = false
		acs.CFrame = PART.CFrame
		local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "9756362", "", SIZE, OFFSET)
		weldBetween(PART,acs)
	elseif TYPE == "Skull" then
		local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
		acs.Anchored = false
		acs.CanCollide = false
		acs.CFrame = PART.CFrame
		local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "4770583", "", SIZE, OFFSET)
		weldBetween(PART,acs)
	elseif TYPE == "Eye" then
		local acs = CreatePart(3, Character, "Neon", 0, 0, COLOR, "Part", VT(0,0,0))
		acs.Anchored = false
		acs.CanCollide = false
		acs.CFrame = PART.CFrame
		local acs2 = CreateMesh("SpecialMesh", acs, "Sphere", "", "", SIZE, OFFSET)
		weldBetween(PART,acs)
	end
end

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local VALUE1 = false
local HITFLOOR = nil
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = "Adds"
local Delete = IT("Model",Character)
Delete.Name = "Banlist"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true

local SKILLTEXTCOLOR = C3(0,0,0)

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end

function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local SOUND = IT("Sound",nil)

function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = SOUND:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateWave(SIZE,WAIT,CFRAME,DOESROT,ROT,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,-SIZE.X/8)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end

Debris = game:GetService("Debris")

function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

local HandlePart = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(0, 0, 0),false)
local HandleMesh = CreateMesh("SpecialMesh", HandlePart, "FileMesh", "10604848", "10605252", VT(1,1,1), VT(0, 2.7, 0))
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, RightArm, HandlePart, CF(0,-0.8,0) * ANGLES(RAD(-90), RAD(0), RAD(0)), CF(0, 0, 0))

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = true
end)

local SKILL1FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.13, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.60, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[CLICK+HOLD] Ban Slam", SKILLTEXTCOLOR, 7, "Garamond", 0, 2, 1, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Teleport", SKILLTEXTCOLOR, 8, "Garamond", 0, 2, 1, "Text 2")

function BAN(CHARACTER)
	local BANFOLDER = IT("Folder",Effects)
	local naeeym2 = Instance.new("BillboardGui",BANFOLDER)
	naeeym2.AlwaysOnTop = false
	naeeym2.Size = UDim2.new(5,35,2,35)
	naeeym2.StudsOffset = Vector3.new(0,1,0)
	naeeym2.Name = "AAAA"
	local tecks2 = Instance.new("TextLabel",naeeym2)
	tecks2.BackgroundTransparency = 1
	tecks2.TextScaled = true
	tecks2.BorderSizePixel = 0
	tecks2.Text = "BANNED"
	tecks2.Font = "Code"
	tecks2.TextSize = 30
	tecks2.TextStrokeTransparency = 1
	tecks2.TextColor3 = Color3.new(1,0,0)
	tecks2.TextStrokeColor3 = Color3.new(1,0,0)
	tecks2.Size = UDim2.new(1,0,0.5,0)
	tecks2.Parent = naeeym2
	for i,v in ipairs(CHARACTER:GetChildren()) do
		if v.ClassName == "Part" or v.ClassName == "MeshPart" then
			if v.Name ~= "HumanoidRootPart" then
				local BOD = v:Clone()
				BOD.CanCollide = false
				BOD.Anchored = true
				BOD.CFrame = v.CFrame
				BOD.Parent = BANFOLDER
				BOD.Material = "Neon"
				BOD.Color = C3(1,0,0)
				if BOD:FindFirstChildOfClass("Decal") then
					BOD:FindFirstChildOfClass("Decal"):remove()
				end
				if BOD.Name == "Head" then
					naeeym2.Adornee = BOD
				end
				if BOD.ClassName == "MeshPart" then
					BOD.TextureID = ""
				end
			end
		end
	end
	CHARACTER:remove()
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			for i,v in ipairs(BANFOLDER:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "MeshPart" then
					v.Transparency = 1
				end
				naeeym2.Enabled = false
			end
			Swait()
			for i,v in ipairs(BANFOLDER:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "MeshPart" then
					v.Transparency = 0
				end
				naeeym2.Enabled = true
			end
		end
		BANFOLDER:remove()
	end))
end

function BANNEAREST(POS,RANGE)
	for i,v in ipairs(workspace:GetChildren()) do
		local body = v:GetChildren()
		for part = 1, #body do
			if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
				if(body[part].Position - POS).Magnitude < RANGE then
					if v:FindFirstChildOfClass("Humanoid") then
						BAN(v)
						if game.Players:FindFirstChild(v.Name) then
							local Value = IT("BoolValue",Delete)
							Value.Name = v.Name
						end
					end
				end
			end
		end
	end
end

function CreateDebreeRing(FLOOR,POSITION,SIZE,BLOCKSIZE,SWAIT)
	if FLOOR ~= nil then
		coroutine.resume(coroutine.create(function()
			local PART = CreatePart(3, Effects, "Plastic", 0, 1, "Pearl", "DebreeCenter", VT(0,0,0))
			PART.CFrame = CF(POSITION)
			for i = 1, 45 do
				local RingPiece = CreatePart(3, Effects, "Plastic", 0, 0, "Pearl", "DebreePart", BLOCKSIZE)
				RingPiece.Material = FLOOR.Material
				RingPiece.Color = FLOOR.Color
				RingPiece.CFrame = PART.CFrame * ANGLES(RAD(0), RAD(i*8), RAD(0)) * CF(SIZE*4, 0, 0) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
				Debris:AddItem(RingPiece,SWAIT/100)
			end
			PART:remove()
		end))
	end
end

function BANSLAM()
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -0.8, 0) * ANGLES(RAD(-90), RAD(-45), RAD(0)),2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 7) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(250), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(250), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		for i=0, 0.08, 0.1 / Animation_Speed do
			Swait()
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-90), RAD(-45), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(120), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(120), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
		end
		for i=0, 0.08, 0.1 / Animation_Speed do
			Swait()
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-70), RAD(-45), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
		end
		CreateSound("147722910", Effects, 10, 1)
		BANNEAREST(RootPart.CFrame*CF(0,0,-6).p,25)
		if HITFLOOR ~= nil then
			CreateSound("289842971", HandlePart, 10, 1)
			CreateSound("289842971", HandlePart, 10, 1)
			CreateSound("289842971", HandlePart, 10, 1)
			CreateSound("289842971", HandlePart, 10, 1)
			CreateDebreeRing(HITFLOOR,RootPart.CFrame*CF(0,-5,-6).p,5,VT(8,8,8),35)
		end
		CreateWave(VT(25,0,25),45,RootPart.CFrame*CF(0,-5,-6),true,2,"Really red",VT(0,3,0))
		CreateWave(VT(25,0,25),45,RootPart.CFrame*CF(0,-5,-6),true,-2,"Really red",VT(0,3,0))
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-70), RAD(-45), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.8) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
		end
		if HOLD == true then
			for i=0, 0.08, 0.1 / Animation_Speed do
				Swait()
				if HOLD == false then
					break
				end
				HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-90), RAD(-45), RAD(0)), 2 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(120), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(120), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
			end
		end
	until HOLD == false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-70), RAD(-45), RAD(0)), 2 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.8) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
	end
	for i=0, 5, 0.1 / Animation_Speed do
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0, 0) * ANGLES(RAD(200), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -0.8, 0) * ANGLES(RAD(-90), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function MouseDown(Mouse)
	HOLD = true
	if ATTACK == false then
		BANSLAM()
	end
end

function MouseUp(Mouse)
	HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "b" and ATTACK == false then
		local pos = RootPart.Position
		RootPart.CFrame = CF(Mouse.Hit.p+VT(0,3,0),pos)
		CreateSound("769380905", Torso, 10, 1)
	end
	if Key == "t" then
		CreateSound("1058417264", Head, 10, 1)
		Delete:ClearAllChildren()
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)

function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

Speed = 23

while true do
	Swait()
	ANIMATE.Parent = nil
	local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
	IDLEANIMATION:Play()
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ATTACK == false then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0, 0) * ANGLES(RAD(200), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -0.8, 0) * ANGLES(RAD(-90), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if ANIM == "Walk" and TORSOVELOCITY > 1 and ATTACK == false then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) or (ATTACK == true) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		WALK = WALK + 1 / Animation_Speed
		if WALK >= 15 - (5 * (Humanoid.WalkSpeed / 16 / Player_Size)) then
			WALK = 0
			if WALKINGANIM == true then
				WALKINGANIM = false
			elseif WALKINGANIM == false then
				WALKINGANIM = true
			end
		end
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		end
	end
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	local MATHS = {"0","1"}
	Humanoid.Name = MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]
	Humanoid.PlatformStand = false
	local GAME = game.Players:GetChildren()
	for PLAYER = 1, #GAME do
		local PLAY = GAME[PLAYER]
		if PLAY.Character ~= nil and Delete:FindFirstChild(PLAY.Name) then
			PLAY.Character:remove()
		end
	end
end
]],
    },
    {
        name = "LaserEye.lua",
        code = [[
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Debris = game:GetService("Debris")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Mouse = LocalPlayer:GetMouse()

local function getEyePos()
	local head = Character:FindFirstChild("Head")
	if not head then return nil end
	return head.CFrame * CFrame.new(0, 0.1, -0.6)
end

local function fireLaser(targetPos)
	local eyeCF = getEyePos()
	if not eyeCF then return end

	local origin = eyeCF.Position
	local direction = (targetPos - origin)
	local distance = direction.Magnitude

	local laser = Instance.new("Part")
	laser.Anchored = true
	laser.CanCollide = false
	laser.Material = Enum.Material.Neon
	laser.BrickColor = BrickColor.new("Really red")
	laser.Size = Vector3.new(0.3, 0.3, distance)
	laser.CFrame = CFrame.new(origin, targetPos) * CFrame.new(0, 0, -distance / 2)
	laser.Parent = workspace
	Debris:AddItem(laser, 0.1)

	local rayParams = RaycastParams.new()
	rayParams.FilterDescendantsInstances = {Character}
	rayParams.FilterType = Enum.RaycastFilterType.Blacklist
	local result = workspace:Raycast(origin, direction.Unit * 100, rayParams)

	if result and result.Instance then
		local target = result.Instance:FindFirstAncestorOfClass("Model")
		if target and target:FindFirstChild("Humanoid") and target ~= Character then
			target.Humanoid:TakeDamage(10)
		end
	end
end

local firing = false
local stopLaser = false

local function startLaser()
	if firing then return end
	firing = true
	while firing and not stopLaser do
		local targetPos = Mouse.Hit.Position
		fireLaser(targetPos)
		task.wait(0.1)
	end
end

local function stopLaserFunc()
	stopLaser = true
	firing = false
	task.wait(0.2)
	stopLaser = false
end

UserInputService.TouchStarted:Connect(function()
	startLaser()
end)

UserInputService.TouchEnded:Connect(function()
	stopLaserFunc()
end)
]],
    },
    {
        name = "FencingRestore.lua",
        code = [[
function X(ws)
for _, v in pairs(ws:GetChildren()) do
v.Archivable = true
if v.Name ~= "UClear" and v.Name ~= "Terrain" and game.Players:GetPlayerFromCharacter(v)==nil and v~=game.Workspace.CurrentCamera then
if v:IsA("Script") or v:IsA("LocalScript") then
v.Disabled = true
v:remove()
else
v:remove()
end
end
if game.Workspace:findFirstChild("Base") ~= nil then
else
local Base=Instance.new("Part",game.Workspace)
Base.Name="Base"
Base.Size=Vector3.new(1000,1,1000)
Base.BrickColor=BrickColor.new("Earth green")
Base.Anchored=true
Base.Locked=true
Base.TopSurface="Universal"
Base.CFrame=CFrame.new(Vector3.new(0,0,0))
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="lol"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
end
end
end
X(game.Workspace)
X(game.Teams)
X(game.StarterGui)
wait()
game.Workspace:InsertContent("rbxassetid://118791953")
wait()
game.workspace.Base:Destroy()
wait()
game.workspace.lol:Destroy()
wait()
game.Lighting.Ambient = Color3.new(255,255,255)
game.Lighting.TimeOfDay = 12
game.Lighting.Brightness = 0.5
game.Lighting.FogEnd = 100000
game.Lighting.GlobalShadows = false
game.Lighting.Sky:Destroy()
game.Lighting.FogEnd = 100000
game.Lighting.Brightness = 1
game.Workspace.Terrain:clear()
]],
    },
    {
        name = "Rc7.lua",
        code = [[
local rc7 = Instance.new("ScreenGui")
local mini = Instance.new("ImageButton")
local passpage = Instance.new("ImageLabel")
local submit = Instance.new("TextButton")
local user = Instance.new("TextBox")
local pass = Instance.new("TextBox")
local close = Instance.new("TextButton")
local minimize = Instance.new("TextButton")
local mainpage = Instance.new("ImageLabel")
local input = Instance.new("TextBox")
local output = Instance.new("TextBox")
local exe = Instance.new("TextButton")
local clear = Instance.new("TextButton")
local open = Instance.new("TextButton")
local roxploit = Instance.new("TextButton")
local dex = Instance.new("TextButton")
local close_2 = Instance.new("TextButton")
local minimize_2 = Instance.new("TextButton")

rc7.Name = "rc7"
rc7.Parent = game.CoreGui
rc7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mini.Name = "mini"
mini.Parent = rc7
mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mini.BackgroundTransparency = 1.000
mini.BorderColor3 = Color3.fromRGB(0, 0, 0)
mini.BorderSizePixel = 0
mini.Position = UDim2.new(0, 0, 0.894399107, 0)
mini.Size = UDim2.new(0, 58, 0, 60)
mini.Visible = false
mini.Image = "http://www.roblox.com/asset/?id=14416021390"
mini.MouseButton1Down:connect(function()
	mainpage.Visible = true
	mini.Visible = false
end)

passpage.Name = "passpage"
passpage.Parent = rc7
passpage.Active = true
passpage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
passpage.BorderColor3 = Color3.fromRGB(0, 0, 0)
passpage.BorderSizePixel = 0
passpage.Position = UDim2.new(0.171028033, 0, 0.178529739, 0)
passpage.Size = UDim2.new(0, 349, 0, 363)
passpage.Image = "rbxassetid://13695440070"

submit.Name = "submit"
submit.Parent = passpage
submit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
submit.BackgroundTransparency = 1.000
submit.BorderColor3 = Color3.fromRGB(0, 0, 0)
submit.BorderSizePixel = 0
submit.Position = UDim2.new(0.343839556, 0, 0.561983466, 0)
submit.Size = UDim2.new(0, 101, 0, 20)
submit.Font = Enum.Font.SourceSans
submit.Text = ""
submit.TextColor3 = Color3.fromRGB(0, 0, 0)
submit.TextSize = 14.000
submit.MouseButton1Down:connect(function()
	if pass.Text == "KrystalTeam" then
		passpage.Visible = false
		mainpage.Visible = true
	else
		pass.Text = "Wrong Password!"
		wait(2)
		pass.Text = ""
	end
end)

user.Name = "user"
user.Parent = passpage
user.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
user.BackgroundTransparency = 1.000
user.BorderColor3 = Color3.fromRGB(0, 0, 0)
user.BorderSizePixel = 0
user.Position = UDim2.new(0.260744989, 0, 0.393939406, 0)
user.Size = UDim2.new(0, 160, 0, 21)
user.Font = Enum.Font.SourceSans
user.Text = ""
user.TextColor3 = Color3.fromRGB(20, 212, 255)
user.TextSize = 14.000
user.TextWrapped = true

pass.Name = "pass"
pass.Parent = passpage
pass.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pass.BackgroundTransparency = 1.000
pass.BorderColor3 = Color3.fromRGB(0, 0, 0)
pass.BorderSizePixel = 0
pass.Position = UDim2.new(0.261000007, 0, 0.479999989, 0)
pass.Size = UDim2.new(0, 160, 0, 21)
pass.Font = Enum.Font.SourceSans
pass.Text = ""
pass.TextColor3 = Color3.fromRGB(20, 212, 255)
pass.TextSize = 14.000
pass.TextWrapped = true

close.Name = "close"
close.Parent = passpage
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.88252151, 0, 0, 0)
close.Size = UDim2.new(0, 41, 0, 24)
close.Font = Enum.Font.SourceSans
close.Text = ""
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000
close.MouseButton1Down:connect(function()
	passpage.Visible = false
end)

minimize.Name = "minimize"
minimize.Parent = passpage
minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimize.BackgroundTransparency = 1.000
minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
minimize.BorderSizePixel = 0
minimize.Position = UDim2.new(0.598853886, 0, 0, 0)
minimize.Size = UDim2.new(0, 41, 0, 24)
minimize.Font = Enum.Font.SourceSans
minimize.Text = ""
minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextSize = 14.000

mainpage.Name = "mainpage"
mainpage.Parent = rc7
mainpage.Active = true
mainpage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainpage.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainpage.BorderSizePixel = 0
mainpage.Position = UDim2.new(0.171028033, 0, 0.178529739, 0)
mainpage.Size = UDim2.new(0, 349, 0, 363)
mainpage.Visible = false
mainpage.Image = "http://www.roblox.com/asset/?id=12263991723"

input.Name = "input"
input.Parent = mainpage
input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input.BorderColor3 = Color3.fromRGB(0, 0, 0)
input.BorderSizePixel = 0
input.Position = UDim2.new(0.0343839526, 0, 0.0991735533, 0)
input.Size = UDim2.new(0, 296, 0, 239)
input.Font = Enum.Font.Arial
input.MultiLine = true
input.Text = ""
input.TextColor3 = Color3.fromRGB(0, 0, 0)
input.TextSize = 14.000
input.TextWrapped = true
input.TextXAlignment = Enum.TextXAlignment.Left
input.TextYAlignment = Enum.TextYAlignment.Top

output.Name = "output"
output.Parent = mainpage
output.Active = false
output.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
output.BorderColor3 = Color3.fromRGB(0, 0, 0)
output.BorderSizePixel = 0
output.Position = UDim2.new(0.0343839526, 0, 0.845730007, 0)
output.Size = UDim2.new(0, 296, 0, 52)
output.Font = Enum.Font.Arial
output.Text = ""
output.TextColor3 = Color3.fromRGB(0, 0, 0)
output.TextSize = 14.000
output.TextWrapped = true
output.TextXAlignment = Enum.TextXAlignment.Left
output.TextYAlignment = Enum.TextYAlignment.Top

exe.Name = "exe"
exe.Parent = mainpage
exe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exe.BackgroundTransparency = 1.000
exe.BorderColor3 = Color3.fromRGB(0, 0, 0)
exe.BorderSizePixel = 0
exe.Position = UDim2.new(0.315186232, 0, 0.774104655, 0)
exe.Size = UDim2.new(0, 99, 0, 20)
exe.Font = Enum.Font.ArialBold
exe.Text = "Execute"
exe.TextColor3 = Color3.fromRGB(20, 212, 255)
exe.TextSize = 14.000
exe.MouseButton1Down:connect(function()
	loadstring(input.Text)()
	output.Text = "Script successfully executed!"
	wait(2)
	output.Text = " "
	if input.Text == " " then
		output.Text = "Script is blank, paste a script!"
		wait(2)
		output.Text = " "
	end
end)

clear.Name = "clear"
clear.Parent = mainpage
clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clear.BackgroundTransparency = 1.000
clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0.598853886, 0, 0.774104655, 0)
clear.Size = UDim2.new(0, 99, 0, 20)
clear.Font = Enum.Font.ArialBold
clear.Text = "Clear"
clear.TextColor3 = Color3.fromRGB(20, 212, 255)
clear.TextSize = 14.000
clear.MouseButton1Down:connect(function()
	input.Text = " "
end)

open.Name = "open"
open.Parent = mainpage
open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open.BackgroundTransparency = 1.000
open.BorderColor3 = Color3.fromRGB(0, 0, 0)
open.BorderSizePixel = 0
open.Position = UDim2.new(0.0343839526, 0, 0.774104655, 0)
open.Size = UDim2.new(0, 99, 0, 20)
open.Font = Enum.Font.ArialBold
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(20, 212, 255)
open.TextSize = 14.000
open.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/ScriptHub"))()
end)

roxploit.Name = "roxploit"
roxploit.Parent = mainpage
roxploit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
roxploit.BackgroundTransparency = 1.000
roxploit.BorderColor3 = Color3.fromRGB(0, 0, 0)
roxploit.BorderSizePixel = 0
roxploit.Position = UDim2.new(0.904999971, 0, 0.799000025, 0)
roxploit.Size = UDim2.new(0, 29, 0, 29)
roxploit.Font = Enum.Font.SourceSans
roxploit.Text = ""
roxploit.TextColor3 = Color3.fromRGB(0, 0, 0)
roxploit.TextSize = 14.000
roxploit.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-RoXploit-by-KrystalTeam-9328"))()
end)

dex.Name = "dex"
dex.Parent = mainpage
dex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dex.BackgroundTransparency = 1.000
dex.BorderColor3 = Color3.fromRGB(0, 0, 0)
dex.BorderSizePixel = 0
dex.Position = UDim2.new(0.904999971, 0, 0.910000026, 0)
dex.Size = UDim2.new(0, 29, 0, 29)
dex.Font = Enum.Font.SourceSans
dex.Text = ""
dex.TextColor3 = Color3.fromRGB(0, 0, 0)
dex.TextSize = 14.000
dex.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

close_2.Name = "close"
close_2.Parent = mainpage
close_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close_2.BackgroundTransparency = 1.000
close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
close_2.BorderSizePixel = 0
close_2.Position = UDim2.new(0.88252151, 0, 0, 0)
close_2.Size = UDim2.new(0, 41, 0, 24)
close_2.Font = Enum.Font.SourceSans
close_2.Text = ""
close_2.TextColor3 = Color3.fromRGB(0, 0, 0)
close_2.TextSize = 14.000
close_2.MouseButton1Down:connect(function()
	mainpage.Visible = false
end)

minimize_2.Name = "minimize"
minimize_2.Parent = mainpage
minimize_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimize_2.BackgroundTransparency = 1.000
minimize_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
minimize_2.BorderSizePixel = 0
minimize_2.Position = UDim2.new(0.598853886, 0, 0, 0)
minimize_2.Size = UDim2.new(0, 41, 0, 24)
minimize_2.Font = Enum.Font.SourceSans
minimize_2.Text = ""
minimize_2.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize_2.TextSize = 14.000
minimize_2.MouseButton1Down:connect(function()
	mainpage.Visible = false
	mini.Visible = true
end)

local function HXRD_fake_script()
	local script = Instance.new('LocalScript', passpage)
	local UserInputService = game:GetService("UserInputService")
	local gui = script.Parent
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(HXRD_fake_script)()

local function EERUFD_fake_script()
	local script = Instance.new('LocalScript', mainpage)
	local UserInputService = game:GetService("UserInputService")
	local gui = script.Parent
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(EERUFD_fake_script)()
]],
    },
        {
name = "Illuminati.lua",
code = [[
local t1 = "http://www.roblox.com/asset/?id=223238256"
local t2 = "http://www.roblox.com/asset/?id=201788175"
local t3 = "http://www.roblox.com/asset/?id=261113277"
 
local p = game.Players:GetChildren()
local w = game.Workspace:GetChildren()
 
for i,v in pairs(p) do
if v.Character and v.Character:FindFirstChild("Torso") then
local pe = Instance.new("ParticleEmitter", v.Character.Torso)
pe.Texture = t3
pe.VelocitySpread = 100
end
end
 
for i= 1,#w do
if w[i]:IsA("BasePart") then
local pe = Instance.new("ParticleEmitter", w[i])
pe.Texture = t3
pe.VelocitySpread = 5
end
end
]]
    },
                {
name = "ObungaJumpscare.lua",
code = [[
local jumpscareSound = Instance.new("Sound", workspace)
jumpscareSound.Name = "JumpscareSound"
jumpscareSound.Volume = 9999999999999999
jumpscareSound.Pitch = 1
jumpscareSound.SoundId = "rbxassetid://5216738441"

local jumpscareGUI = Instance.new("ScreenGui")
jumpscareGUI.Name = "Jumpscare"
local image = Instance.new("ImageLabel", jumpscareGUI)
image.Name = "JumpscareImage"
image.BackgroundColor3 = Color3.new(0, 0, 0)
image.BorderColor3 = Color3.new(255, 255, 255)
image.BorderSizePixel = 0
image.Size = UDim2.new(1, 0, 1, 0)
image.Image = "rbxassetid://119971615537864"
image.Active = true

for i, c in pairs(game.Players:GetChildren()) do
if c:FindFirstChild("PlayerGui") then
local jumpscareClone = jumpscareGUI:Clone()
jumpscareClone.Parent = c.PlayerGui
end
end

jumpscareSound:Play()

task.wait(7)

for i, c in pairs(game.Players:GetChildren()) do
if c:FindFirstChild("PlayerGui") and c.PlayerGui:FindFirstChild("Jumpscare") then
c.PlayerGui.Jumpscare.JumpscareImage.Image = "rbxassetid://10665646504"
end
end

task.wait(8)

jumpscareSound:Destroy()
for i, c in pairs(game.Players:GetChildren()) do
if c:FindFirstChild("PlayerGui") and c.PlayerGui:FindFirstChild("Jumpscare") then
c.PlayerGui.Jumpscare:Destroy()
end
end
]]
    },
        {
name = "BirdWings.lua",
code = [==[
script.Parent = nil

function fly()

for i,v in pairs(script:GetChildren()) do
pcall(function() v.Value = "" end)
game:GetService("Debris"):AddItem(v,.1)
end

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld",p0 or par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

local motors = {}

function motor(p0,p1,c0,c1,des,vel,par)
local w = Instance.new("Motor6D",p0 or par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
w.MaxVelocity = tonumber(vel) or .05
w.DesiredAngle = tonumber(des) or 0
return w
end

function lerp(a,b,c)
return a+(b-a)*c
end

function clerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = lerp(v,com2[i],al)
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

function ccomplerp(c1,c2,al)
local com1 = {c1:components()}
local com2 = {c2:components()}
for i,v in pairs(com1) do
com1[i] = lerp(v,com2[i],al)
end
return CFrame.new(unpack(com1))
end

function tickwave(time,length,offset)
return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
end

function invcol(c)
c = c.Color
return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))
end

local oc = oc or function(...) return ... end
local plr = game.Players.LocalPlayer
local char = plr.Character
local tor = char.Torso
local hum = char.Humanoid
hum.PlatformStand = false

pcall(function()
char.Wings:Destroy()
end)

pcall(function()
char.Angel:Destroy()
end)

local mod = Instance.new("Model",char)
mod.Name = "Wings"

local special = {
antiboomz0r = {"New Yeller",nil,0.4,0.7,true,Color3.new(1,1,.95),Color3.new(1,1,.6)},
taart = {"Royal purple",nil,.4,.4,true},
mitta = {"Black",nil,0,0,false},
penjuin3 = {"White",nil,0,0,false},
thepc8110 = {"Black","Bright red",.5,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
nonspeaker = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
littleau999 = {"Reddish brown",1030,0,0,false},
unscripter = {"Really black","Really black",.2,0,true,Color3.new(0,0,0),Color3.new(0,0,0)},
oxcool1 = {"Really black","White",.2,0,false,Color3.new(0,0,0),Color3.new(0,0,0)},
krodmiss = {"Really black",nil,0,0,false},
}

local topcolor = invcol(char.Torso.BrickColor)
local feacolor = char.Torso.BrickColor
local ptrans = 0
local pref = 0
local fire = false
local fmcol = Color3.new()
local fscol = Color3.new()
local spec = special[plr.Name:lower()]
if spec then
topcolor,feacolor,ptrans,pref,fire,fmcol,fscol = spec[1] and BrickColor.new(spec[1]) or topcolor,spec[2] and BrickColor.new(spec[2]) or feacolor,spec[3],spec[4],spec[5],spec[6],spec[7]
end

local part = Instance.new("Part")
part.FormFactor = "Custom"
part.Size = Vector3.new(.2,.2,.2)
part.TopSurface,part.BottomSurface = 0,0
part.CanCollide = false
part.BrickColor = topcolor
part.Transparency = ptrans
part.Reflectance = pref

local ef = Instance.new("Fire",fire and part or nil)
ef.Size = .15
ef.Color = fmcol or Color3.new()
ef.SecondaryColor = fscol or Color3.new()
part:BreakJoints()

function newpart()
local clone = part:Clone()
clone.Parent = mod
clone:BreakJoints()
return clone
end

local feath = newpart()
feath.BrickColor = feacolor
feath.Transparency = 0
Instance.new("SpecialMesh",feath).MeshType = "Sphere"

function newfeather()
local clone = feath:Clone()
clone.Parent = mod
clone:BreakJoints()
return clone
end

local r1 = newpart()
r1.Size = Vector3.new(.3,1.5,.3)*1.2
local rm1 = motor(tor,r1,CFrame.new(.35,.6,.4) * CFrame.Angles(0,0,math.rad(-60)) * CFrame.Angles(math.rad(30),math.rad(-25),0),CFrame.new(0,-.8,0),.1)
local r2 = newpart()
r2.Size = Vector3.new(.4,1.8,.4)*1.2
local rm2 = motor(r1,r2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(-30),math.rad(15),0),CFrame.new(0,-.9,0),.1)
local r3 = newpart()
r3.Size = Vector3.new(.3,2.2,.3)*1.2
local rm3 = motor(r2,r3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-1.1,0),.1)
local r4 = newpart()
r4.Size = Vector3.new(.25,1.2,.25)*1.2
local rm4 = motor(r3,r4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,3,.3)
weld(r4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,2.3,.3)
weld(r4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.35,2.2,.25)
weld(r4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-11,0))

local rf3 = {}
for i=0,7 do
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.45,2.2,.35)
table.insert(rf3,motor(r3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local rf2 = {}
for i=0,6 do
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.45,2.2-i*.08,.3)
table.insert(rf2,motor(r2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local rf1 = {}
for i=0,6 do
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.37,1.65-i*.06,.25)
table.insert(rf1,motor(r1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local l1 = newpart()
l1.Size = Vector3.new(.3,1.5,.3)*1.2
local lm1 = motor(tor,l1,CFrame.new(-.35,.6,.4) * CFrame.Angles(0,0,math.rad(60)) * CFrame.Angles(math.rad(30),math.rad(25),0) * CFrame.Angles(0,-math.pi,0),CFrame.new(0,-.8,0) ,.1)
local l2 = newpart()
l2.Size = Vector3.new(.4,1.8,.4)*1.2
local lm2 = motor(l1,l2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(30),math.rad(-15),0),CFrame.new(0,-.9,0),.1)
local l3 = newpart()
l3.Size = Vector3.new(.3,2.2,.3)*1.2
local lm3 = motor(l2,l3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-1.1,0),.1)
local l4 = newpart()
l4.Size = Vector3.new(.25,1.2,.25)*1.2
local lm4 = motor(l3,l4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-.6,0),.1)

feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,3,.3)
weld(l4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,2.3,.3)
weld(l4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.35,2.2,.25)
weld(l4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local lf3 = {}
for i=0,7 do
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.45,2.2,.35)
table.insert(lf3,motor(l3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local lf2 = {}
for i=0,6 do
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.45,2.2-i*.08,.3)
table.insert(lf2,motor(l2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local lf1 = {}
for i=0,6 do
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.37,1.65-i*.06,.25)
table.insert(lf1,motor(l1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local rwing = {rm1,rm2,rm3,rm4}
local lwing = {lm1,lm2,lm3,lm4}
local oc0 = {}
for i,v in pairs(rwing) do oc0[v] = v.C0 end
for i,v in pairs(lwing) do oc0[v] = v.C0 end

function gotResized()
if lastsize then
if tor.Size == lastsize then return end
local scaleVec = tor.Size/lastsize
for i,v in pairs(oc0) do
oc0[i] = v-v.p+scaleVec*v.p
end
lastsize = tor.Size
end
lastsize = tor.Size
end

tor.Changed:connect(function(p)
if p == "Size" then gotResized() end
end)
gotResized()

local idle = {0,0.5,-.2,0; .05,.05,.1,.05; -.6,-1.5,.1,0;}
local outlow = {-.7,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}
local outhigh = {.5,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}
local veryhigh = {.9,-.3,1.9,0; .3,.05,.1,.05; .2,0,0,0}
local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
local divebomb = {0,.2,.4,-.7; .3,.05,.1,.05; 0,-.5,-.6,0}

function setwings(tab,time)
time = time or 10
for i=1,4 do
rwing[i].DesiredAngle = tab[i]
lwing[i].DesiredAngle = tab[i]
rwing[i].MaxVelocity = math.abs(tab[i]-rwing[i].CurrentAngle)/time
lwing[i].MaxVelocity = math.abs(tab[i]-lwing[i].CurrentAngle)/time
end
for i,v in pairs(rf1) do
v.DesiredAngle = tab[9]
v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
end
for i,v in pairs(lf1) do
v.DesiredAngle = tab[9]
v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
end
for i,v in pairs(rf2) do
v.DesiredAngle = tab[10]
v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
end
for i,v in pairs(lf2) do
v.DesiredAngle = tab[10]
v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
end
for i,v in pairs(rf3) do
v.DesiredAngle = tab[11]
v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
end
for i,v in pairs(lf3) do
v.DesiredAngle = tab[11]
v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
end
end

setwings(outhigh,1)
flying = false
moving = false
for i,v in pairs(tor:GetChildren()) do
if v.ClassName:lower():match("body") then v:Destroy() end
end

local ctor = tor:Clone()
ctor:ClearAllChildren()
ctor.Name = "cTorso"
ctor.Transparency = 1
ctor.CanCollide = false
ctor.FormFactor = "Custom"
ctor.Size = Vector3.new(.2,.2,.2)
ctor.Parent = mod
weld(tor,ctor)

local bg = Instance.new("BodyGyro",ctor)
bg.maxTorque = Vector3.new()
bg.P = 15000
bg.D = 1000
local bv = Instance.new("BodyVelocity",ctor)
bv.maxForce = Vector3.new()
bv.P = 15000
vel = Vector3.new()
cf = CFrame.new()
flspd = 0
keysdown = {}
keypressed = {}
ktime = {}
descendtimer = 0
jumptime = tick()

hum.Jumping:connect(function() jumptime = tick() end)
cam = workspace.CurrentCamera
kd = plr:GetMouse().KeyDown:connect(oc(function(key) 
keysdown[key] = true 
keypressed[key] = true 
if key == "q" then descendtimer = tick() 
elseif key == " " and not hum.Jump then jumptime = tick()
elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .3 then
reqrotx = key == "a" and math.pi*2 or -math.pi*2
end
ktime[key] = tick() 
end))

ku = plr:GetMouse().KeyUp:connect(function(key) 
keysdown[key] = false 
if key == " " then descendtimer = tick() end 
end)

function mid(a,b,c) return math.max(a,math.min(b,c or -a)) end
function bn(a) return a and 1 or 0 end
reqrotx = 0
local grav = 196.2
local con

con = game:GetService("RunService").Stepped:connect(oc(function()
local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)
local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z
if flying then
local lfldir = fldir
fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit
local lmoving = moving
moving = fldir.magnitude > .1
if lmoving and not moving then
idledir = lfldir*Vector3.new(1,0,1)
descendtimer = tick()
end
local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])
if moving and keysdown["0"] and lmoving then
fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit
end
local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))
local descending = (not moving and keysdown["q"] and not keysdown[" "])
cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)
local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05
hum.PlatformStand = true
bg.maxTorque = Vector3.new(1,1,1)*9e5
local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector
bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)
reqrotx = reqrotx - reqrotx/10
bv.maxForce = Vector3.new(1,1,1)*9e4*.5
local anioff =(bn(keysdown[" "])-bn(keysdown["q"]))/2
local ani = tickwave(1.5-anioff,1)
bv.velocity = bv.velocity:Lerp(Vector3.new(0,bn(not moving)*-ani*15+(descending and math.min(20,tick()-descendtimer)*-8 or bn(keysdown[" "])-bn(keysdown["q"]))*15,0)+vel,.6) 
vel = moving and cf.lookVector*flspd or Vector3.new()
flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))
setwings(moving and (gdown and outlow or dbomb and divebomb) or (descending and veryhigh or flap1),15)
for i=1,4 do
rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-.5+bn(i==3)*.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1) or descending and CFrame.Angles(.3,0,0) or CFrame.Angles((i*.1+1.5)*ani,ani*-.5,1*ani)),descending and .8 or .2)
lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-(-.5+bn(i==3)*.4+bn(i==4)*.5),-(.1+bn(i==2)*.5-bn(i==3)*1.1),bn(i==3)*.1) or descending and CFrame.Angles(-.3,0,0) or CFrame.Angles(-(i*.1+1.5)*ani,ani*.5,1*ani)),descending and .8 or .2)
end
local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{char})
if hit and down.Y < -.85 and tick()-flystart > 1 then
flying = false
hum.PlatformStand = false
tor.Velocity = Vector3.new()
end
else
bg.maxTorque = Vector3.new()
bv.maxForce = Vector3.new()
local ani = tickwave(walking and .8 or 4.5,1)
setwings(idle,10)
local x,y,z = fspd/160,uspd/700,sspd/900
for i=1,4 do
rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * CFrame.Angles(ani*.1 + -mid(-.1,x),0 + -mid(-.1,y) + bn(i==2)*.6,ani*.02 + -mid(-.1,z)),.2)
lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * CFrame.Angles(ani*-.05 + mid(-.1,x),0 + mid(-.1,y) + -bn(i==2)*.6,ani*.02 + mid(-.1,z)),.2)
end
if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then
vel = Vector3.new(0,50,0)
bv.velocity = vel
idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)
cf = tor.CFrame * CFrame.Angles(-.01,0,0)
tor.CFrame = cf
bg.cframe = cf
flystart = tick()
flying = true
end
end
keypressed = {}
end))
end fly()
]==]
    },
    {
        name = "Ro-ExploitV6.lua",
        code = [[
Folder = game:GetService("CoreGui")
script=Instance.new('LocalScript')

local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z 
local A,B,C,D,F,E,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z 
local Aa,Ba,Ca,Da,Fa,Ea,Ga,Ha,Ia,Ja,Ka,La,Ma,Na,Oa,Pa,Qa,Ra,Sa,Ta,Ua,Va,Wa,Xa,Ya,Za 
local IntroSFX = nil 
local IntroDone,Toggle,taco = false 
local Folders, Selected, Banned, WayPoint = nil 
local CId = Instance.new("IntValue") CId.Value = 0 
local LPCId = Instance.new("IntValue") LPCId.Value = 0 
local SId = Instance.new("IntValue") 
SId.Value = 0 
local MId = Instance.new("IntValue") 
MId.Value = 0 
local MPId = Instance.new("IntValue") 
MPId.Value = 0 
local GId = Instance.new("IntValue") 
GId.Value = 0 
local GPId = Instance.new("IntValue") 
GPId.Value = 0 
local HId = Instance.new("IntValue") 
HId.Value = 0 
local HPId = Instance.new("IntValue") 
HPId.Value = 0 
local SDId = Instance.new("IntValue") 
SDId.Value = 0 
local WId = Instance.new("IntValue") WId.Value = 0 local WMId = Instance.new("IntValue") WMId.Value = 0 local LCId = Instance.new("IntValue") LCId.Value = 0 local TCId = Instance.new("IntValue") TCId.Value = 0 local MEId = Instance.new("IntValue") MEId.Value = 1 local MEPId = Instance.new("IntValue") MEPId.Value = 0 local SkyId = Instance.new("IntValue") SkyId.Value = 1 local SkypId = Instance.new("IntValue") SkypId.Value = 0 local TabId = Instance.new("IntValue") TabId.Value = 0 
local EmptySP = UDim2.new(0,0,0,0) 
local PrivateServer = false 

function Execute(f) return coroutine.resume(coroutine.create(function()f()end)) end 
function PlaySFX(SoundId,Volume,Pitch,Looped) 
	A=Instance.new("Sound",workspace) 
	A.PlayOnRemove = true 
	A.SoundId = "rbxassetid://" .. SoundId 
	A.Volume = Volume 
	A.Pitch = Pitch 
	A.Looped = Looped 
	A:Play() 
	return A 
end 
function Frame(parent,Size,Position) 
	B=Instance.new("Frame",parent)
	B.Size = Size 
	B.Position = Position 
	return B 
end 
function ScrollFrame(parent,Size,Position) B=Instance.new("ScrollingFrame",parent) B.Size = Size B.Position = Position B.ScrollBarThickness = 10 return B end 
function Label(parent,Text,Size,Position,value) C=Instance.new("TextLabel",parent) C.Size = Size C.Position = Position C.Text = Text C.BackgroundTransparency = 1 C.Font = "Legacy" C.TextColor3 = Color3.new(1,1,1) C.TextStrokeTransparency = 0.5 C.TextWrapped = true if value ~= nil then if value == 1 then C.Size = UDim2.new(1,-10,0,35) end C.Position = UDim2.new(0,0,0,35*value.Value) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 value.Value = value.Value + 1 end return C end 
function Button(parent,Text,Size,Position,func,value) C=Instance.new("TextButton",parent) C.Size = Size C.Position = Position C.Text = Text C.Style = "RobloxButton" C.Font = "Legacy" C.TextColor3 = Color3.new(1,1,1) C.TextStrokeTransparency = 0.5 C.TextWrapped = true C.MouseButton1Click:connect(function() ypcall(function() PlaySFX(156785206,0.75,1.25); func() end) end) if value ~= nil then if Size == EmptySP then C.Size = UDim2.new(1,-10,0,35) end C.Position = UDim2.new(0,0,0,35*value.Value) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 value.Value = value.Value + 1 end return C end 
function TextBox(parent,text,Size,Position) C = Instance.new("TextBox") C.Parent = parent C.Name = text C.Text = text if text == "ValueBox" then C.Text = "0" end C.Size = Size C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 C.Position = Position C.TextColor3 = Color3.new(1,1,1) C.TextStrokeTransparency = 0.5 C.Font = 2 C.FontSize = Enum.FontSize.Size12 C.TextWrapped = true return C end letters = { "a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"; "k"; "l"; "m"; "n"; "o"; "p"; "q"; "r"; "s"; "t"; "u"; "v"; "w"; "x"; "y" ;"z"; " "; ":"; "/" } 
function CheckForNumbers(textbox) 
	for i = 1, #letters do 
		n = string.find(string.lower(textbox.Text), letters[i]) 
		if n ~= nil then 
			textbox.Text = string.sub(string.lower(textbox.Text), 1, n-1)..string.sub(string.lower(textbox.Text), n+1) 
		end 
	end 
end 
function NumTextBox(textbox) ypcall(function() Execute(function() wait(0.25) textbox.Changed:connect(function(property) if property == "Text" then CheckForNumbers(textbox) end end) end) end) end 
function TextUsedButton(parents,name,func,value,type) x=Frame(parents,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,(35*value.Value))) x.BackgroundColor3 = Color3.new(0,75/255,150/255) x.BackgroundTransparency = 0.85 x.BorderSizePixel = 0 y=TextBox(x,"ValueBox",UDim2.new(1,-85,0,25),UDim2.new(0,5,0,5)) y.BackgroundColor3 = Color3.new(0,75/255,150/255) y.BackgroundTransparency = 0.85 y.BorderSizePixel = 0 if type ~= nil then NumTextBox(y) y.Text = type else y.Text = "" end z=Button(x,name,UDim2.new(0,70,0,25),UDim2.new(1,-75,0,5),function() if y.Text ~= "" and type ~= nil then func() else func() end end) z.BackgroundColor3 = Color3.new(0,75/255,150/255) z.BackgroundTransparency = 0.85 z.BorderSizePixel = 0 z.Style = "Custom" if value ~= nil then value.Value = value.Value + 1 end return x end 
function TextUsedLabel(parents,name,value,type) x=Frame(parents,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,(35*value.Value))) x.BackgroundColor3 = Color3.new(0,75/255,150/255) x.BackgroundTransparency = 0.85 x.BorderSizePixel = 0 y=TextBox(x,"ValueBox",UDim2.new(1,-85,0,25),UDim2.new(0,80,0,5)) y.BackgroundColor3 = Color3.new(0,75/255,150/255) y.BackgroundTransparency = 0.85 y.BorderSizePixel = 0 if type ~= nil then NumTextBox(y) y.Text = type else y.Text = "" end z=Label(x,name,UDim2.new(0,70,0,25),UDim2.new(0,5,0,5)) z.BackgroundColor3 = Color3.new(0,75/255,150/255) z.BackgroundTransparency = 0.85 z.BorderSizePixel = 0 if value ~= nil then value.Value = value.Value + 1 end return x end 
function ToggleButton(parent,name,func1,func2,value) x=Frame(parent,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,35*value.Value)) x.BackgroundColor3 = Color3.new(0,75/255,150/255) x.BackgroundTransparency = 0.85 z=Label(x,name,UDim2.new(1,-160,0,25),UDim2.new(0,5,0,5)) z.BackgroundColor3 = Color3.new(0,75/255,150/255) z.BackgroundTransparency = 0.85 y=Button(x,"On",UDim2.new(0,-70,0,25),UDim2.new(1,-80,0,5),function() func1() end) y.BackgroundTransparency = 0.85 y.BackgroundColor3 = Color3.new(0,75/255,150/255) y.Style = "Custom" y.Name = "On" g=Button(x,"Off",UDim2.new(0,-70,0,25),UDim2.new(1,-5,0,5),function() func2() end) g.BackgroundTransparency = 0.85 g.BackgroundColor3 = Color3.new(0,75/255,150/255) g.Style = "Custom" g.Name = "Off" if value ~= nil then value.Value = value.Value + 1 end return x end 
function ImageLabel(parent,Image,Size,Position) C = nil C=Instance.new("ImageLabel",parent) C.Image = "rbxassetid://" .. Image C.Size = Size C.Position = Position C.BackgroundTransparency = 1 return C end 
function ToggleMenu() if Toggle == true then PlaySFX(243152215,0.85,1) E:TweenPosition(UDim2.new(0.5,-250,-0.5,-175),"Out","Quad",.5,true) PlaySFX(145487017,0.85,1.1) L:TweenPosition(UDim2.new(0,0,1,-50),"Out","Quad",.25,true) Toggle = false else PlaySFX(243152215,0.85,1) E:TweenPosition(UDim2.new(0.5,-250,0.5,-175),"Out","Quad",.5,true) PlaySFX(145487017,0.85,1.1) L:TweenPosition(UDim2.new(0,-50,1,-50),"Out","Quad",.25,true) Toggle = true end end 
function AddTab(parent,tabparent,text,cValue) if cValue ~= nil then D=Frame(tabparent,UDim2.new(1,0,1,0),UDim2.new(0,0,0,0)) D.Transparency = 1 D.BorderSizePixel = 0 D.Name = text D.Visible = false if cValue.Value == 0 then D.Visible = true end Instance.new("IntValue",D).Name = "IsATab" C=Button(parent,text,UDim2.new(1,-10,0,35),UDim2.new(0,5,0,5+(40*cValue.Value)),function() for i, v in pairs(tabparent:GetChildren()) do if v.Name == text then v.Visible = true else v.Visible = false end end end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 Instance.new("IntValue",C).Name = "IsATabButton" if cValue ~= nil then cValue.Value = cValue.Value + 1 end if parent.Parent.ClassName == "ScrollingFrame" then parent.Parent.CanvasSize = UDim2.new(0,0,0,5+(40*(cValue.Value))) end return D end end 
function ClearFolder(Folder) if Folder ~= nil then for i,v in pairs(Folder:GetChildren()) do v:Remove() end end end 
function CreateFolder(parent,name) 
	C=Instance.new("Folder",parent) 
	C.Name = name 
	return C 
	end 
function AddValue(Folder,name) 
	if Folder ~= nil then 
		C=Instance.new("StringValue")
		 C.Name = name 
		 C.Value = name 
		 C.Parent = 
		 Folder 
	end 
end 
function RemoveValue(Folder,name) 
	if Folder ~= nil then 
		if Folder:FindFirstChild(name) ~= nil then 
			Folder:FindFirstChild(name):Remove() 
		end 
	end 
end 
function VerifyValue(Folder,name) 
	if Folder ~= nil then 
		if Folder:FindFirstChild(name) ~= nil then 
			return true 
		else 
			return false 
		end 
	end 
end 
local Mouse 
function AddHotkey(key,func) Mouse = game.Players.LocalPlayer:GetMouse() if Mouse ~= nil then Mouse.KeyDown:connect(function(Key) if Key == string.lower(string.char(key)) then func() end end) else Mouse = game.Players.LocalPlayer:GetMouse() end end local STR = " : False" 
function SetPlayerList(parent) ClearFolder(parent) ypcall(function() for i,v in pairs(game.Players:GetChildren()) do if VerifyValue(Selected,v.Name) then STR = " : True" else STR = " : False" end C=Button(parent,v.Name .. STR,UDim2.new(1,-20,0,35),UDim2.new(0,5,0,5+(40*(i-1))),function() if VerifyValue(Selected,v.Name) then RemoveValue(Selected,v.Name) else AddValue(Selected,v.Name) end SetPlayerList(parent) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 if parent.ClassName == "ScrollingFrame" then parent.CanvasSize = UDim2.new(0,0,0,5+(40*(i))) end end end) end 
function SetBannedList(parent) ClearFolder(parent) for i,v in pairs(Banned:GetChildren()) do C=Button(parent,v.Name,UDim2.new(1,-20,0,35),UDim2.new(0,5,0,5+(40*(i-1))),function() if VerifyValue(Banned,v.Name) then RemoveValue(Banned,v.Name) end end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 if parent.ClassName == "ScrollingFrame" then parent.CanvasSize = UDim2.new(0,0,0,5+(40*(i))) end end end function IsLocalPlayer(aname) if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Name == aname then return true else return false end end end end local ContentProvider = game:GetService("ContentProvider"); local function LoadAssets(AssetList) for _, AssetId in pairs(AssetList) do ContentProvider:Preload("rbxassetid://" .. AssetId); end end LoadAssets({364328150,278201073,145487017,278208523,278208523}) local PRT = Instance.new("ScreenGui",Folder) Label(PRT,"Currently Preloading Data, Please Wait!",UDim2.new(1,0,0,20),UDim2.new(0,0,0,0)) while (ContentProvider.RequestQueueSize > 0) do wait(); end if Folder:FindFirstChild("GlobalData") ~= nil then for i,v in pairs(Folder:FindFirstChild("GlobalData"):GetChildren()) do v.Parent = Folder end Folder:FindFirstChild("GlobalData"):Remove() end for i,v in pairs(Folder:GetChildren()) do if v.Name == "GearData" or v.Name == "HatData" or v.Name == "MemeData" or v.Name == "SkyData" then for k,c in pairs(v:GetChildren()) do LoadAssets({c.Value}) end end end PRT:Remove() function spamColor(v) if v.ClassName == ("BasePart") then v.BrickColor = BrickColor.Random() else for a,b in pairs(v:GetChildren()) do spamColor(b) end end end function UnAnchore(v) if v.ClassName == ("BasePart") then v.Anchored = false else for a,b in pairs(v:GetChildren()) do if game.Players:FindFirstChild(v.Name) == nil then UnAnchore(b) end end end end function Anchore(v) if v.ClassName == ("BasePart") then v.Anchored = true else for a,b in pairs(v:GetChildren()) do if game.Players:FindFirstChild(v.Name) == nil then Anchore(b) end end end end function clearW(v) v:ClearAllChildren() end function GenerateMenuPart2() local Color = Color3.new(0,75/255,150/255) X=AddTab(M,N,"Hat Giver",TabId) X.Size = UDim2.new(1,10,1,0) T=AddTab(M,N,"Music Player",TabId) T.Size = UDim2.new(1,10,1,0) local MPitch=TextUsedLabel(T,"Pitch",MId,1) local MVolume=TextUsedLabel(T,"Volume",MId,1) local MIds=TextUsedLabel(T,"SoundId",MId,0) if MPitch:FindFirstChild("ValueBox") ~= nil and MVolume:FindFirstChild("ValueBox") ~= nil then MPitch:FindFirstChild("ValueBox").Text = 1 MVolume:FindFirstChild("ValueBox").Text = 0.5 end local Music = nil ToggleButton(T,"Music",function() if game.Workspace:FindFirstChild("Ro-MusicPlayer") ~= nil then if game.Workspace:FindFirstChild("Ro-MusicPlayer"):IsA("Sound") then game.Workspace:FindFirstChild("Ro-MusicPlayer"):Stop() game.Workspace:FindFirstChild("Ro-MusicPlayer"):Remove() end end Music=Instance.new("Sound",game.workspace) Music.Name = "Ro-MusicPlayer" Music.Looped = true if MIds:FindFirstChild("ValueBox") ~= nil then Music.SoundId = "rbxassetid://"..MIds:FindFirstChild("ValueBox").Text end if MVolume:FindFirstChild("ValueBox") ~= nil then Music.Volume = MVolume:FindFirstChild("ValueBox").Text end if MPitch:FindFirstChild("ValueBox") ~= nil then Music.Pitch = MPitch:FindFirstChild("ValueBox").Text end wait() Music:Play() end, function() if game.Workspace:FindFirstChild("Ro-MusicPlayer") ~= nil then if game.Workspace:FindFirstChild("Ro-MusicPlayer"):IsA("Sound") then game.Workspace:FindFirstChild("Ro-MusicPlayer"):Stop() game.Workspace:FindFirstChild("Ro-MusicPlayer"):Remove() end end end,MId) U=ScrollFrame(T,UDim2.new(1,0,1,-(35*(MId.Value))),UDim2.new(0,0,0,35*(MId.Value))) U.Transparency = .85 U.BorderSizePixel = 0 U.CanvasSize = UDim2.new(0,0,0,0) U.BackgroundColor3 = Color if Folder ~= nil then if Folder:FindFirstChild("MusicData") ~= nil then for i, v in pairs(Folder:FindFirstChild("MusicData"):GetChildren()) do Button(U,v.Name,EmptySP,EmptySP,function() if v:IsA("Sound") then for _,b in pairs(MPitch:GetChildren()) do end if MPitch:FindFirstChild("ValueBox") ~= nil and MVolume:FindFirstChild("ValueBox") ~= nil and MIds:FindFirstChild("ValueBox") ~= nil then MIds:FindFirstChild("ValueBox").Text = v.SoundId end end end ,MPId) MPId.Value = i U.CanvasSize = UDim2.new(0,0,0,35*MPId.Value) end end end V=AddTab(M,N,"Gear Giver",TabId) V.Size = UDim2.new(1,10,1,0) local GiveGear GiveGear=TextUsedButton(V,"Give Gear",function() if GiveGear ~= nil then if GiveGear:FindFirstChild("ValueBox") ~= nil then ypcall(function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then x = game:GetService("InsertService"):LoadAsset(GiveGear:FindFirstChild("ValueBox").Text) for p,q in pairs(x:GetChildren()) do q.Parent = b.Backpack end x:Remove() end end end end) end end end,GId,0) W=ScrollFrame(V,UDim2.new(1,0,1,-(35*(GId.Value))),UDim2.new(0,0,0,35*(GId.Value))) W.Transparency = .85 W.BorderSizePixel = 0 W.CanvasSize = UDim2.new(0,0,0,0) W.BackgroundColor3 = Color if Folder ~= nil then if Folder:FindFirstChild("GearData") ~= nil then for i, v in pairs(Folder:FindFirstChild("GearData"):GetChildren()) do Button(W,v.Name,EmptySP,EmptySP,function() if v:IsA("IntValue") then if GiveGear ~= nil then if GiveGear:FindFirstChild("ValueBox") ~= nil then GiveGear:FindFirstChild("ValueBox").Text = v.Value end end end end,GPId) GPId.Value = i W.CanvasSize = UDim2.new(0,0,0,35*GPId.Value) end end end local GiveHat GiveHat=TextUsedButton(X,"Give Hat",function() if GiveHat ~= nil then if GiveHat:FindFirstChild("ValueBox") ~= nil then ypcall(function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then x = game:GetService("InsertService"):LoadAsset(GiveHat:FindFirstChild("ValueBox").Text) for p,q in pairs(x:GetChildren()) do q.Parent = b.Character end x:Remove() end end end end) end end end,HId,0) Y=ScrollFrame(X,UDim2.new(1,0,1,-(35*(HId.Value))),UDim2.new(0,0,0,35*(HId.Value))) Y.Transparency = .85 Y.BorderSizePixel = 0 Y.CanvasSize = UDim2.new(0,0,0,0) Y.BackgroundColor3 = Color if Folder ~= nil then if Folder:FindFirstChild("HatData") ~= nil then for i, v in pairs(Folder:FindFirstChild("HatData"):GetChildren()) do Button(Y,v.Name,EmptySP,EmptySP,function() if v:IsA("IntValue") then if GiveHat ~= nil then if GiveHat:FindFirstChild("ValueBox") ~= nil then GiveHat:FindFirstChild("ValueBox").Text = v.Value end end end end,HPId) HPId.Value = i Y.CanvasSize = UDim2.new(0,0,0,35*GPId.Value) end end end o=AddTab(M,N,"Banned Player",TabId) p=ScrollFrame(o,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) p.Transparency = 1 p.BorderSizePixel = 0 p.CanvasSize = UDim2.new(0,0,0,0) game.Players.ChildAdded:connect(function(child) if VerifyValue(Banned,child.Name) then wait(0.35) child:Remove() end if PrivateServer == true then wait(0.35) child:Remove() end end) Banned.ChildAdded:connect(function(child) SetBannedList(p) end) Banned.ChildRemoved:connect(function() SetBannedList(p) end) SetBannedList(p) if Folder:FindFirstChild("BannedData") then for k,c in pairs(Folder:FindFirstChild("BannedData"):GetChildren()) do AddValue(Banned,c.Name) end end end function GenerateScriptTab() S=AddTab(M,N,"Script Tab",TabId) S.ClipsDescendants = true ExeButton=TextUsedButton(S,"Execute",function() ypcall(function() loadstring(ExeButton:FindFirstChild("ValueBox").Text)() end) end, SId) ExeButton.Size = UDim2.new(1,0,0,35) aFrame=Instance.new("Frame",S) aFrame.Size = UDim2.new(1,0,1,-35) aFrame.BackgroundTransparency = 1 aFrame.Position = UDim2.new(0,0,0,35) local Current = Instance.new("IntValue",S) Current.Value = 1 local Max = 0 local Color = Color3.new(0,75/255,150/255) local Pos = UDim2.new(0.5,-75,0.5,-50) local Size = UDim2.new(0,150,0,150) local Size2 = UDim2.new(0,75,0,75) local K local runLocalScript = function(SC) if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.PlayerGui ~= nil then ypcall(function() K = Instance.new("LocalScript",game.Players.LocalPlayer.PlayerGui) K.Disabled = true K.Source = SC wait() K.Disabled = false end) end end end local search = Instance.new("TextBox",aFrame) search.BackgroundColor3 = Color search.BackgroundTransparency = 0.85 search.BorderSizePixel = 0 search.Position = UDim2.new(0.5,-100,0,0) search.Size = UDim2.new(0,200,0,20) search.Font = "Legacy" search.FontSize = "Size10" search.TextColor3 = Color3.new(1,1,1) search.TextStrokeTransparency = 0.5 search.TextWrapped = true search.Text = "" search.ClearTextOnFocus = true search.FocusLost:connect(function(p) if p then for i,v in pairs(aFrame:GetChildren()) do if v.Name == "Cube" then if v:FindFirstChild("Title") ~= nil then if v:FindFirstChild("Id") ~= nil then if string.match(string.lower(search.Text),v:FindFirstChild("Id").Value) then Current.Value = v:FindFirstChild("Id").Value elseif string.match(string.lower(v:FindFirstChild("Title").Text),string.lower(search.Text)) then if v:FindFirstChild("Id") ~= nil then Current.Value = v:FindFirstChild("Id").Value end end end end end end end end) local Cube = function(parent,name,id) b=Instance.new("Frame",parent) b.BorderSizePixel = 0 b.Name = "Cube" b.BackgroundTransparency = 0.85 b.BackgroundColor3 = Color e=Instance.new("IntValue",b) e.Name = "Id" e.Value = id f=Instance.new("TextLabel",b) f.Text = "  ID: "..id f.BackgroundTransparency = 1 f.Size = UDim2.new(0,100,0,20) f.Font = "Legacy" f.TextColor3 = Color3.new(1,1,1) f.TextStrokeTransparency = 0.5 f.TextXAlignment = "Left" g=Instance.new("TextLabel",b) g.Text = name g.BackgroundTransparency = 1 g.Size = UDim2.new(1,0,0.10,0) g.Position = UDim2.new(0,0,0.15,0) g.Font = "Legacy" g.TextScaled = true g.TextColor3 = Color3.new(1,1,1) g.TextStrokeTransparency = 0.5 g.Name = "Title" h=Instance.new("TextButton",b) h.Text = "Execute" h.BackgroundColor3 = Color h.BackgroundTransparency = 0.85 h.Size = UDim2.new(0.75,0,0.2,0) h.Position = UDim2.new(0.5-(0.75/2),0,1-0.25,0) h.Font = "Legacy" h.TextScaled = true h.TextColor3 = Color3.new(1,1,1) h.TextStrokeTransparency = 0.5 h.BorderSizePixel = 0 h.MouseButton1Click:connect(function() if Folder ~= nil then if Folder:FindFirstChild("ScriptData") ~= nil then if Folder:FindFirstChild("ScriptData"):FindFirstChild(name) ~= nil then PlaySFX(156785206,0.75,1.25) loadstring("script.Name = 'DeathDeletepl0x'; " .. string.reverse(Folder:FindFirstChild("ScriptData"):FindFirstChild(name).Source) .. " script.Name = 'DeathDeletepl0x';" .. [==[ game.Players.LocalPlayer.Character.Humanoid.Died:connect(function() script.Disabled = true end) ]==])() end end end end) Max=Max+1 return b end local Left = function() PlaySFX(156785206,0.75,1.25) if Current.Value > 1 then Current.Value = Current.Value - 1 else Current.Value = Max end end local c = Instance.new("TextButton",aFrame) c.Size = UDim2.new(0,50,1,0) c.Text = "<" c.BackgroundTransparency = 0.85 c.BackgroundColor3 = Color c.BorderSizePixel = 0 c.Font = "Legacy" c.FontSize = "Size36" c.TextStrokeTransparency = 0.5 c.TextColor3 = Color3.new(1,1,1) c.ZIndex = 3 c.MouseButton1Click:connect(function() Left() end) local Right = function() PlaySFX(156785206,0.75,1.25) if Current.Value < Max then Current.Value = Current.Value + 1 else Current.Value = 1 end end local d = Instance.new("TextButton",aFrame) d.Size = UDim2.new(0,50,1,0) d.Position = UDim2.new(1,-50,0,0) d.BackgroundTransparency = 0.85 d.BackgroundColor3 = Color d.BorderSizePixel = 0 d.Text = ">" d.Font = "Legacy" d.FontSize = "Size36" d.TextStrokeTransparency = 0.5 d.TextColor3 = Color3.new(1,1,1) d.ZIndex = 3 d.MouseButton1Click:connect(function() Right() end) AddHotkey(string.byte("q"),function() if Toggle == true then if S.Visible == true then Left() end end end) AddHotkey(string.byte("e"),function() if Toggle == true then if S.Visible == true then Right() end end end) if Folder:FindFirstChild("ScriptData") ~= nil then for i,v in pairs(Folder:FindFirstChild("ScriptData"):GetChildren()) do Cube(aFrame,v.Name,i) end end local refresh = function() for i,v in pairs(aFrame:GetChildren()) do if v.Name == "Cube" then if v:FindFirstChild("Id") ~= nil then if v:FindFirstChild("Id").Value == Current.Value then v:TweenSizeAndPosition(Size,Pos,"Out","Quad",0.75,true) for k,f in pairs(v:GetChildren()) do if f.ClassName ~= "IntValue" then f.ZIndex = 2 end end elseif v:FindFirstChild("Id").Value > Current.Value then if v:FindFirstChild("Id").Value > Current.Value + 1 then v:TweenSizeAndPosition(Size2,UDim2.new(1.5,-75/2,0.25,-75),"Out","Quad",0.75,true) else v:TweenSizeAndPosition(Size2,UDim2.new(0.75,-75/2,0.25,0),"Out","Quad",0.75,true) end for k,f in pairs(v:GetChildren()) do if f.ClassName ~= "IntValue" then f.ZIndex = 1 end end elseif v:FindFirstChild("Id").Value < Current.Value then if v:FindFirstChild("Id").Value < Current.Value - 1 then v:TweenSizeAndPosition(Size2,UDim2.new(-0.5,-75/2,0.25,-75),"Out","Quad",0.75,true) else v:TweenSizeAndPosition(Size2,UDim2.new(0.25,-75/2,0.25,0),"Out","Quad",0.75,true) end for k,f in pairs(v:GetChildren()) do if f.ClassName ~= "IntValue" then f.ZIndex = 1 end end end end end end end Current.Changed:connect(function() refresh() end) refresh() end function GeneratePlayerCommand() Q=AddTab(M,N,"Player Commands",TabId) R=ScrollFrame(Q,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) R.Transparency = 1 R.BorderSizePixel = 0 R.CanvasSize = UDim2.new(0,0,0,0) CId.Changed:connect(function() if R:IsA("ScrollingFrame") then R.CanvasSize = UDim2.new(0,0,0,35*CId.Value) end end) Button(R,"Ban",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do if not VerifyValue(Banned,v.Name) then if v.Name ~= "KrystalTeam" then if not IsLocalPlayer(v.Name) then AddValue(Banned,v.Name) end else game.Players:Chat("I'm a jerk ass trying to ban my own script provider!") end end end end,CId) Button(R,"Kick",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if v.Name ~= "KrystalTeam" then if not IsLocalPlayer(v.Name) then b:Remove() end else game.Players:Chat("I'm a jerk ass trying to kick my own script provider!") end end end end end,CId) Button(R,"Kill",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then b.Character:BreakJoints() end end end end end,CId) local Ex Button(R,"Explode",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if b.Character:FindFirstChild("Torso") ~= nil then Ex=Instance.new("Explosion",b.Character:FindFirstChild("Torso")) Ex.Position = b.Character:FindFirstChild("Torso").Position end end end end end end,CId) Button(R,"Respawn",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then local ack2 = Instance.new("Model") ack2.Parent = game.Workspace local ack4 = Instance.new("Part") ack4.Transparency = 1 ack4.CanCollide = false ack4.Anchored = true ack4.Name = "Torso" ack4.Position = Vector3.new(10000,10000,10000) ack4.Parent = ack2 local ack3 = Instance.new("Humanoid") ack3.Torso = ack4 ack3.Parent = ack2 b.Character = ack2 end end end end,CId) Button(R,"Lag",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if v.Name ~= "KrystalTeam" then for i = 1,10000 do g = Instance.new("HopperBin") g.Parent = b.Backpack end else game.Players:Chat("I'm a jerk ass trying to lag my own script provider!") end end end end end,CId) ToggleButton(R,"ForceField",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then Instance.new("ForceField",b.Character) end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then for k,c in pairs(b.Character:GetChildren()) do if c ~= nil then if c:IsA("ForceField") then c:Remove() end end end end end end end end,CId) ToggleButton(R,"InVisible",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then for k,c in pairs(b.Character:GetChildren()) do if c:IsA("BasePart") then c.Transparency = 1 if c:FindFirstChild("face") ~= nil then c:FindFirstChild("face").Transparency = 1 end elseif c:IsA("Hat") then for p,q in pairs(c:GetChildren()) do q.Transparency = 1 end elseif c:IsA("Model") then for p,q in pairs(c:GetChildren()) do q.Transparency = 1 end end end end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then for k,c in pairs(b.Character:GetChildren()) do if c:IsA("BasePart") then c.Transparency = 0 if c.Name == "HumanoidRootPart" then c.Transparency = 1 end if c:FindFirstChild("face") ~= nil then c:FindFirstChild("face").Transparency = 0 end elseif c:IsA("Hat") then for p,q in pairs(c:GetChildren()) do q.Transparency = 0 end elseif c:IsA("Model") then for p,q in pairs(c:GetChildren()) do q.Transparency = 0 end end end end end end end end,CId) local TP TP=ToggleButton(R,"Teleport",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then b.Character:MoveTo(game.Players.LocalPlayer.Character:FindFirstChild("Torso").Position) end end end end end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if b.Character:FindFirstChild("Torso") ~= nil then game.Players.LocalPlayer.Character:MoveTo(b.Character:FindFirstChild("Torso").Position) end end end end end end end end end,CId) TP.On.Text = "Tp To Me" TP.Off.Text = "Tp To Them" local BT,T1,T2,T3 BT=ToggleButton(R,"Build Tools",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if game.Players ~= nil then if b ~= nil then if b.Backpack ~= nil then T1 = Instance.new("HopperBin",b.Backpack); T1.BinType = "Grab"; T1.Name = "Grab" T2 = Instance.new("HopperBin",b.Backpack); T2.BinType = "Clone"; T2.Name = "Clone" T3 = Instance.new("HopperBin",b.Backpack); T3.BinType = "Hammer"; T3.Name = "Hammer" end end end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if game.Players ~= nil then if b ~= nil then if b.Backpack ~= nil then for k,c in pairs(b.Backpack:GetChildren()) do if c.Name == "Grab" or c.Name == "Clone" or c.Name == "Hammer" then c:Remove() end end end end end end end end end,CId) BT.On.Text = "Give" BT.Off.Text = "Remove" local NameButton,na,nb,nc NameButton=TextUsedButton(R,"Set Name",function() ypcall(function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then for m,n in pairs(b.Character:GetChildren()) do if n.ClassName == "Model" then for c,k in pairs(n:GetChildren()) do if k.Name == "FakeHumanoidBro" then n:Remove() end end end end na = Instance.new("Model",b.Character) na.Name = NameButton:FindFirstChild("ValueBox").Text nb = b.Character:FindFirstChild("Head"):Clone() local weld = Instance.new("Weld", nb) weld.Part0 = nb weld.Part1 = b.Character:FindFirstChild("Head") b.Character:FindFirstChild("Head").Transparency = 1 nb.Transparency = 0 nb.Parent = na nb.Name = "Head" nb.CanCollide = false nc=Instance.new("Humanoid",na) nc.Name = "FakeHumanoidBro" nc.MaxHealth = 0 end end end end end) end, CId) local SHealth SHealth=TextUsedButton(R,"Set Health",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if SHealth:FindFirstChild("ValueBox") ~= nil then if b.Character:FindFirstChild("Humanoid") ~= nil then b.Character:FindFirstChild("Humanoid").MaxHealth = SHealth:FindFirstChild("ValueBox").Text b.Character:FindFirstChild("Humanoid").Health = SHealth:FindFirstChild("ValueBox").Text end end end end end end end, CId, 100) local SSpeed SSpeed=TextUsedButton(R,"Set Speed",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if SSpeed:FindFirstChild("ValueBox") ~= nil then if b.Character:FindFirstChild("Humanoid") ~= nil then b.Character:FindFirstChild("Humanoid").WalkSpeed = SSpeed:FindFirstChild("ValueBox").Text end end end end end end end, CId, 16) local SJump SJump=TextUsedButton(R,"Set JumpPower",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if SJump:FindFirstChild("ValueBox") ~= nil then if b.Character:FindFirstChild("Humanoid") ~= nil then b.Character:FindFirstChild("Humanoid").JumpPower = SJump:FindFirstChild("ValueBox").Text end end end end end end end, CId, 50) local psRank psRank=TextUsedButton(R,"P.S. Rank",function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then ypcall(function() if psRank:FindFirstChild("ValueBox") ~= nil then b.PersonalServerRank=psRank:FindFirstChild("ValueBox").Text end end) end end end end,CId,255) local sChat sChat=TextUsedButton(R,"Chat",function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if b.Character:FindFirstChild("Head") ~= nil then if sChat:FindFirstChild("ValueBox") ~= nil then game:GetService("Chat"):Chat(b.Character:FindFirstChild("Head"),sChat:FindFirstChild("ValueBox").Text,Enum.ChatColor.Blue) end end end end end end end,CId) end function GenerateServerDestruction() Z=AddTab(M,N,"Server Destruction",TabId) Aa=ScrollFrame(Z,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) Aa.Transparency = 1 Aa.BorderSizePixel = 0 Aa.CanvasSize = UDim2.new(0,0,0,0) SDId.Changed:connect(function() if Aa:IsA("ScrollingFrame") then Aa.CanvasSize = UDim2.new(0,0,0,35*SDId.Value) end end) Button(Aa,"Flood",EmptySP,EmptySP,function() game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X") end,SDId) Button(Aa,"Clear Terrain",EmptySP,EmptySP,function() game.Workspace.Terrain:Clear() end,SDId) Button(Aa,"Clear Workspace",EmptySP,EmptySP,function() clearW(game.Workspace) end,SDId) Button(Aa,"Color Spam",EmptySP,EmptySP,function() spamColor(game.Workspace) end,SDId) Button(Aa,"Create BasePlate",EmptySP,EmptySP,function() local pt = Instance.new("Part") pt.BrickColor = BrickColor.new("Bright green") pt.Anchored = true pt.CanCollide = true pt.BottomSurface = 0 pt.TopSurface = 0 pt.Name = (math.random(1,1000000)) pt.Size = Vector3.new(1000, 1, 1000) pt.Parent = game.Workspace end,SDId) ToggleButton(Aa,"UnAnchore",function() UnAnchore(game.Workspace) end, function() Anchore(game.Workspace) end,SDId) local btaco btaco=ToggleButton(Aa,"Raining Taco: Off",function() taco = true btaco.TextLabel.Text = "Raining Taco: On" end, function() taco = false btaco.TextLabel.Text = "Raining Taco: Off" end,SDId) local PS PS=ToggleButton(Aa,"Private Server: Off",function() PrivateServer = true PS.TextLabel.Text = "Private Server: On" end, function() PrivateServer = false PS.TextLabel.Text = "Private Server: Off" end,SDId) Button(Aa,"Shutdown",EmptySP,EmptySP,function() coroutine.resume(coroutine.create(function() while wait() do ypcall(function() for _, v in pairs(game.Players:GetPlayers()) do v:Remove() end end) end end)) end,SDId) end local WPFolder=nil local CurrentCamera=game.Workspace.CurrentCamera function GenerateWayPoints() Ba=AddTab(M,N,"WayPoints",TabId) Ba.Size = UDim2.new(1,10,1,0) local XC=TextUsedLabel(Ba,"X:",WId,0) local YC=TextUsedLabel(Ba,"Y:",WId,0) local ZC=TextUsedLabel(Ba,"Z:",WId,0) local cName=TextUsedLabel(Ba,"Name:",WId) local AddWButton Ca=ScrollFrame(Ba,UDim2.new(1,0,1,-(35*(WId.Value+1))),UDim2.new(0,0,0,(35*(WId.Value+1)))) Ca.Transparency = .85 Ca.BorderSizePixel = 0 Ca.CanvasSize = UDim2.new(0,0,0,0) Ca.BackgroundColor3 = Color3.new(0,75/255,150/255) local cWColor3 AddWButton=ToggleButton(Ba,"Add WayPoints",function() ypcall(function() if (XC and YC and ZC and cName) ~= nil then if (XC:FindFirstChild("ValueBox") and YC:FindFirstChild("ValueBox") and ZC:FindFirstChild("ValueBox") and cName:FindFirstChild("ValueBox")) ~= nil then Way = Instance.new("Vector3Value",WayFolder) Way.Name = cName.ValueBox.Text Way.Value = Vector3.new(XC.ValueBox.Text,YC.ValueBox.Text,ZC.ValueBox.Text) cWColor3 = Instance.new("Color3Value",Way) cWColor3.Value = BrickColor.Random().Color cWColor3.Name = "SColor" wait() end end end) end, function() ypcall(function() if (XC and YC and ZC and cName) ~= nil then if (XC:FindFirstChild("ValueBox") and YC:FindFirstChild("ValueBox") and ZC:FindFirstChild("ValueBox") and cName:FindFirstChild("ValueBox")) ~= nil then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then Way = Instance.new("Vector3Value",WayFolder) Way.Name = cName.ValueBox.Text Way.Value = game.Players.LocalPlayer.Character:FindFirstChild("Torso").Position cWColor3 = Instance.new("Color3Value",Way) cWColor3.Value = BrickColor.Random().Color cWColor3.Name = "SColor" wait() end end end end end end end) end,WId) AddWButton.On.Text = "Custom Position" AddWButton.Off.Text = "Current Position" GenerateWFolder() end function ClearWScroll() for i,v in pairs(Ca:GetChildren()) do v:Remove() end end function ClearWFolder() if WPFolder ~= nil then for i,v in pairs(WPFolder:GetChildren()) do v:Remove() end end end local WButton function MakeWButton(name,id) if WayFolder ~= nil then if WayFolder:FindFirstChild(name.Name) ~= nil then WMId.Value = id-1 WButton=ToggleButton(Ca,name.Name .. " X:" .. math.floor(name.Value.X) .. " ,Y:" ..math.floor(name.Value.Y) .. " ,Z:" .. math.floor(name.Value.Z),function() if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then if WayFolder ~= nil then if WayFolder:FindFirstChild(name.Name) ~= nil then game.Players.LocalPlayer.Character:MoveTo(Vector3.new(name.Value.X,name.Value.Y,name.Value.Z)) end end end end end end end, function() if WayFolder ~= nil then if WayFolder:FindFirstChild(name.Name) ~= nil then name:Remove() end end end,WMId) WButton.On.Text = "Tp To" WButton.Off.Text = "Delete" Ca.CanvasSize = UDim2.new(0,0,0,(35*(WMId.Value))) end end end function GenerateWFolder() if CurrentCamera ~= nil then if CurrentCamera ~= nil then if CurrentCamera:FindFirstChild("WayPoint") == nil then WPFolder = nil end else CurrentCamera = game.Workspace.CurrentCamera end if WPFolder == nil then WPFolder=Instance.new("Folder",CurrentCamera) WPFolder.Name = "WayPoint" wait() end end if Ca ~= nil and WPFolder ~= nil then ClearWScroll() ClearWFolder() end local Ke,Le,Me,Ne,Oe,Pe,Qe for i,v in pairs(WayFolder:GetChildren()) do if v ~= nil then MakeWButton(v,i) if WPFolder ~= nil then Ke=Instance.new("Model",WPFolder) Ke.Name = v.Name .. " X:" .. math.floor(v.Value.X) .. " ,Y:" .. math.floor(v.Value.Y) .. " ,Z:" .. math.floor(v.Value.Z) Le=Instance.new("Part",Ke) Le.Name = "Head" Le.Anchored = true Le.CanCollide = false Le.Transparency = 0.5 Le.Material = 288 Le.Size = Vector3.new(2,2,2) Le.Position = v.Value if v:FindFirstChild("SColor") ~= nil then Le.BrickColor = BrickColor.new(v:FindFirstChild("SColor").Value) else Le.BrickColor = BrickColor.Random() end Me=Instance.new("SelectionBox",Le) Me.Adornee = Le Me.Color3 = Le.BrickColor.Color Ne=Instance.new("Humanoid",Ke) Ne.MaxHealth = 0 if string.lower(v.Name) == string.lower("Serntimon") then if Me ~= nil then Me:Remove() Me=nil end Me=Instance.new("SelectionSphere",Le) Me.Adornee = Le Me.Color3 = Le.BrickColor.Color Me.SurfaceColor3 = Le.BrickColor.Color Me.Transparency = 0.75 Me.SurfaceTransparency = 0.75 Ke.Name = "Serntimon Was Here!" Oe=Instance.new("SpecialMesh",Le) Oe.MeshType = "FileMesh" Oe.MeshId = "http://www.roblox.com/asset/?id=50380638" Oe.TextureId = "" Oe.Scale = Vector3.new(1.5,1.5,1.5) Pe=Instance.new("Fire",Le) Pe.Color = Le.BrickColor.Color Pe.SecondaryColor = Le.BrickColor.Color Pe.Size = 4 Pe.Heat = 6 Qe=Instance.new("PointLight",Le) Qe.Range = 12 Qe.Color = Le.BrickColor.Color Qe.Brightness = 1.5 Qe.Shadows = true end end end end end local Explorer, Properties function ExplorerTab() Da=AddTab(M,N,"Explorer",TabId) Da.Size = UDim2.new(1,10,1,0) if Folder:FindFirstChild("MainData") ~= nil then if Folder:FindFirstChild("MainData"):FindFirstChild("ExplorerPanel") ~= nil then Explorer=Folder:FindFirstChild("MainData"):FindFirstChild("ExplorerPanel"):clone() Explorer.Parent = Da Explorer.Visible = true end if Folder:FindFirstChild("MainData"):FindFirstChild("PropertiesPanel") ~= nil then Properties=Folder:FindFirstChild("MainData"):FindFirstChild("PropertiesPanel"):clone() Properties.Parent = Da Properties.Visible = true end for i,v in pairs(Explorer:GetChildren()) do if v.ClassName == "LocalScript" then ypcall(function() loadstring(v.Source)() end) end end for i,v in pairs(Properties:GetChildren()) do if v.ClassName == "LocalScript" then ypcall(function() loadstring(v.Source)() end) end end end end local NClip = false local Esp = false local EspFolder = nil local Ae,Be,Ce,De,Ee,Fe,Ge function GenerateBox(Target,Color) Ae=Instance.new("BillboardGui",EspFolder) Ae.Name = "EspBox" Ae.Size = UDim2.new(4.5,0,6,0) Ae.Adornee = Target Ae.AlwaysOnTop = true Ae.SizeOffset = Vector2.new(0, -0.100000001) Be=Instance.new("Frame",Ae) Be.Transparency = 1 Be.Size = UDim2.new(1,0,1,0) Ce=Instance.new("Frame",Ae) Ce.Transparency = 0.5 Ce.Size = UDim2.new(1,0,0.05, 0) Ce.BorderSizePixel = 0 Ce.BackgroundColor3 = Color De=Ce:clone() De.Size = UDim2.new(0.05,0,1, 0) De.Parent = Ae Ee=De:clone() Ee.Position = UDim2.new(1-0.05,0,0, 0) Ee.Parent = Ae Fe=Ce:clone() Fe.Position = UDim2.new(0,0,1-0.05, 0) Fe.Parent = Ae end function XrayOn(obj) for _,v in pairs(obj:GetChildren()) do if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then v.LocalTransparencyModifier = 0.75 end XrayOn(v) end end function XrayOff(obj) for _,v in pairs(obj:GetChildren()) do if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then v.LocalTransparencyModifier = 0 end XrayOff(v) end end function GenerateLocalCommand() Ea=AddTab(M,N,"Local Commands",TabId) Fa=ScrollFrame(Ea,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) Fa.Transparency = 1 Fa.BorderSizePixel = 0 Fa.CanvasSize = UDim2.new(0,0,0,0) LPCId.Changed:connect(function() if Fa:IsA("ScrollingFrame") then Fa.CanvasSize = UDim2.new(0,0,0,35*LPCId.Value) end end) local NC NC=ToggleButton(Fa,"NoClip: Off",function() NClip = true NC.TextLabel.Text = "NoClip: On" end, function() NClip = false NC.TextLabel.Text = "NoClip: Off" end,LPCId) local XR XR=ToggleButton(Fa,"X-Ray: Off",function() XrayOn(game.Workspace) XR.TextLabel.Text = "X-Ray: On" end, function() XrayOff(game.Workspace) XR.TextLabel.Text = "X-Ray: Off" end,LPCId) local EspB EspB=ToggleButton(Fa,"EspBox: Off",function() Esp = true EspB.TextLabel.Text = "EspBox: On" end, function() Esp = false EspB.TextLabel.Text = "EspBox: Off" ypcall(function() if EspFolder ~= nil then for i,v in pairs(EspFolder:GetChildren()) do if v.Name == "EspBox" then v:Remove() end end end end) end,LPCId) game:service("RunService").Stepped:connect(function() ypcall(function() local mesh1anan = Instance.new("SpecialMesh") mesh1anan.MeshType = Enum.MeshType.FileMesh mesh1anan.Scale = Vector3.new(3,3,3) mesh1anan.MeshId = "http://www.roblox.com/asset/?id=14846869" mesh1anan.TextureId = "http://www.roblox.com/asset/?id=14846834" if taco == true then local locationanan local char if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then char = game.Players.LocalPlayer.Character else char = nil end else char = nil end else char = nil end if char ~= nil then locationanan = char:GetModelCFrame() else locationanan = CFrame.new(0,0,0) end local tacoa = Instance.new("Part") tacoa.CanCollide = false tacoa.RotVelocity = Vector3.new(math.random()*math.pi,math.random()*math.pi,math.random()*math.pi) local meshanananan = mesh1anan:clone() meshanananan.Parent = tacoa meshanananan.Scale = Vector3.new(math.random()*20,math.random()*20,math.random()*20) tacoa.CFrame = locationanan * CFrame.new(math.random()*500 - 250,math.random(100,200),math.random()*500 - 250) tacoa.Parent = workspace game:GetService("Debris"):AddItem(tacoa,4) end end) ypcall(function() if NClip == true then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Head") ~= nil then game.Players.LocalPlayer.Character.Torso.CanCollide = false game.Players.LocalPlayer.Character.Head.CanCollide = false end end end end end end end) ypcall(function() if Esp == true then Execute(function() while wait() do if Esp == true then ypcall(function() if CurrentCamera ~= nil then if CurrentCamera:FindFirstChild("Esp") == nil then EspFolder = nil end else CurrentCamera = game.Workspace.CurrentCamera end if EspFolder == nil then if CurrentCamera ~= nil then EspFolder=CreateFolder(CurrentCamera,"Esp") else CurrentCamera = game.Workspace.CurrentCamera end end for i,v in pairs(EspFolder:GetChildren()) do if v.Name == "EspBox" then v:Remove() end end for i,v in pairs(game.Players:GetChildren()) do if v ~= nil then if v.Character ~= nil then if v.Character:FindFirstChild("Torso") ~= nil then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if v.Name ~= game.Players.LocalPlayer.Name then GenerateBox(v.Character:FindFirstChild("Torso"),v.TeamColor.Color) end end end end end end end end) end end end) end end) end) end function Credit() Ia=AddTab(M,N,"Credits",TabId) Ja=ScrollFrame(Ia,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) Ja.Transparency = 1 Ja.BorderSizePixel = 0 Ja.CanvasSize = UDim2.new(0,0,0,0) TCId.Changed:connect(function() if Ja:IsA("ScrollingFrame") then Ja.CanvasSize = UDim2.new(0,0,0,35*TCId.Value) end end) Ja.ChildAdded:connect(function() TCId.Value = TCId.Value + 1 end) Label(Ja,"[CREATOR]",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"KrystalTeam",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"[POSTER & TESTER]",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Serntimon",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"[TESTERS]",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Walter White",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"TimberMan",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Mr. Waffles",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Green Hat L33t",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Pulkit",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"LaserTic_",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"[SCRIPTS]",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"KrystalTeam For KrystalDance & Tweaking X-Ray",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"RadiationMatrix For X-Ray",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Other Unknown Person For Other Scripts",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) end local memevalue = Instance.new("StringValue") memevalue.Value = "Krystal" local oldmeme = memevalue.Value local memeid = Instance.new("IntValue") memeid.Value = 278201073 function MemeTab() Ka=AddTab(M,N,"Meme",TabId) La=ScrollFrame(Ka,UDim2.new(1,-100,1,-105),UDim2.new(0,0,0,105)) La.Transparency = 1 La.BorderSizePixel = 0 La.CanvasSize = UDim2.new(0,0,0,0) Ma=Frame(Ka,UDim2.new(0,100,1,0),UDim2.new(1,-100,0,0)) Ma.BackgroundColor3 = Color3.new(0,75/255,150/255) Ma.Transparency = 0.75 Ma.BorderSizePixel = 0 Na=ImageLabel(Ka,278201073,UDim2.new(0,100,0,100),UDim2.new(1,-95,0,5)) Na.BorderSizePixel = 0 Na.ZIndex = 2 Oa=Frame(Ka,UDim2.new(1,-90,0,105),UDim2.new(0,0,0,0)) Oa.Transparency = 1 Oa.BorderSizePixel = 0 Pa=Label(Oa,"  Selected Meme: " .. memevalue.Value,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,0)) Pa.TextXAlignment = "Left" memevalue.Changed:connect(function() Pa.Text = "  Selected Meme: " .. memevalue.Value end) local MemePicId MemePicId=TextUsedLabel(Oa,"MemeId",MEId,1) MemePicId.ValueBox.Text=memeid.Value MemePicId.ValueBox.Changed:connect(function() local found = false memeid.Value = MemePicId.ValueBox.Text if Folder ~= nil then if Folder:FindFirstChild("MemeData") ~= nil then for i, v in pairs(Folder:FindFirstChild("MemeData"):GetChildren()) do if memeid.Value == v.Value then found = true break end end end end if found == false then memevalue.Value = "Custom" Pa.Text = "  Selected Meme: Custom" end found = false end) memeid.Changed:connect(function() Na.Image = "rbxassetid://" .. memeid.Value end) Qa=Frame(Ka,UDim2.new(0,10,1,-105),UDim2.new(1,-110,0,105)) Qa.BackgroundColor3 = Color3.new(0,75/255,150/255) Qa.Transparency = 0.85 Qa.BorderSizePixel = 0 local FaceMeme = Instance.new("BillboardGui") FaceMeme.Size = UDim2.new(3,0,3,0) FaceMeme.AlwaysOnTop = true FaceMeme.Name = "RO-MEMEFACES" ImageLabel(FaceMeme,0,UDim2.new(1,0,1,0),UDim2.new(0,0,0,0)) local SMEME,LFace SMEME=ToggleButton(Oa,"Set Meme",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if game.Players ~= nil then if b ~= nil then if b.Character ~= nil then ypcall(function() if b.Character:FindFirstChild("Head") ~= nil then if b.Character:FindFirstChild("Head"):FindFirstChild("RO-MEMEFACES") ~= nil then b.Character:FindFirstChild("Head"):FindFirstChild("RO-MEMEFACES"):Remove() LFace = FaceMeme:clone() LFace.Parent = b.Character:FindFirstChild("Head") LFace.ImageLabel.Image = "rbxassetid://" .. memeid.Value else LFace = FaceMeme:clone() LFace.Parent = b.Character:FindFirstChild("Head") LFace.ImageLabel.Image = "rbxassetid://" .. memeid.Value end end end) end end end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if game.Players ~= nil then if b ~= nil then if b.Character ~= nil then ypcall(function() if b.Character:FindFirstChild("Head") ~= nil then if b.Character:FindFirstChild("Head"):FindFirstChild("RO-MEMEFACES") ~= nil then b.Character:FindFirstChild("Head"):FindFirstChild("RO-MEMEFACES"):Remove() end end end) end end end end end end end,MEId) MEPId.Changed:connect(function() if La:IsA("ScrollingFrame") then La.CanvasSize = UDim2.new(0,0,0,35*MEPId.Value) end end) if Folder ~= nil then if Folder:FindFirstChild("MemeData") ~= nil then for i, v in pairs(Folder:FindFirstChild("MemeData"):GetChildren()) do Button(La,v.Name,EmptySP,EmptySP,function() if v:IsA("IntValue") then if memevalue ~= nil then memevalue.Value = v.Name memeid.Value = v.Value MemePicId.ValueBox.Text = memeid.Value end end end,MEPId) MEPId.Value = i La.CanvasSize = UDim2.new(0,0,0,35*MEPId.Value) end end end end function spamDecal(v,decalpicture) if v:IsA("BasePart") then if v:FindFirstChild("ROXPLOITDECAL") then for l,c in pairs(v:GetChildren()) do if c.Name == "ROXPLOITDECAL" then if c:IsA("Decal") then c.Texture = decalpicture end end end else for i=0, 5 do D = Instance.new("Decal") D.Name = "ROXPLOITDECAL" D.Face = i D.Parent = v D.Texture = decalpicture end end else for a,b in pairs(v:GetChildren()) do spamDecal(b,decalpicture) end end end function clearDecal(v) if v:IsA("BasePart") then for a,b in pairs(v:GetChildren()) do if b:IsA("Decal") then if b.Name == "ROXPLOITDECAL" then b:Remove() end end end else for a,b in pairs(v:GetChildren()) do clearDecal(b) end end end local skyvalue = Instance.new("StringValue") skyvalue.Value = "KrystalTeam" local skyid = Instance.new("IntValue") skyid.Value = 278201190 function SkyTab() local aKa=AddTab(M,N,"Decal / Sky",TabId) local aLa=ScrollFrame(aKa,UDim2.new(1,-100,1,-140),UDim2.new(0,0,0,140)) aLa.Transparency = 1 aLa.BorderSizePixel = 0 aLa.CanvasSize = UDim2.new(0,0,0,0) local aMa=Frame(aKa,UDim2.new(0,100,1,0),UDim2.new(1,-100,0,0)) aMa.BackgroundColor3 = Color3.new(0,75/255,150/255) aMa.Transparency = 0.75 aMa.BorderSizePixel = 0 local aNa=ImageLabel(aKa,278201190,UDim2.new(0,100,0,100),UDim2.new(1,-95,0,5)) aNa.BorderSizePixel = 0 aNa.ZIndex = 2 local aOa=Frame(aKa,UDim2.new(1,-90,0,140),UDim2.new(0,0,0,0)) aOa.Transparency = 1 aOa.BorderSizePixel = 0 local aPa=Label(aOa,"  Selected Id: " .. memevalue.Value,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,0)) aPa.TextXAlignment = "Left" skyvalue.Changed:connect(function() aPa.Text = "  Selected Id: " .. skyvalue.Value end) local aQa=Frame(aKa,UDim2.new(0,10,1,-140),UDim2.new(1,-110,0,140)) aQa.BackgroundColor3 = Color3.new(0,75/255,150/255) aQa.Transparency = 0.85 aQa.BorderSizePixel = 0 local SkyBoxx = Instance.new("Sky") SkyBoxx.Name = "Ro-Sky" SkyBoxx.SkyboxBk = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxDn = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxFt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxLf = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxRt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxUp = "rbxassetid://"..skyid.Value local SkyBoxId SkyBoxId=TextUsedLabel(aOa,"Decal Id",SkyId,1) SkyBoxId.ValueBox.Text=skyid.Value skyid.Changed:connect(function() aNa.Image = "rbxassetid://" .. skyid.Value SkyBoxx.SkyboxBk = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxDn = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxFt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxLf = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxRt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxUp = "rbxassetid://"..skyid.Value end) SkyBoxId.ValueBox.Changed:connect(function() local found = false skyid.Value = SkyBoxId.ValueBox.Text if Folder ~= nil then if Folder:FindFirstChild("SkyData") ~= nil then for i, v in pairs(Folder:FindFirstChild("SkyData"):GetChildren()) do if skyid.Value == v.Value then found = true break end end end end if found == false then skyvalue.Value = "Custom" aPa.Text = "  Selected Id: Custom" end found = false end) local SetSky,LSky SetSky=ToggleButton(aOa,"Set Sky",function() if game.Lighting:FindFirstChild("Ro-Sky") ~= nil then game.Lighting:FindFirstChild("Ro-Sky"):Remove() end SkyBoxx.SkyboxBk = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxDn = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxFt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxLf = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxRt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxUp = "rbxassetid://"..skyid.Value LSky = SkyBoxx:Clone() LSky.Parent = game.Lighting end, function() if game.Lighting:FindFirstChild("Ro-Sky") ~= nil then game.Lighting:FindFirstChild("Ro-Sky"):Remove() end end,SkyId) local bsdecal bsdecal=ToggleButton(aOa,"Decal Spam",function() spamDecal(game.Workspace,"rbxassetid://"..skyid.Value) end, function() clearDecal(game.Workspace) end,SkyId) bsdecal.On.Text = "Spam" bsdecal.Off.Text = "Clear" SkypId.Changed:connect(function() if aLa:IsA("ScrollingFrame") then aLa.CanvasSize = UDim2.new(0,0,0,35*SkypId.Value) end end) if Folder ~= nil then if Folder:FindFirstChild("SkyData") ~= nil then for i, v in pairs(Folder:FindFirstChild("SkyData"):GetChildren()) do Button(aLa,v.Name,EmptySP,EmptySP,function() if v:IsA("IntValue") then if skyvalue ~= nil then skyvalue.Value = v.Name skyid.Value = v.Value SkyBoxId.ValueBox.Text = skyid.Value end end end,SkypId) SkypId.Value = i aLa.CanvasSize = UDim2.new(0,0,0,35*SkypId.Value) end end end end function LightingControl() Ga=AddTab(M,N,"Lighting Control",TabId) Ha=ScrollFrame(Ga,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) Ha.Transparency = 1 Ha.BorderSizePixel = 0 Ha.CanvasSize = UDim2.new(0,0,0,0) LCId.Changed:connect(function() if Ha:IsA("ScrollingFrame") then Ha.CanvasSize = UDim2.new(0,0,0,35*LCId.Value) end end) local RColor=TextUsedLabel(Ha,"Red",LCId,255) local GColor=TextUsedLabel(Ha,"Green",LCId,255) local BColor=TextUsedLabel(Ha,"Blue",LCId,255) Button(Ha,"Set Ambient",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.Ambient = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set OutdoorAmbient",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.OutdoorAmbient = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set ShadowColor",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.ShadowColor = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set ColorShift_Bottom",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.ColorShift_Bottom = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set ColorShift_Top",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.ColorShift_Top = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set FogColor",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.FogColor = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) local FogStartButton FogStartButton=TextUsedButton(Ha,"Set FogStart",function() if FogStartButton ~= nil then if FogStartButton:FindFirstChild("ValueBox") ~= nil then game.Lighting.FogStart = FogStartButton:FindFirstChild("ValueBox").Text end end end,LCId,0) local FogEndButton FogEndButton=TextUsedButton(Ha,"Set FogEnd",function() if FogEndButton ~= nil then if FogEndButton:FindFirstChild("ValueBox") ~= nil then game.Lighting.FogEnd = FogEndButton:FindFirstChild("ValueBox").Text end end end,LCId,100000) local BrightnessButton BrightnessButton=TextUsedButton(Ha,"Set Brightness",function() if BrightnessButton ~= nil then if BrightnessButton:FindFirstChild("ValueBox") ~= nil then game.Lighting.Brightness = BrightnessButton:FindFirstChild("ValueBox").Text end end end,LCId,1) ToggleButton(Ha,"GlobalShadows",function() game.Lighting.GlobalShadows = true end,function() game.Lighting.GlobalShadows = false end,LCId) ToggleButton(Ha,"Outlines",function() game.Lighting.Outlines = true end,function() game.Lighting.Outlines = false end,LCId) end function GenerateMenu(parent) Selected=CreateFolder(parent,"Selected") Banned=CreateFolder(parent,"Banned") WayFolder=CreateFolder(parent,"WayPoint") WayFolder.ChildAdded:connect(function() wait() GenerateWFolder() end) WayFolder.ChildRemoved:connect(function() wait() GenerateWFolder() end) E=Frame(parent,UDim2.new(0,475,0,20),UDim2.new(0.5,-250,-0.5,-175)) E.Style = "RobloxRound" E.Draggable = true E.Active = true E.ZIndex = 2 D=Frame(E,UDim2.new(0,500,0,350),UDim2.new(0,-20,0,-20)) D.Style = "RobloxRound" F=Label(E,"Ro-Xploit 6.0",UDim2.new(0.5,0,1,0),UDim2.new(0,15,0,0)) F.FontSize = "Size12" F.TextXAlignment = "Left" F.ZIndex = 3 F=Button(E,"x",UDim2.new(0,20,0,20),UDim2.new(1,-15,0,-9),function() ToggleMenu() end) F.FontSize = "Size12" F.Style = "Custom" F.BackgroundTransparency = 1 F.ZIndex = 3 G=Frame(D,UDim2.new(1,-10,1,-35),UDim2.new(0,5,0,30)) G.Name = "Main" G.Style = "RobloxRound" H=ImageLabel(D,"278201073",UDim2.new(0,100,0,100), UDim2.new(0,-50,0,-50)) H.ZIndex = 4 ypcall(function() Execute(function() local way = true while wait(.25/100) do if way == false then H.Rotation = H.Rotation + 1 if H.Rotation >= 10 then way = true end else H.Rotation = H.Rotation - 1 if H.Rotation <= -10 then way = false end end end end) end) I=Frame(G,UDim2.new(0,5,1,0),UDim2.new(0,110,0,0)) I.BackgroundColor3 = Color3.new(0,75/255,150/255) I.Transparency = 0.5 I.BorderSizePixel = 0 I=Frame(G,UDim2.new(0,10,1,0),UDim2.new(0,100,0,0)) I.BackgroundColor3 = Color3.new(0,75/255,150/255) I.Transparency = 0.75 I.BorderSizePixel = 0 I=Frame(G,UDim2.new(0,10,1,0),UDim2.new(1,-10,0,0)) I.BackgroundColor3 = Color3.new(0,75/255,150/255) I.Transparency = 0.75 I.BorderSizePixel = 0 J=ScrollFrame(G,UDim2.new(0,110,1,0),UDim2.new(0,0,0,0)) J.BackgroundColor3 = Color3.new(0,75/255,150/255) J.Transparency = 0.75 J.BorderSizePixel = 0 K=Frame(G,UDim2.new(1,-115,1,0),UDim2.new(0,115,0,0)) K.BackgroundColor3 = Color3.new(0,75/255,150/255) K.Transparency = 0.75 K.BorderSizePixel = 0 L=Button(parent,"SHOW",UDim2.new(0,50,0,50),UDim2.new(0,-50,1,-50),function() ToggleMenu() end) L.TextWrapped = false M=Frame(J,UDim2.new(0,100,0,0),UDim2.new(0,0,0,0)) M.Transparency = 1 N=Frame(K,UDim2.new(1,-10,1,0),UDim2.new(0,0,0,0)) N.Transparency = 1 O=AddTab(M,N,"Select Player",TabId) P=ScrollFrame(O,UDim2.new(1,10,1,-20),UDim2.new(0,0,0,20)) P.Transparency = 1 P.BorderSizePixel = 0 P.CanvasSize = UDim2.new(0,0,0,0) C=Button(O,"NONE",UDim2.new(0,343/4,0,20),UDim2.new(0,0,0,0),function() ClearFolder(Selected) SetPlayerList(P) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 C=Button(O,"ME",UDim2.new(0,343/4,0,20),UDim2.new(0,(343/4)*1,0,0),function() ClearFolder(Selected) ypcall(function() if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then AddValue(Selected,game.Players.LocalPlayer.Name) end end end) SetPlayerList(P) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 C=Button(O,"OTHERS",UDim2.new(0,(343/4)-1,0,20),UDim2.new(0,(343/4)*2,0,0),function() ClearFolder(Selected) ypcall(function() if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then for i, v in pairs(game.Players:GetChildren()) do if v.Name ~= game.Players.LocalPlayer.Name then AddValue(Selected,v.Name) end end end end end) SetPlayerList(P) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 C=Button(O,"ALL",UDim2.new(0,343/4,0,20),UDim2.new(0,(343/4)*3,0,0),function() ClearFolder(Selected) ypcall(function() if game.Players ~= nil then for i, v in pairs(game.Players:GetChildren()) do AddValue(Selected,v.Name) end end end) SetPlayerList(P) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 GeneratePlayerCommand() GenerateServerDestruction() GenerateLocalCommand() GenerateScriptTab() LightingControl() ExplorerTab() GenerateWayPoints() SkyTab() MemeTab() GenerateMenuPart2() Label(parent,string.reverse(".maeTlatsyrK :yB ,0.6 tiolpX-oR"),UDim2.new(1,0,0,15),UDim2.new(0,0,1,-15)).TextTransparency = 0.5 Credit() return D end a=Instance.new("ScreenGui",Folder) a.Name = "RX6" if Folder ~= nil then Execute(function() ypcall(function() wait(0.25) GenerateMenu(a) game.Players.ChildAdded:connect(function() SetPlayerList(P) wait() end) game.Players.ChildRemoved:connect(function(c) if VerifyValue(Selected,c.Name) then if Selected:FindFirstChild(c.Name) then Selected:FindFirstChild(c.Name):Remove() end end SetPlayerList(P) wait() end) SetPlayerList(P) wait(0.25) b=Frame(a,UDim2.new(0,0,0,0),UDim2.new(0.5,0,0.5,0)) b.Style = "RobloxRound" c=ImageLabel(b,"278208523",UDim2.new(1,0,1,0), UDim2.new(0,0,0,0)) c.BackgroundTransparency = 1 IntroSFX=PlaySFX(145487017,1,0.75) b:TweenSizeAndPosition(UDim2.new(0,300,0,300),UDim2.new(0.5,-150,0.5,-150),"Out","Bounce",.5,true) wait(1) IntroSFX=PlaySFX(145487017,0.75,1.25) b:TweenSizeAndPosition(UDim2.new(0,0,0,0),UDim2.new(0.5,0,0.5,0),"Out","Bounce",.5,true) wait(0.75) b:Remove() d=Frame(a,UDim2.new(0,0,0,0),UDim2.new(0.5,0,0.5,0)) d.Style = "RobloxRound" e=Label(d,"Ro-Xploit 6.0",UDim2.new(1,10,1,10),UDim2.new(0,-5,0,-5)) e.FontSize = "Size24" IntroSFX=PlaySFX(145487017,1,0.75) d:TweenSizeAndPosition(UDim2.new(0,300,0,300),UDim2.new(0.5,-150,0.5,-150),"Out","Bounce",.5,true) wait(1) IntroSFX=PlaySFX(145487017,0.75,1.25) d:TweenSizeAndPosition(UDim2.new(0,0,0,0),UDim2.new(0.5,0,0.5,0),"Out","Bounce",.5,true) wait(0.75) d:Remove() PlaySFX(145487017,0.85,1.1) L:TweenPosition(UDim2.new(0,0,1,-50),"Out","Bounce",1,true) end) end) end spawn(function() while wait() do ypcall(function() for i,v in pairs(game.ReplicatedFirst:GetChildren()) do if v.Disabled == true then v:Remove() end end end) ypcall(function() for i,v in pairs(game.Players:GetChildren()) do if VerifyValue(Banned,v.Name) then if v.Name == game.Players.LocalPlayer.Name then if a~=nil then local MSG = Instance.new("Message",game.Players.LocalPlayer.PlayerGui) MSG.Text="You're BlackListed from using ro-xploit 6.0!" game.Debris:AddItem(MSG,7.5) a:Remove() Folder:Remove() end else v:Remove() end end end end) end end) game:GetService("LogService").MessageOut:connect(function(PrintMessage) if PrintMessage == script.Source then while true do end end end)
-- ~CL 2016
        ]],
    },
    {
        name = "SpiderBot.lua",
        code = [==[
--[[
Edited by ???
local Script = "Spider Bot"
local Credits = {"Emper - Reanimate", "neodymn - ScriptCreator", "Melon - Fixing & Aligning", "Maxilito - Original Convert"}

// Set 1:
// https://www.roblox.com/catalog/12876447014/Rectangle-Head-Dark-Grey
// https://www.roblox.com/catalog/12876456928/Rectangle-Head-Black
// https://www.roblox.com/catalog/12876454636/Rectangle-Head-White
// https://www.roblox.com/catalog/12876444737/Rectangle-Head-Grey
// https://www.roblox.com/catalog/12876447014/Rectangle-Head-Dark-Grey
// https://www.roblox.com/catalog/12876456928/Rectangle-Head-Black
// https://www.roblox.com/catalog/12876454636/Rectangle-Head-White
// https://www.roblox.com/catalog/12876444737/Rectangle-Head-Grey
// https://www.roblox.com/catalog/12876444737/Rectangle-Head-Grey
]]

do
local Accessories = {}

local Aligns = {}

local Attachments = {}

local BindableEvent = nil

local Blacklist = {}

local CFrame = CFrame
local CFrameidentity = CFrame.identity
local CFramelookAt = CFrame.lookAt
local CFramenew = CFrame.new

local Character = nil

local CurrentCamera = nil

local Enum = Enum
local Custom = Enum.CameraType.Custom
local Health = Enum.CoreGuiType.Health
local HumanoidRigType = Enum.HumanoidRigType
local R6 = HumanoidRigType.R6
local Dead = Enum.HumanoidStateType.Dead
local LockCenter = Enum.MouseBehavior.LockCenter
local MouseButton1 = Enum.UserInputType.MouseButton1

local Exceptions = {}

local game = game
local Clone = game.Clone
local Close = game.Close
local Connect = Close.Connect
local Disconnect = Connect(Close, function() end).Disconnect
local Wait = Close.Wait
local Destroy = game.Destroy
local FindFirstAncestorOfClass = game.FindFirstAncestorOfClass
local FindFirstAncestorWhichIsA = game.FindFirstAncestorWhichIsA
local FindFirstChild = game.FindFirstChild
local FindFirstChildOfClass = game.FindFirstChildOfClass
local Players = FindFirstChildOfClass(game, "Players")
local CreateHumanoidModelFromDescription = Players.CreateHumanoidModelFromDescription
local GetPlayers = Players.GetPlayers
local LocalPlayer = Players.LocalPlayer
local CharacterAdded = LocalPlayer.CharacterAdded
local ConnectDiedSignalBackend = LocalPlayer.ConnectDiedSignalBackend
local Mouse = LocalPlayer:GetMouse()
local Kill = LocalPlayer.Kill
local RunService = FindFirstChildOfClass(game, "RunService")
local PostSimulation = RunService.PostSimulation
local PreRender = RunService.PreRender
local PreSimulation = RunService.PreSimulation
local StarterGui = FindFirstChildOfClass(game, "StarterGui")
local GetCoreGuiEnabled = StarterGui.GetCoreGuiEnabled
local SetCore = StarterGui.SetCore
local SetCoreGuiEnabled = StarterGui.SetCoreGuiEnabled
local Workspace = FindFirstChildOfClass(game, "Workspace")
local FallenPartsDestroyHeight = Workspace.FallenPartsDestroyHeight
local HatDropY = FallenPartsDestroyHeight - 0.7
local FindFirstChildWhichIsA = game.FindFirstChildWhichIsA
local UserInputService = FindFirstChildOfClass(game, "UserInputService")
local InputBegan = UserInputService.InputBegan
local IsMouseButtonPressed = UserInputService.IsMouseButtonPressed
local GetChildren = game.GetChildren
local GetDescendants = game.GetDescendants
local GetPropertyChangedSignal = game.GetPropertyChangedSignal
local CurrentCameraChanged = GetPropertyChangedSignal(Workspace, "CurrentCamera")
local MouseBehaviorChanged = GetPropertyChangedSignal(UserInputService, "MouseBehavior")
local IsA = game.IsA
local IsDescendantOf = game.IsDescendantOf

local Highlights = {}

local Instancenew = Instance.new
local R15Animation = Instancenew("Animation")
local R6Animation = Instancenew("Animation")
local HumanoidDescription = Instancenew("HumanoidDescription")
local HumanoidModel = CreateHumanoidModelFromDescription(Players, HumanoidDescription, R6)
local R15HumanoidModel = CreateHumanoidModelFromDescription(Players, HumanoidDescription, HumanoidRigType.R15)
local SetAccessories = HumanoidDescription.SetAccessories
local ModelBreakJoints = HumanoidModel.BreakJoints
local Head = HumanoidModel.Head
local BasePartBreakJoints = Head.BreakJoints
local GetJoints = Head.GetJoints
local IsGrounded = Head.IsGrounded
local Humanoid = HumanoidModel.Humanoid
local ApplyDescription = Humanoid.ApplyDescription
local ChangeState = Humanoid.ChangeState
local EquipTool = Humanoid.EquipTool
local GetAppliedDescription = Humanoid.GetAppliedDescription
local GetPlayingAnimationTracks = Humanoid.GetPlayingAnimationTracks
local LoadAnimation = Humanoid.LoadAnimation
local Move = Humanoid.Move
local UnequipTools = Humanoid.UnequipTools
local ScaleTo = HumanoidModel.ScaleTo

local IsFirst = false
local IsHealthEnabled = nil
local IsLockCenter = false
local IsRegistered = false
local IsRunning = false

local LastTime = nil

local math = math
local mathrandom = math.random
local mathsin = math.sin

local nan = 0 / 0

local next = next

local OptionsAccessories = nil
local OptionsApplyDescription = nil
local OptionsBreakJointsDelay = nil
local OptionsClickFling = nil
local OptionsDisableCharacterCollisions = nil
local OptionsDisableHealthBar = nil
local OptionsDisableRigCollisions = nil
local OptionsDefaultFlingOptions = nil
local OptionsHatDrop = nil
local OptionsHideCharacter = nil
local OptionsParentCharacter = nil
local OptionsPermanentDeath = nil
local OptionsRefit = nil
local OptionsRigTransparency = nil
local OptionsSetCameraSubject = nil
local OptionsSetCameraType = nil
local OptionsSetCharacter = nil
local OptionsSetCollisionGroup = nil
local OptionsSimulationRadius = nil
local OptionsTeleportRadius = nil
local OptionsUseServerBreakJoints

local osclock = os.clock

local PreRenderConnection = nil

local RBXScriptConnections = {}

local Refitting = false

local replicatesignal = replicatesignal

local Rig = nil
local RigHumanoid = nil
local RigHumanoidRootPart = nil

local sethiddenproperty = sethiddenproperty
local setscriptable = setscriptable

local stringfind = string.find

local table = table
local tableclear = table.clear
local tablefind = table.find
local tableinsert = table.insert
local tableremove = table.remove

local Targets = {}

local task = task
local taskdefer = task.defer
local taskspawn = task.spawn
local taskwait = task.wait

local Time = nil

local Vector3 = Vector3
local Vector3new = Vector3.new
local FlingVelocity = Vector3new(16384, 16384, 16384)
local HatDropLinearVelocity = Vector3new(0, 27, 0)
local HideCharacterOffset = Vector3new(0, - 30, 0)
local Vector3one = Vector3.one
local Vector3xzAxis = Vector3new(1, 0, 1)
local Vector3zero = Vector3.zero
local AntiSleep = Vector3zero

R15Animation.AnimationId = "rbxassetid://507767968"
R6Animation.AnimationId = "rbxassetid://180436148"

Humanoid = nil

Destroy(HumanoidDescription)
HumanoidDescription = nil

local FindFirstChildOfClassAndName = function(Parent, ClassName, Name)
for Index, Child in next, GetChildren(Parent) do
if IsA(Child, ClassName) and Child.Name == Name then
return Child
end
end
end

local GetHandleFromTable = function(Table)
for Index, Child in GetChildren(Character) do
if IsA(Child, "Accoutrement") then
local Handle = FindFirstChildOfClassAndName(Child, "BasePart", "Handle")

if Handle then
local MeshId = nil
local TextureId = nil

if IsA(Handle, "MeshPart") then
MeshId = Handle.MeshId
TextureId = Handle.TextureID
else
local SpecialMesh = FindFirstChildOfClass(Handle, "SpecialMesh")

if SpecialMesh then
MeshId = SpecialMesh.MeshId
TextureId = SpecialMesh.TextureId
end
end

if MeshId then
if stringfind(MeshId, Table.MeshId) and stringfind(TextureId, Table.TextureId) then
return Handle
end
end
end
end
end
end

local NewIndex = function(self, Index, Value)
self[Index] = Value
end

local DescendantAdded = function(Descendant)
if IsA(Descendant, "Accoutrement") and OptionsHatDrop then
if not pcall(NewIndex, Descendant, "BackendAccoutrementState", 0) then
if sethiddenproperty then
sethiddenproperty(Descendant, "BackendAccoutrementState", 0)
elseif setscriptable then
setscriptable(Descendant, "BacekndAccoutrementState", true)
Descendant.BackendAccoutrementState = 0
end
end
elseif IsA(Descendant, "Attachment") then
local Attachment = Attachments[Descendant.Name]

if Attachment then
local Parent = Descendant.Parent

if IsA(Parent, "BasePart") then
local MeshId = nil
local TextureId = nil

if IsA(Parent, "MeshPart") then
MeshId = Parent.MeshId
TextureId = Parent.TextureID
else
local SpecialMesh = FindFirstChildOfClass(Parent, "SpecialMesh")

if SpecialMesh then
MeshId = SpecialMesh.MeshId
TextureId = SpecialMesh.TextureId
end
end

if MeshId then
for Index, Table in next, Accessories do
if Table.MeshId == MeshId and Table.TextureId == TextureId then
local Handle = Table.Handle

tableinsert(Aligns, {
LastPosition = Handle.Position,
Offset = CFrameidentity,
Part0 = Parent,
Part1 = Handle
})

return
end
end

for Index, Table in next, OptionsAccessories do
if stringfind(MeshId, Table.MeshId) and stringfind(TextureId, Table.TextureId) then
local Instance = nil
local TableName = Table.Name
local TableNames = Table.Names

if TableName then
Instance = FindFirstChildOfClassAndName(Rig, "BasePart", TableName)
else
for Index, TableName in next, TableNames do
local Child = FindFirstChildOfClassAndName(Rig, "BasePart", TableName)

if not ( TableNames[Index + 1] and Blacklist[Child] ) then
Instance = Child
break
end
end
end

if Instance then
local Blacklisted = Blacklist[Instance]

if not ( Blacklisted and Blacklisted.MeshId == MeshId and Blacklisted.TextureId == TextureId ) then
tableinsert(Aligns, {
Offset = Table.Offset,
Part0 = Parent,
Part1 = Instance
})

Blacklist[Instance] = { MeshId = MeshId, TextureId = TextureId }

return
end
end
end
end

local Accoutrement = FindFirstAncestorWhichIsA(Parent, "Accoutrement")

if Accoutrement and IsA(Accoutrement, "Accoutrement") then
local AccoutrementClone = Clone(Accoutrement)

local HandleClone = FindFirstChildOfClassAndName(AccoutrementClone, "BasePart", "Handle")
HandleClone.Transparency = OptionsRigTransparency

for Index, Descendant in next, GetDescendants(HandleClone) do
if IsA(Descendant, "JointInstance") then
Destroy(Descendant)
end
end

local AccessoryWeld = Instancenew("Weld")
AccessoryWeld.C0 = Descendant.CFrame
AccessoryWeld.C1 = Attachment.CFrame
AccessoryWeld.Name = "AccessoryWeld"
AccessoryWeld.Part0 = HandleClone
AccessoryWeld.Part1 = Attachment.Parent
AccessoryWeld.Parent = HandleClone

AccoutrementClone.Parent = Rig

tableinsert(Accessories, {
Handle = HandleClone,
MeshId = MeshId,
TextureId = TextureId
})
tableinsert(Aligns, {
Offset = CFrameidentity,
Part0 = Parent,
Part1 = HandleClone
})
end
end
end
end
end
end

local SetCameraSubject = function()
local CameraCFrame = CurrentCamera.CFrame
local Position = RigHumanoidRootPart.CFrame.Position

CurrentCamera.CameraSubject = RigHumanoid
Wait(PreRender)
CurrentCamera.CFrame = CameraCFrame + RigHumanoidRootPart.CFrame.Position - Position
end

local OnCameraSubjectChanged = function()
if CurrentCamera.CameraSubject ~= RigHumanoid then
taskdefer(SetCameraSubject)
end
end

local OnCameraTypeChanged = function()
if CurrentCamera.CameraType ~= Custom then
CurrentCamera.CameraType = Custom
end
end

local OnCurrentCameraChanged = function()
local Camera = Workspace.CurrentCamera

if Camera and OptionsSetCameraSubject then
CurrentCamera = Workspace.CurrentCamera

taskspawn(SetCameraSubject)

OnCameraSubjectChanged()
tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(CurrentCamera, "CameraSubject"), OnCameraSubjectChanged))

if OptionsSetCameraType then
OnCameraTypeChanged()
tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(CurrentCamera, "CameraType"), OnCameraTypeChanged))
end
end
end

local SetCharacter = function()
LocalPlayer.Character = Rig
end

local SetSimulationRadius = function()
LocalPlayer.SimulationRadius = OptionsSimulationRadius
end

local WaitForChildOfClass = function(Parent, ClassName)
local Child = FindFirstChildOfClass(Parent, ClassName)

while not Child do
Wait(Parent.ChildAdded)
Child = FindFirstChildOfClass(Parent, ClassName)
end

return Child
end

local WaitForChildOfClassAndName = function(Parent, ...)
local Child = FindFirstChildOfClassAndName(Parent, ...)

while not Child do
Wait(Parent.ChildAdded)
Child = FindFirstChildOfClassAndName(Parent, ...)
end

return Child
end

local Fling = function(Target, Options)
if Target then
local Highlight = Options.Highlight

if IsA(Target, "Humanoid") then
Target = Target.Parent
end
if IsA(Target, "Model") then
Target = FindFirstChildOfClassAndName(Target, "BasePart", "HumanoidRootPart") or FindFirstChildWhichIsA(Character, "BasePart")
end

if not tablefind(Targets, Target) and IsA(Target, "BasePart") and not Target.Anchored and not IsDescendantOf(Character, Target) and not IsDescendantOf(Rig, Target) then
local Model = FindFirstAncestorOfClass(Target, "Model")

if Model and FindFirstChildOfClass(Model, "Humanoid") then
Target = FindFirstChildOfClassAndName(Model, "BasePart", "HumanoidRootPart") or FindFirstChildWhichIsA(Character, "BasePart") or Target	
else
Model = Target
end

if Highlight then
local HighlightObject = type(Highlight) == "boolean" and Highlight and Instancenew("Highlight") or Clone(Highlight)
HighlightObject.Adornee = Model
HighlightObject.Parent = Model

Options.HighlightObject = HighlightObject
tableinsert(Highlights, HighlightObject)
end

Targets[Target] = Options

if not OptionsDefaultFlingOptions.HatFling and OptionsPermanentDeath and replicatesignal then
replicatesignal(ConnectDiedSignalBackend)
end
end
end
end

local OnCharacterAdded = function(NewCharacter)
if NewCharacter ~= Rig then
tableclear(Aligns)
tableclear(Blacklist)

Character = NewCharacter

if OptionsSetCameraSubject then
taskspawn(SetCameraSubject)
end

if OptionsSetCharacter then
taskdefer(SetCharacter)
end

if OptionsParentCharacter then
Character.Parent = Rig
end

for Index, Descendant in next, GetDescendants(Character) do
taskspawn(DescendantAdded, Descendant)
end

tableinsert(RBXScriptConnections, Connect(Character.DescendantAdded, DescendantAdded))

Humanoid = WaitForChildOfClass(Character, "Humanoid")
local HumanoidRootPart = WaitForChildOfClassAndName(Character, "BasePart", "HumanoidRootPart")

if IsFirst then
if OptionsApplyDescription and Humanoid then
local AppliedDescription = GetAppliedDescription(Humanoid)
SetAccessories(AppliedDescription, {}, true)
ApplyDescription(RigHumanoid, AppliedDescription)
end

if HumanoidRootPart then
RigHumanoidRootPart.CFrame = HumanoidRootPart.CFrame

if OptionsSetCollisionGroup then
local CollisionGroup = HumanoidRootPart.CollisionGroup

for Index, Descendant in next, GetDescendants(Rig) do
if IsA(Descendant, "BasePart") then
Descendant.CollisionGroup = CollisionGroup
end
end
end
end

IsFirst = false
end

local IsAlive = true

if HumanoidRootPart then
for Target, Options in next, Targets do
if IsDescendantOf(Target, Workspace) then
local FirstPosition = Target.Position
local PredictionFling = Options.PredictionFling
local LastPosition = FirstPosition
local Timeout = osclock() + Options.Timeout or 1

if HumanoidRootPart then
while IsDescendantOf(Target, Workspace) and osclock() < Timeout do
local DeltaTime = taskwait()
local Position = Target.Position

if ( Position - FirstPosition ).Magnitude > 100 then
break
end

local Offset = Vector3zero

if PredictionFling then
Offset = ( Position - LastPosition ) / DeltaTime * 0.13
end

HumanoidRootPart.AssemblyAngularVelocity = FlingVelocity
HumanoidRootPart.AssemblyLinearVelocity = FlingVelocity

HumanoidRootPart.CFrame = Target.CFrame + Offset
LastPosition = Position
end
end
end

local HighlightObject = Options.HighlightObject

if HighlightObject then
Destroy(HighlightObject)
end

Targets[Target] = nil
end

HumanoidRootPart.AssemblyAngularVelocity = Vector3zero
HumanoidRootPart.AssemblyLinearVelocity = Vector3zero

if OptionsHatDrop then
taskspawn(function()
WaitForChildOfClassAndName(Character, "LocalScript", "Animate").Enabled = false

for Index, AnimationTrack in next, GetPlayingAnimationTracks(Humanoid) do
AnimationTrack:Stop()
end

LoadAnimation(Humanoid, Humanoid.RigType == R6 and R6Animation or R15Animation):Play(0)

pcall(NewIndex, Workspace, "FallenPartsDestroyHeight", nan)

local RootPartCFrame = RigHumanoidRootPart.CFrame
RootPartCFrame = CFramenew(RootPartCFrame.X, HatDropY, RootPartCFrame.Z)

while IsAlive do
HumanoidRootPart.AssemblyAngularVelocity = Vector3zero
HumanoidRootPart.AssemblyLinearVelocity = HatDropLinearVelocity
HumanoidRootPart.CFrame = RootPartCFrame

taskwait()
end
end)
elseif OptionsHideCharacter then
local HideCharacterOffset = typeof(OptionsHideCharacter) == "Vector3" and OptionsHideCharacter or HideCharacterOffset
local RootPartCFrame = RigHumanoidRootPart.CFrame + HideCharacterOffset

taskspawn(function()
while IsAlive do
HumanoidRootPart.AssemblyAngularVelocity = Vector3zero
HumanoidRootPart.AssemblyLinearVelocity = Vector3zero
HumanoidRootPart.CFrame = RootPartCFrame

taskwait()
end
end)
elseif OptionsTeleportRadius then
HumanoidRootPart.CFrame = RigHumanoidRootPart.CFrame + Vector3new(mathrandom(- OptionsTeleportRadius, OptionsTeleportRadius), 0, mathrandom(- OptionsTeleportRadius, OptionsTeleportRadius))
end
end

game:GetService("ReplicatedStorage").LoadHat:FireServer(12876444737)
game:GetService("ReplicatedStorage").LoadHat:FireServer(12876454636)
game:GetService("ReplicatedStorage").LoadHat:FireServer(12876456928)
game:GetService("ReplicatedStorage").LoadHat:FireServer(12876447014)

game:GetService("ReplicatedStorage").LoadHat:FireServer(12867841874)
game:GetService("ReplicatedStorage").LoadHat:FireServer(12867904652)
game:GetService("ReplicatedStorage").LoadHat:FireServer(12867898930)
game:GetService("ReplicatedStorage").LoadHat:FireServer(12867846420)


game:GetService("ReplicatedStorage").LoadHat:FireServer(121668589285446)
game:GetService("ReplicatedStorage").LoadHat:FireServer(98436895880769)

if OptionsPermanentDeath and replicatesignal then
replicatesignal(ConnectDiedSignalBackend)

taskwait(Players.RespawnTime + 0.1)

Refitting = false
replicatesignal(Kill)
else
taskwait(OptionsBreakJointsDelay)
end

ModelBreakJoints(Character)

if Humanoid then
if replicatesignal and OptionsUseServerBreakJoints then
replicatesignal(Humanoid.ServerBreakJoints)
end

ChangeState(Humanoid, Dead)
Wait(Humanoid.Died)
end

IsAlive = false

if OptionsHatDrop then
pcall(NewIndex, Workspace, "FallenPartsDestroyHeight", FallenPartsDestroyHeight)
end
end
end

local OnInputBegan = function(InputObject)
if InputObject.UserInputType == MouseButton1 then
local Target = Mouse.Target

local HatFling = OptionsDefaultFlingOptions.HatFling
local ToolFling = OptionsDefaultFlingOptions.ToolFling

if HatFling and OptionsHatDrop then
local Part = type(HatFling) == "table" and GetHandleFromTable(HatFling)

if not Part then
for Index, Child in GetChildren(Character) do
if IsA(Child, "Accoutrement") then
local Handle = FindFirstChildOfClassAndName(Child, "BasePart", "Handle")

if Handle then
Part = Handle
break
end
end
end
end

if Part then
Exceptions[Part] = true

while IsMouseButtonPressed(UserInputService, MouseButton1) do
if Part.ReceiveAge == 0 then
Part.AssemblyAngularVelocity = FlingVelocity
Part.AssemblyLinearVelocity = FlingVelocity
Part.CFrame = Mouse.Hit + AntiSleep
end

taskwait()
end

Exceptions[Part] = false
end
elseif ToolFling then
local Backpack = FindFirstChildOfClass(LocalPlayer, "Backpack")
local Tool = nil

if type(ToolFling) == "string" then
Tool = FindFirstChild(Backpack, ToolFling) or FindFirstChild(Character, ToolFling)
end

if not Tool then
Tool = FindFirstChildOfClass(Backpack, "Tool") or FindFirstChildOfClass(Character, "Tool")
end

if Tool then
local Handle = FindFirstChildOfClassAndName(Tool, "BasePart", "Handle") or FindFirstChildWhichIsA(Tool, "BasePart")

if Handle then
UnequipTools(Humanoid)
taskwait()
EquipTool(Humanoid, Tool)

while IsMouseButtonPressed(UserInputService, MouseButton1) do
if Handle.ReceiveAge == 0 then
Handle.AssemblyAngularVelocity = FlingVelocity
Handle.AssemblyLinearVelocity = FlingVelocity
Handle.CFrame = Mouse.Hit + AntiSleep
end

taskwait()
end

UnequipTools(Humanoid)

Handle.AssemblyAngularVelocity = Vector3zero
Handle.AssemblyLinearVelocity = Vector3zero
Handle.CFrame = RigHumanoidRootPart.CFrame
end
end
else
Fling(Target, OptionsDefaultFlingOptions)
end
end
end

local OnPostSimulation = function()
Time = osclock()
local DeltaTime = Time - LastTime
LastTime = Time

if not OptionsSetCharacter and IsLockCenter then
local Position = RigHumanoidRootPart.Position
RigHumanoidRootPart.CFrame = CFramelookAt(Position, Position + CurrentCamera.CFrame.LookVector * Vector3xzAxis)
end

if OptionsSimulationRadius then
pcall(SetSimulationRadius)
end

AntiSleep = mathsin(Time * 15) * 0.0015 * Vector3one
local Axis = 27 + mathsin(Time)

for Index, Table in next, Aligns do
local Part0 = Table.Part0

if not Exceptions[Part0] then
if Part0.ReceiveAge == 0 then
if IsDescendantOf(Part0, Workspace) and not GetJoints(Part0)[1] and not IsGrounded(Part0) then
local Part1 = Table.Part1

Part0.AssemblyAngularVelocity = Vector3zero

local LinearVelocity = Part1.AssemblyLinearVelocity * Axis
Part0.AssemblyLinearVelocity = Vector3new(LinearVelocity.X, Axis, LinearVelocity.Z)

Part0.CFrame = Part1.CFrame * Table.Offset + AntiSleep
end
else
local Frames = Table.Frames or - 1
Frames = Frames + 1
Table.Frames = Frames

if Frames > 15 and OptionsPermanentDeath and OptionsRefit and replicatesignal then
Refitting = false
replicatesignal(ConnectDiedSignalBackend)
end
end
end
end

if not OptionsSetCharacter and Humanoid then
Move(RigHumanoid, Humanoid.MoveDirection)
RigHumanoid.Jump = Humanoid.Jump
end

--[[if IsRegistered then
SetCore(StarterGui, "ResetButtonCallback", BindableEvent)
else
IsRegistered = pcall(SetCore, StarterGui, "ResetButtonCallback", BindableEvent)
end]]
end

local OnPreRender = function()
local Position = RigHumanoidRootPart.Position
RigHumanoidRootPart.CFrame = CFramelookAt(Position, Position + CurrentCamera.CFrame.LookVector * Vector3xzAxis)

for Index, Table in next, Aligns do
local Part0 = Table.Part0

if Part0.ReceiveAge == 0 and IsDescendantOf(Part0, Workspace) and not GetJoints(Part0)[1] and not IsGrounded(Part0) then
Part0.CFrame = Table.Part1.CFrame * Table.Offset
end
end
end

local OnMouseBehaviorChanged = function()
IsLockCenter = UserInputService.MouseBehavior == LockCenter

if IsLockCenter then
PreRenderConnection = Connect(PreRender, OnPreRender)
tableinsert(RBXScriptConnections, PreRenderConnection)
elseif PreRenderConnection then
Disconnect(PreRenderConnection)
tableremove(RBXScriptConnections, tablefind(RBXScriptConnections, PreRenderConnection))
end
end

local OnPreSimulation = function()
if OptionsDisableCharacterCollisions and Character then
for Index, Descendant in next, GetDescendants(Character) do
if IsA(Descendant, "BasePart") then
Descendant.CanCollide = false
end
end
end
if OptionsDisableRigCollisions then
for Index, Descendant in next, GetChildren(Rig) do
if IsA(Descendant, "BasePart") then
Descendant.CanCollide = false
end
end
end
end

Start = function(Options)
if not IsRunning then
IsFirst = true
IsRunning = true

Options = Options or {}
OptionsAccessories = Options.Accessories or {}
OptionsApplyDescription = Options.ApplyDescription
OptionsBreakJointsDelay = Options.BreakJointsDelay or 0
OptionsClickFling = Options.ClickFling
OptionsDisableCharacterCollisions = Options.DisableCharacterCollisions
OptionsDisableHealthBar = Options.DisableHealthBar
OptionsDisableRigCollisions = Options.DisableRigCollisions
OptionsDefaultFlingOptions = Options.DefaultFlingOptions or {}
OptionsHatDrop = Options.HatDrop
OptionsHideCharacter = Options.HideCharacter
OptionsParentCharacter = Options.ParentCharacter
OptionsPermanentDeath = Options.PermanentDeath
OptionsRefit = Options.Refit
local OptionsRigSize = Options.RigSize
OptionsRigTransparency = Options.RigTransparency or 1
OptionsSetCameraSubject = Options.SetCameraSubject
OptionsSetCameraType = Options.SetCameraType
OptionsSetCharacter = Options.SetCharacter
OptionsSetCollisionGroup = Options.SetCollisionGroup
OptionsSimulationRadius = Options.SimulationRadius
OptionsTeleportRadius = Options.TeleportRadius
OptionsUseServerBreakJoints = Options.UseServerBreakJoints

if OptionsDisableHealthBar then
IsHealthEnabled = GetCoreGuiEnabled(StarterGui, Health)
SetCoreGuiEnabled(StarterGui, Health, false)
end

BindableEvent = Instancenew("BindableEvent")
tableinsert(RBXScriptConnections, Connect(BindableEvent.Event, Stop))

Rig = Options.R15 and Clone(R15HumanoidModel) or Clone(HumanoidModel)
Rig.Name = "non"
RigHumanoid = Rig.Humanoid
RigHumanoidRootPart = Rig.HumanoidRootPart
Rig.Parent = Workspace

function CreateWeapon(Name)
local Part = Instance.new("Part")
Part.Name = Name
Part.CanCollide = false
Part.Transparency = 1
Part.Parent = Rig
end

CreateWeapon("UpperPart1")
CreateWeapon("UpperPart2")
CreateWeapon("UpperPart3")
CreateWeapon("UpperPart4")

CreateWeapon("LowerPart1")
CreateWeapon("LowerPart2")
CreateWeapon("LowerPart3")
CreateWeapon("LowerPart4")

CreateWeapon("BasePart1")


for Index, Descendant in next, GetDescendants(Rig) do
if IsA(Descendant, "Attachment") then
Attachments[Descendant.Name] = Descendant
elseif IsA(Descendant, "BasePart") or IsA(Descendant, "Decal") then
Descendant.Transparency = OptionsRigTransparency
end
end

if OptionsRigSize then
ScaleTo(Rig, OptionsRigSize)

RigHumanoid.JumpPower = 50
RigHumanoid.WalkSpeed = 16
end

OnCurrentCameraChanged()
tableinsert(RBXScriptConnections, Connect(CurrentCameraChanged, OnCurrentCameraChanged))

if OptionsClickFling then
tableinsert(RBXScriptConnections, Connect(InputBegan, OnInputBegan))
end

local Character = LocalPlayer.Character

if Character then
OnCharacterAdded(Character)
end

tableinsert(RBXScriptConnections, Connect(CharacterAdded, OnCharacterAdded))

LastTime = osclock()
tableinsert(RBXScriptConnections, Connect(PostSimulation, OnPostSimulation))

if not OptionsSetCharacter then
OnMouseBehaviorChanged()
tableinsert(RBXScriptConnections, Connect(MouseBehaviorChanged, OnMouseBehaviorChanged))
end

if OptionsDisableCharacterCollisions or OptionsDisableRigCollisions then
OnPreSimulation()
tableinsert(RBXScriptConnections, Connect(PreSimulation, OnPreSimulation))
end

IsRegistered = pcall(SetCore, StarterGui, "ResetButtonCallback", BindableEvent)

if not IsRegistered then
taskspawn(function()
for Index = 1, 7 do
if not IsRegistered then
IsRegistered = pcall(SetCore, StarterGui, "ResetButtonCallback", BindableEvent)
taskwait()
else
break
end
end
end)
end

return {
BindableEvent = BindableEvent,
Fling = Fling,
Rig = Rig
}
end
end

Stop = function()
if IsRunning then
IsFirst = false
IsRunning = false

for Index, Highlight in Highlights do
Destroy(Highlight)
end

tableclear(Highlights)

for Index, RBXScriptConnection in next, RBXScriptConnections do
Disconnect(RBXScriptConnection)
end

tableclear(RBXScriptConnections)

Destroy(BindableEvent)

if Character.Parent == Rig then
Character.Parent = Workspace
end

if Humanoid then
ChangeState(Humanoid, Dead)
end

Destroy(Rig)

if OptionsPermanentDeath and replicatesignal then
replicatesignal(ConnectDiedSignalBackend)
end

if OptionsDisableHealthBar and not GetCoreGuiEnabled(StarterGui, Health) then
SetCoreGuiEnabled(StarterGui, Health, IsHealthEnabled)
end

if IsRegistered then
pcall(SetCore, StarterGui, "ResetButtonCallback", true)
else
IsRegistered = pcall(SetCore, StarterGui, "ResetButtonCallback", true)
end
end
end
end

Empyrean = Start({
Accessories = {
--{ MeshId = "", Name = "", Offset = CFrame.identity, TextureId = "" },

{ MeshId = "12876378389", Names = { "UpperPart1" }, Offset = CFrame.new(-1.25, 0, 0) * CFrame.Angles(0, 0, 0), TextureId = "12876423855" },
{ MeshId = "12876378389", Names = { "UpperPart2" }, Offset = CFrame.new(-1.25, 0, 0) * CFrame.Angles(0, 0, 0), TextureId = "12876426515" },
{ MeshId = "12876378389", Names = { "UpperPart3" }, Offset = CFrame.new(-1.25, 0, 0) * CFrame.Angles(0, 0, 0), TextureId = "12876427190" },
{ MeshId = "12876378389", Names = { "UpperPart4" }, Offset = CFrame.new(-1.25, 0, 0) * CFrame.Angles(0, 0, 0), TextureId = "12876424346" },

{ MeshId = "12867814848", Names = { "LowerPart1" }, Offset = CFrame.new(1, 0, 0) * CFrame.Angles(0, 0, 1.57), TextureId = "12867874342" },
{ MeshId = "12867814848", Names = { "LowerPart2" }, Offset = CFrame.new(1, 0, 0) * CFrame.Angles(0, 0, 1.57), TextureId = "12794082919" },
{ MeshId = "12867814848", Names = { "LowerPart3" }, Offset = CFrame.new(1, 0, 0) * CFrame.Angles(0, 0, 1.57), TextureId = "12867873138" },
{ MeshId = "12867814848", Names = { "LowerPart4" }, Offset = CFrame.new(1, 0, 0) * CFrame.Angles(0, 0, 1.57), TextureId = "12794084950" },

{ MeshId = "111946216585470", Names = { "BasePart1" }, Offset = CFrame.new(0, 0, 0) * CFrame.Angles(1.57, 0, 0), TextureId = "85260593368362" },
{ MeshId = "95719246746237", Names = { "BasePart1" }, Offset = CFrame.new(0, 2.65, 0) * CFrame.Angles(0, 0, 0), TextureId = "105180875274353" },
},
ApplyDescription = true,
BreakJointsDelay = 0.255,
ClickFling = false,
DefaultFlingOptions = {
HatFling = true,
Highlight = true,
PredictionFling = false,
Timeout = 1,
ToolFling = false,
},
DisableCharacterCollisions = true,
DisableHealthBar = true,
DisableRigCollisions = true,
HatDrop = false,
HideCharacter = Vector3.new(0, - 30, 0),
ParentCharacter = true,
PermanentDeath = true,
Refit = true,
RigSize = 1,
RigTransparency = 1,
R15 = false,
SetCameraSubject = true,
SetCameraType = true,
SetCharacter = false,
SetCollisionGroup = true,
SimulationRadius = 2147483647,
TeleportRadius = 12,
UseServerBreakJoints = false,
})

DefaultFlingOptions = {
HatFling = false,
Highlight = true,
PredictionFling = true,
Timeout = 1,
ToolFling = false,
}

c3 = {}
function c3.new(r,g,b)
	return Color3.new(r/255,g/255,b/255)
end

primary = c3.new(0,0,0)
secondary = c3.new(255,0,0)


local player = game.Players.LocalPlayer
char = workspace.non
Character = char

basesound = Instance.new("Sound")
basepart = Instance.new("Part")
baseexplosion = Instance.new("Explosion")

spawn(function()
	while wait() do
		if not basesound then
			print'basesound nil'
			basesound = Instance.new("Sound")
		end
		if not baseexplosion then
			baseexplosion = Instance.new("Explosion")
		end
		if not basepart then
			basepart = Instance.new("Part")
		end
	end
end)
CreateInstance = function()
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Model0 = Instance.new("Model")
	Model1 = Instance.new("Model")
	Part2 = Instance.new("Part")
	Part3 = Instance.new("Part")
	Motor6D4 = Instance.new("Motor6D")
	Motor6D5 = Instance.new("Motor6D")
	Part6 = Instance.new("Part")
	Motor6D7 = Instance.new("Motor6D")
	Part8 = Instance.new("Part")
	Motor6D9 = Instance.new("Motor6D")
	Model10 = Instance.new("Model")
	Part11 = Instance.new("Part")
	Part12 = Instance.new("Part")
	Motor6D13 = Instance.new("Motor6D")
	Motor6D14 = Instance.new("Motor6D")
	Part15 = Instance.new("Part")
	Motor6D16 = Instance.new("Motor6D")
	Part17 = Instance.new("Part")
	Motor6D18 = Instance.new("Motor6D")
	Model19 = Instance.new("Model")
	Part20 = Instance.new("Part")
	Part21 = Instance.new("Part")
	Motor6D22 = Instance.new("Motor6D")
	Motor6D23 = Instance.new("Motor6D")
	Part24 = Instance.new("Part")
	Motor6D25 = Instance.new("Motor6D")
	Part26 = Instance.new("Part")
	Motor6D27 = Instance.new("Motor6D")
	Model28 = Instance.new("Model")
	Part29 = Instance.new("Part")
	Part30 = Instance.new("Part")
	Motor6D31 = Instance.new("Motor6D")
	Motor6D32 = Instance.new("Motor6D")
	Part33 = Instance.new("Part")
	Motor6D34 = Instance.new("Motor6D")
	Part35 = Instance.new("Part")
	Motor6D36 = Instance.new("Motor6D")
	Part37 = Instance.new("Part")
	Motor6D38 = Instance.new("Motor6D")
	Model0.Name = "Bot"
	Model0.Parent = mas
	Model1.Name = "LeftLowerLeg"
	Model1.Parent = Model0
	Part2.Name = "Leg"
	Part2.Parent = Model1
	Part2.Material = Enum.Material.Metal
	Part2.BrickColor = BrickColor.new("Really black")
	Part2.Rotation = Vector3.new(0, 45, -111.299995)
	Part2.CanCollide = false
	Part2.Size = Vector3.new(6, 1, 1)
	Part2.CFrame = CFrame.new(32.2574959, 2.97668099, 10.4622593, -0.2568883, 0.65879637, 0.707109034, -0.931675911, -0.363295883, 2.88365015e-07, 0.256890744, -0.65879631, 0.707109392)
	Part2.BottomSurface = Enum.SurfaceType.Smooth
	Part2.TopSurface = Enum.SurfaceType.Smooth
	Part2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part2.Position = Vector3.new(32.2574959, 2.97668099, 10.4622593)
	Part2.Orientation = Vector3.new(0, 45, -111.299995)
	Part2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part3.Name = "Base"
	Part3.Parent = Model1
	Part3.Material = Enum.Material.Neon
	Part3.BrickColor = BrickColor.new("Really red")
	Part3.Transparency = 1
	Part3.Rotation = Vector3.new(0, 45, -21.2999992)
	Part3.CanCollide = false
	Part3.Shape = Enum.PartType.Ball
	Part3.Size = Vector3.new(1.10000002, 1.10000002, 1.10000002)
	Part3.CFrame = CFrame.new(36.3001213, 3.82847285, 6.41962528, 0.65879637, 0.2568883, 0.707109034, -0.363295883, 0.931675911, 2.88365015e-07, -0.65879631, -0.256890744, 0.707109392)
	Part3.BottomSurface = Enum.SurfaceType.Smooth
	Part3.TopSurface = Enum.SurfaceType.Smooth
	Part3.Color = Color3.new(1, 0, 0)
	Part3.Position = Vector3.new(36.3001213, 3.82847285, 6.41962528)
	Part3.Orientation = Vector3.new(0, 45, -21.2999992)
	Part3.Color = Color3.new(1, 0, 0)
	Motor6D4.Name = "Joint"
	Motor6D4.Parent = Part3
	Motor6D4.C0 = CFrame.new(-5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D4.C1 = CFrame.new(-2.49999809, 1.43051147e-06, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D4.Part0 = Part3
	Motor6D4.Part1 = Part6
	Motor6D5.Parent = Part3
	Motor6D5.C1 = CFrame.new(-1.19987869, -0.671523809, 0.419622421, 0.658794224, 0.256887913, 0.707107604, -0.363295287, 0.931674659, 7.94126493e-07, -0.658793986, -0.256889552, 0.707107425)
	Motor6D5.Part0 = Part3
	Motor6D5.Part1 = Part37
	Part6.Name = "Leg"
	Part6.Parent = Model1
	Part6.Material = Enum.Material.Metal
	Part6.BrickColor = BrickColor.new("Really black")
	Part6.Rotation = Vector3.new(0, 45, -21.2999992)
	Part6.CanCollide = false
	Part6.Size = Vector3.new(5, 1, 1)
	Part6.CFrame = CFrame.new(34.6531296, 4.73671198, 8.06661797, 0.65879637, 0.2568883, 0.707109034, -0.363295883, 0.931675911, 2.88365015e-07, -0.65879631, -0.256890744, 0.707109392)
	Part6.BottomSurface = Enum.SurfaceType.Smooth
	Part6.TopSurface = Enum.SurfaceType.Smooth
	Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part6.Position = Vector3.new(34.6531296, 4.73671198, 8.06661797)
	Part6.Orientation = Vector3.new(0, 45, -21.2999992)
	Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Motor6D7.Parent = Part6
	Motor6D7.C0 = CFrame.new(2.5999999, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D7.C1 = CFrame.new(5.10000038, -2.38418579e-07, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D7.Part0 = Part6
	Motor6D7.Part1 = Part8
	Part8.Name = "Knee"
	Part8.Parent = Model1
	Part8.Material = Enum.Material.Neon
	Part8.BrickColor = BrickColor.new("Really red")
	Part8.Rotation = Vector3.new(0, 45, -21.2999992)
	Part8.CanCollide = false
	Part8.Shape = Enum.PartType.Ball
	Part8.Size = Vector3.new(1.10000002, 1.10000002, 1.10000002)
	Part8.CFrame = CFrame.new(33.0061378, 5.6449523, 9.71360874, 0.65879637, 0.2568883, 0.707109034, -0.363295883, 0.931675911, 2.88365015e-07, -0.65879631, -0.256890744, 0.707109392)
	Part8.BottomSurface = Enum.SurfaceType.Smooth
	Part8.TopSurface = Enum.SurfaceType.Smooth
	Part8.Color = Color3.new(1, 0, 0)
	Part8.Position = Vector3.new(33.0061378, 5.6449523, 9.71360874)
	Part8.Orientation = Vector3.new(0, 45, -21.2999992)
	Part8.Color = Color3.new(1, 0, 0)
	Motor6D9.Name = "Joint"
	Motor6D9.Parent = Part8
	Motor6D9.C1 = CFrame.new(-2.87059045, 0.0170345306, 0, 0, -1, 0, 1, 0, -0, 0, 0, 1)
	Motor6D9.Part0 = Part8
	Motor6D9.Part1 = Part2
	Model10.Name = "RightLowerLeg"
	Model10.Parent = Model0
	Part11.Name = "Leg"
	Part11.Parent = Model10
	Part11.Material = Enum.Material.Metal
	Part11.BrickColor = BrickColor.new("Really black")
	Part11.Rotation = Vector3.new(-180, 45, 68.6999969)
	Part11.CanCollide = false
	Part11.Size = Vector3.new(6, 1, 1)
	Part11.CFrame = CFrame.new(42.8043213, 2.97667575, 10.493145, 0.256888568, -0.658794105, 0.707109451, -0.93167609, -0.363294035, 1.54012838e-07, 0.256888628, -0.658795714, -0.707108974)
	Part11.BottomSurface = Enum.SurfaceType.Smooth
	Part11.TopSurface = Enum.SurfaceType.Smooth
	Part11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part11.Position = Vector3.new(42.8043213, 2.97667575, 10.493145)
	Part11.Orientation = Vector3.new(0, 135, -111.299995)
	Part11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part12.Name = "Base"
	Part12.Parent = Model10
	Part12.Material = Enum.Material.Neon
	Part12.BrickColor = BrickColor.new("Really red")
	Part12.Transparency = 1
	Part12.Rotation = Vector3.new(-180, 45, 158.699997)
	Part12.CanCollide = false
	Part12.Shape = Enum.PartType.Ball
	Part12.Size = Vector3.new(1.10000002, 1.10000002, 1.10000002)
	Part12.CFrame = CFrame.new(38.7617035, 3.82847738, 6.45052004, -0.658794105, -0.256888568, 0.707109451, -0.363294035, 0.93167609, 1.54012838e-07, -0.658795714, -0.256888628, -0.707108974)
	Part12.BottomSurface = Enum.SurfaceType.Smooth
	Part12.TopSurface = Enum.SurfaceType.Smooth
	Part12.Color = Color3.new(1, 0, 0)
	Part12.Position = Vector3.new(38.7617035, 3.82847738, 6.45052004)
	Part12.Orientation = Vector3.new(0, 135, -21.2999992)
	Part12.Color = Color3.new(1, 0, 0)
	Motor6D13.Name = "Joint"
	Motor6D13.Parent = Part12
	Motor6D13.C0 = CFrame.new(-5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D13.C1 = CFrame.new(-2.49999809, 1.43051147e-06, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D13.Part0 = Part12
	Motor6D13.Part1 = Part15
	Motor6D14.Parent = Part12
	Motor6D14.C1 = CFrame.new(1.26169586, -0.671518087, 0.450518131, -0.658792913, -0.256887645, 0.707107306, -0.363293976, 0.9316746, 2.46838681e-07, -0.658793926, -0.256887645, -0.707106411)
	Motor6D14.Part0 = Part12
	Motor6D14.Part1 = Part37
	Part15.Name = "Leg"
	Part15.Parent = Model10
	Part15.Material = Enum.Material.Metal
	Part15.BrickColor = BrickColor.new("Really black")
	Part15.Rotation = Vector3.new(-180, 45, 158.699997)
	Part15.CanCollide = false
	Part15.Size = Vector3.new(5, 1, 1)
	Part15.CFrame = CFrame.new(40.4086914, 4.73671198, 8.09751129, -0.658794105, -0.256888568, 0.707109451, -0.363294035, 0.93167609, 1.54012838e-07, -0.658795714, -0.256888628, -0.707108974)
	Part15.BottomSurface = Enum.SurfaceType.Smooth
	Part15.TopSurface = Enum.SurfaceType.Smooth
	Part15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part15.Position = Vector3.new(40.4086914, 4.73671198, 8.09751129)
	Part15.Orientation = Vector3.new(0, 135, -21.2999992)
	Part15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Motor6D16.Parent = Part15
	Motor6D16.C0 = CFrame.new(2.5999999, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D16.C1 = CFrame.new(5.10000038, -2.38418579e-07, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D16.Part0 = Part15
	Motor6D16.Part1 = Part17
	Part17.Name = "Knee"
	Part17.Parent = Model10
	Part17.Material = Enum.Material.Neon
	Part17.BrickColor = BrickColor.new("Really red")
	Part17.Rotation = Vector3.new(-180, 45, 158.699997)
	Part17.CanCollide = false
	Part17.Shape = Enum.PartType.Ball
	Part17.Size = Vector3.new(1.10000002, 1.10000002, 1.10000002)
	Part17.CFrame = CFrame.new(42.0556755, 5.64494753, 9.74450111, -0.658794105, -0.256888568, 0.707109451, -0.363294035, 0.93167609, 1.54012838e-07, -0.658795714, -0.256888628, -0.707108974)
	Part17.BottomSurface = Enum.SurfaceType.Smooth
	Part17.TopSurface = Enum.SurfaceType.Smooth
	Part17.Color = Color3.new(1, 0, 0)
	Part17.Position = Vector3.new(42.0556755, 5.64494753, 9.74450111)
	Part17.Orientation = Vector3.new(0, 135, -21.2999992)
	Part17.Color = Color3.new(1, 0, 0)
	Motor6D18.Name = "Joint"
	Motor6D18.Parent = Part17
	Motor6D18.C1 = CFrame.new(-2.87059045, 0.0170345306, 0, 0, -1, 0, 1, 0, -0, 0, 0, 1)
	Motor6D18.Part0 = Part17
	Motor6D18.Part1 = Part11
	Model19.Name = "RightUpperLeg"
	Model19.Parent = Model0
	Part20.Name = "Leg"
	Part20.Parent = Model19
	Part20.Material = Enum.Material.Metal
	Part20.BrickColor = BrickColor.new("Really black")
	Part20.Rotation = Vector3.new(-180, -45, 68.6999969)
	Part20.CanCollide = false
	Part20.Size = Vector3.new(6, 1, 1)
	Part20.CFrame = CFrame.new(42.8043251, 2.97667956, 1.56864583, 0.256889135, -0.658794999, -0.707108319, -0.931675553, -0.363295496, 1.16880165e-06, -0.256889671, 0.658795893, -0.707108676)
	Part20.BottomSurface = Enum.SurfaceType.Smooth
	Part20.TopSurface = Enum.SurfaceType.Smooth
	Part20.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part20.Position = Vector3.new(42.8043251, 2.97667956, 1.56864583)
	Part20.Orientation = Vector3.new(0, -135, -111.299995)
	Part20.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part21.Name = "Base"
	Part21.Parent = Model19
	Part21.Material = Enum.Material.Neon
	Part21.BrickColor = BrickColor.new("Really red")
	Part21.Transparency = 1
	Part21.Rotation = Vector3.new(-180, -45, 158.699997)
	Part21.CanCollide = false
	Part21.Shape = Enum.PartType.Ball
	Part21.Size = Vector3.new(1.10000002, 1.10000002, 1.10000002)
	Part21.CFrame = CFrame.new(38.7617035, 3.82847285, 5.61127424, -0.658794999, -0.256889135, -0.707108319, -0.363295496, 0.931675553, 1.16880165e-06, 0.658795893, 0.256889671, -0.707108676)
	Part21.BottomSurface = Enum.SurfaceType.Smooth
	Part21.TopSurface = Enum.SurfaceType.Smooth
	Part21.Color = Color3.new(1, 0, 0)
	Part21.Position = Vector3.new(38.7617035, 3.82847285, 5.61127424)
	Part21.Orientation = Vector3.new(0, -135, -21.2999992)
	Part21.Color = Color3.new(1, 0, 0)
	Motor6D22.Name = "Joint"
	Motor6D22.Parent = Part21
	Motor6D22.C0 = CFrame.new(-5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D22.C1 = CFrame.new(-2.49999809, 1.43051147e-06, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D22.Part0 = Part21
	Motor6D22.Part1 = Part24
	Motor6D23.Parent = Part21
	Motor6D23.C1 = CFrame.new(1.26169586, -0.671522856, -0.388725281, -0.658793211, -0.256887972, -0.707106888, -0.363295078, 0.931674182, 6.63038577e-07, 0.65879339, 0.256888986, -0.707106709)
	Motor6D23.Part0 = Part21
	Motor6D23.Part1 = Part37
	Part24.Name = "Leg"
	Part24.Parent = Model19
	Part24.Material = Enum.Material.Metal
	Part24.BrickColor = BrickColor.new("Really black")
	Part24.Rotation = Vector3.new(-180, -45, 158.699997)
	Part24.CanCollide = false
	Part24.Size = Vector3.new(5, 1, 1)
	Part24.CFrame = CFrame.new(40.4086914, 4.73671103, 3.96428299, -0.658794999, -0.256889135, -0.707108319, -0.363295496, 0.931675553, 1.16880165e-06, 0.658795893, 0.256889671, -0.707108676)
	Part24.BottomSurface = Enum.SurfaceType.Smooth
	Part24.TopSurface = Enum.SurfaceType.Smooth
	Part24.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part24.Position = Vector3.new(40.4086914, 4.73671103, 3.96428299)
	Part24.Orientation = Vector3.new(0, -135, -21.2999992)
	Part24.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Motor6D25.Parent = Part24
	Motor6D25.C0 = CFrame.new(2.5999999, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D25.C1 = CFrame.new(5.10000038, -2.38418579e-07, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D25.Part0 = Part24
	Motor6D25.Part1 = Part26
	Part26.Name = "Knee"
	Part26.Parent = Model19
	Part26.Material = Enum.Material.Neon
	Part26.BrickColor = BrickColor.new("Really red")
	Part26.Rotation = Vector3.new(-180, -45, 158.699997)
	Part26.CanCollide = false
	Part26.Shape = Enum.PartType.Ball
	Part26.Size = Vector3.new(1.10000002, 1.10000002, 1.10000002)
	Part26.CFrame = CFrame.new(42.0556793, 5.64494991, 2.31729317, -0.658794999, -0.256889135, -0.707108319, -0.363295496, 0.931675553, 1.16880165e-06, 0.658795893, 0.256889671, -0.707108676)
	Part26.BottomSurface = Enum.SurfaceType.Smooth
	Part26.TopSurface = Enum.SurfaceType.Smooth
	Part26.Color = Color3.new(1, 0, 0)
	Part26.Position = Vector3.new(42.0556793, 5.64494991, 2.31729317)
	Part26.Orientation = Vector3.new(0, -135, -21.2999992)
	Part26.Color = Color3.new(1, 0, 0)
	Motor6D27.Name = "Joint"
	Motor6D27.Parent = Part26
	Motor6D27.C1 = CFrame.new(-2.87059045, 0.0170345306, 0, 0, -1, 0, 1, 0, -0, 0, 0, 1)
	Motor6D27.Part0 = Part26
	Motor6D27.Part1 = Part20
	Model28.Name = "LeftUpperLeg"
	Model28.Parent = Model0
	Part29.Name = "Leg"
	Part29.Parent = Model28
	Part29.Material = Enum.Material.Metal
	Part29.BrickColor = BrickColor.new("Really black")
	Part29.Rotation = Vector3.new(0, -45, -111.299995)
	Part29.CanCollide = false
	Part29.Size = Vector3.new(6, 1, 1)
	Part29.CFrame = CFrame.new(32.2575073, 2.97668052, 1.53776193, -0.256887734, 0.658793867, -0.70710808, -0.931674898, -0.363295287, -5.81522841e-07, -0.256888896, 0.658794224, 0.707108021)
	Part29.BottomSurface = Enum.SurfaceType.Smooth
	Part29.TopSurface = Enum.SurfaceType.Smooth
	Part29.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part29.Position = Vector3.new(32.2575073, 2.97668052, 1.53776193)
	Part29.Orientation = Vector3.new(0, -45, -111.299995)
	Part29.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part30.Name = "Base"
	Part30.Parent = Model28
	Part30.Material = Enum.Material.Neon
	Part30.BrickColor = BrickColor.new("Really red")
	Part30.Transparency = 1
	Part30.Rotation = Vector3.new(0, -45, -21.2999992)
	Part30.CanCollide = false
	Part30.Shape = Enum.PartType.Ball
	Part30.Size = Vector3.new(1.10000002, 1.10000002, 1.10000002)
	Part30.CFrame = CFrame.new(36.3001213, 3.82847309, 5.58037996, 0.658793867, 0.256887734, -0.70710808, -0.363295287, 0.931674898, -5.81522841e-07, 0.658794224, 0.256888896, 0.707108021)
	Part30.BottomSurface = Enum.SurfaceType.Smooth
	Part30.TopSurface = Enum.SurfaceType.Smooth
	Part30.Color = Color3.new(1, 0, 0)
	Part30.Position = Vector3.new(36.3001213, 3.82847309, 5.58037996)
	Part30.Orientation = Vector3.new(0, -45, -21.2999992)
	Part30.Color = Color3.new(1, 0, 0)
	Motor6D31.Name = "Joint"
	Motor6D31.Parent = Part30
	Motor6D31.C0 = CFrame.new(-5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D31.C1 = CFrame.new(-2.49999809, 1.43051147e-06, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D31.Part0 = Part30
	Motor6D31.Part1 = Part33
	Motor6D32.Parent = Part30
	Motor6D32.C1 = CFrame.new(-1.19987869, -0.671523809, -0.419620514, 0.658793986, 0.256887794, -0.707107961, -0.363295197, 0.931674778, -5.81522897e-07, 0.658794165, 0.256888896, 0.707107723)
	Motor6D32.Part0 = Part30
	Motor6D32.Part1 = Part37
	Part33.Name = "Leg"
	Part33.Parent = Model28
	Part33.Material = Enum.Material.Metal
	Part33.BrickColor = BrickColor.new("Really black")
	Part33.Rotation = Vector3.new(0, -45, -21.2999992)
	Part33.CanCollide = false
	Part33.Size = Vector3.new(5, 1, 1)
	Part33.CFrame = CFrame.new(34.6531334, 4.73671055, 3.93339276, 0.658793867, 0.256887734, -0.70710808, -0.363295287, 0.931674898, -5.81522841e-07, 0.658794224, 0.256888896, 0.707108021)
	Part33.BottomSurface = Enum.SurfaceType.Smooth
	Part33.TopSurface = Enum.SurfaceType.Smooth
	Part33.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part33.Position = Vector3.new(34.6531334, 4.73671055, 3.93339276)
	Part33.Orientation = Vector3.new(0, -45, -21.2999992)
	Part33.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Motor6D34.Parent = Part33
	Motor6D34.C0 = CFrame.new(2.5999999, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D34.C1 = CFrame.new(5.10000038, -2.38418579e-07, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Motor6D34.Part0 = Part33
	Motor6D34.Part1 = Part35
	Part35.Name = "Knee"
	Part35.Parent = Model28
	Part35.Material = Enum.Material.Neon
	Part35.BrickColor = BrickColor.new("Really red")
	Part35.Rotation = Vector3.new(0, -45, -21.2999992)
	Part35.CanCollide = false
	Part35.Shape = Enum.PartType.Ball
	Part35.Size = Vector3.new(1.10000002, 1.10000002, 1.10000002)
	Part35.CFrame = CFrame.new(33.0061493, 5.64494896, 2.28640699, 0.658793867, 0.256887734, -0.70710808, -0.363295287, 0.931674898, -5.81522841e-07, 0.658794224, 0.256888896, 0.707108021)
	Part35.BottomSurface = Enum.SurfaceType.Smooth
	Part35.TopSurface = Enum.SurfaceType.Smooth
	Part35.Color = Color3.new(1, 0, 0)
	Part35.Position = Vector3.new(33.0061493, 5.64494896, 2.28640699)
	Part35.Orientation = Vector3.new(0, -45, -21.2999992)
	Part35.Color = Color3.new(1, 0, 0)
	Motor6D36.Name = "Joint"
	Motor6D36.Parent = Part35
	Motor6D36.C1 = CFrame.new(-2.87059045, 0.0170345306, 0, 0, -1, 0, 1, 0, -0, 0, 0, 1)
	Motor6D36.Part0 = Part35
	Motor6D36.Part1 = Part29
	Part37.Name = "FakeTorso"
	Part37.Parent = Model0
	Part37.Transparency = 1
	Part37.Size = Vector3.new(2, 2, 1)
	Part37.CFrame = CFrame.new(37.5000038, 4.49999714, 6.00000095, 1.0000025, -4.23265476e-07, -4.76837158e-07, -4.2326559e-07, 1.00000143, -2.91990006e-07, -4.17232513e-07, -2.77089043e-07, 1.00000322)
	Part37.BottomSurface = Enum.SurfaceType.Smooth
	Part37.TopSurface = Enum.SurfaceType.Smooth
	Part37.Position = Vector3.new(37.5000038, 4.49999714, 6.00000095)
	Motor6D38.Name = "Motor"
	Motor6D38.Parent = Part37
	Motor6D38.Part0 = Part37
    
 	local UP1W = Instance.new("Weld", Character.UpperPart1)
    UP1W.Part0 = Character.UpperPart1
    UP1W.Part1 = Part33
    local UP2W = Instance.new("Weld", Character.UpperPart2)
    UP2W.Part0 = Character.UpperPart2
    UP2W.Part1 = Part24
    local UP3W = Instance.new("Weld", Character.UpperPart3)
    UP3W.Part0 = Character.UpperPart3
    UP3W.Part1 = Part15
    local UP4W = Instance.new("Weld", Character.UpperPart4)
    UP4W.Part0 = Character.UpperPart4
    UP4W.Part1 = Part6
    
    local LP1W = Instance.new("Weld", Character.LowerPart1)
    LP1W.Part0 = Character.LowerPart1
    LP1W.Part1 = Part29
    local LP2W = Instance.new("Weld", Character.LowerPart2)
    LP2W.Part0 = Character.LowerPart2
    LP2W.Part1 = Part11
    local LP3W = Instance.new("Weld", Character.LowerPart3)
    LP3W.Part0 = Character.LowerPart3
    LP3W.Part1 = Part20
    local LP4W = Instance.new("Weld", Character.LowerPart4)
    LP4W.Part0 = Character.LowerPart4
    LP4W.Part1 = Part2
    
    local BP1W = Instance.new("Weld", Character.BasePart1)
    BP1W.Part0 = Character.BasePart1
    BP1W.Part1 = Part37
    
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = workspace
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
	return Model0
end



local spiderbot = CreateInstance()
spiderbot.Parent = char

for i,v in pairs(spiderbot:GetDescendants()) do
if v:IsA("BasePart") then
v.Transparency = 1
end
end

function tween(object,style,direction,t,goal)
	local tweenservice = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(t,Enum.EasingStyle[style],Enum.EasingDirection[direction])
	local tween = tweenservice:Create(object,tweenInfo,goal)
	tween:Play()
	return tween
end

local char = workspace.non
torso = char.Torso
head = char.Head
hrp = char.HumanoidRootPart
hum = char.Humanoid
hum.WalkSpeed = 20
s = 0
rstep = game:GetService("RunService").RenderStepped

if char:FindFirstChild("Animate") then
	char.Animate:Destroy()
end
for i,v in pairs(hum:GetPlayingAnimationTracks()) do
	v:Stop()
end

local rl = torso['Right Hip']
local ll = torso['Left Hip']
local rs = torso['Right Shoulder']
local ls = torso['Left Shoulder']
local neck = torso.Neck
local rs0 = rs.C0
local ls0 = ls.C0
local rl0 = rl.C0
local ll0 = ll.C0
local n0 = neck.C0

function newSound(id,extrasettings)
	local soundy = basesound:Clone()
	if not soundy then soundy = Instance.new("Sound") end
	soundy.Parent = hrp
	soundy.Volume = 1
	soundy.SoundId = id
	if extrasettings then
		for i=1,#extrasettings do
			local sets = extrasettings[i]:gmatch("[%w%.]+")
			local set = {}
			for v in (sets) do
				table.insert(set,v)
			end
			
			soundy[set[1]] = set[2]
		end
	end
	soundy.Playing = true
	game.Debris:AddItem(soundy,5)
	return soundy
end

function woosh()
	local wooshes = {'rbxassetid://541909867','rbxassetid://541909814'}
	return newSound(wooshes[math.random(1,#wooshes)],{
		[1] = "PlaybackSpeed, "..tostring(1+math.random(-200,200)/1000);
		[2] = "Volume, 1";
		[3] = "PlaybackSpeed, 0.9";
	})
end

function hardhit()
	local wooshes = {'rbxassetid://565207203','rbxassetid://541909983','rbxassetid://541909913'}
	newSound(wooshes[math.random(1,#wooshes)],{
		[1] = "PlaybackSpeed, "..tostring(1+math.random(-100,100)/1000);
		[2] = "Volume, 2";
	})
end

function explosion()
	local wooshes = {'rbxassetid://262562442','rbxassetid://919941001','rbxassetid://539294959'}
	newSound(wooshes[math.random(1,#wooshes)],{
		[1] = "PlaybackSpeed, "..tostring(1+math.random(-100,100)/1000);
		[2] = "Volume, 2";
	})
end

function hit()
	local hitsounds = {"rbxassetid://220025741",
		"rbxassetid://220025689",
		"rbxassetid://220025689"
	}
	return newSound(hitsounds[math.random(1,#hitsounds)],{
		[1] = "PlaybackSpeed, "..tostring(1+math.random(-200,200)/1000);
		[2] = "Volume, 0.5";
	})
end

local csine = 0
rstep:connect(function()
	if not flying then
		csine = csine + 0.025
		local csin = math.sin(csine)
		rl.C0 = rl.C0:lerp(rl0 * CFrame.Angles(csin/25 + math.rad(-2),0,0), 0.2)
		ll.C0 = ll.C0:lerp(ll0 * CFrame.Angles(csin/25 + math.rad(-2),0,0), 0.2)
		rs.C0 = rs.C0:lerp(rs0 * CFrame.Angles(-csin/15 + math.rad(-6),0,0), 0.2)
		ls.C0 = ls.C0:lerp(ls0 * CFrame.Angles(-csin/15 + math.rad(-6),0,0), 0.2)
		neck.C0 = neck.C0:lerp(n0 * CFrame.Angles(csin/15 + math.rad(15),0,0), 0.2)
	else
		csine = csine + 0.025
		local csin = math.sin(csine)
		rl.C0 = rl.C0:lerp(rl0 * CFrame.Angles(csin/25 + math.rad(-2),0,0), 0.2)
		ll.C0 = ll.C0:lerp(ll0 * CFrame.Angles(csin/25 + math.rad(-2),0,0), 0.2)
		rs.C0 = rs.C0:lerp(rs0 * CFrame.Angles(-csin/10 + math.rad(-90),0,0) * CFrame.new(0,-0.5,-0.5), 0.2)
		ls.C0 = ls.C0:lerp(ls0 * CFrame.Angles(-csin/10 + math.rad(-90),0,0) * CFrame.new(0,-0.5,-0.5), 0.2)
		neck.C0 = neck.C0:lerp(n0 * CFrame.Angles(csin/15 + math.rad(5),0,0), 0.2)
	end
end)

hum.HipHeight = 1.25

center = spiderbot.FakeTorso
cmotor = center.Motor
cmotor.Part1 = torso

LLL = spiderbot.LeftLowerLeg
LUL = spiderbot.LeftUpperLeg
RLL = spiderbot.RightLowerLeg
RUL = spiderbot.RightUpperLeg



lll = LLL.Base.Motor6D
lul = LUL.Base.Motor6D
rll = RLL.Base.Motor6D
rul = RUL.Base.Motor6D

lll2 = LLL.Knee.Joint
lul2 = LUL.Knee.Joint
rll2 = RLL.Knee.Joint
rul2 = RUL.Knee.Joint

olll = lll.C0 * CFrame.new(-0.5,0,-1) * CFrame.new(-0.3,-0.75,0.3)
olul = lul.C0 * CFrame.new(-0.5,0,1) * CFrame.new(-0.3,-0.75,-0.3)
orll = rll.C0 * CFrame.new(-0.5,0,1) * CFrame.new(-0.3,-0.75,-0.3)
orul = rul.C0 * CFrame.new(-0.5,0,-1) * CFrame.new(-0.3,-0.75,0.3)



lll2.C0 = lll2.C0
lul2.C0 = lul2.C0
rll2.C0 = rll2.C0
rul2.C0 = rul2.C0

olll2 = lll2.C0
olul2 = lul2.C0
orll2 = rll2.C0
orul2 = rul2.C0



rstep:connect(function()
	local v = torso.Velocity
	local mag = math.sqrt(v.x^2 + v.z^2) / 15
	s = mag * 15
	if mag > 0.1 then
		pose = "Running"
	else
		pose = "Idle"
	end
end)

pose = "Idle"
local lsine = 1
local ksine = -1
local lsine2 = 2.7
local ksine2 = -2.7
hum.JumpPower = 0
movelegs = true
flying = false
bv = Instance.new("BodyVelocity",torso)


function sparkle(size,amt,pos,dur,thickness)
	for i = 1,amt do
		if thickness == nil then
			thickness = size/9
		end
		local p = basepart:Clone()
		p.Parent = workspace
		p.CanCollide = false
		p.Shape = "Ball"
		p.Anchored = true
		p.Material = "Neon"
		p.Color = secondary
		p.CFrame = CFrame.new(pos) * CFrame.Angles(math.random(-360,360)/360,math.random(-360,360)/360,math.random(-360,360)/360)
		p.Size = Vector3.new(1,1,1)
		local mesh = Instance.new("SpecialMesh",p)
		mesh.MeshType = Enum.MeshType.Sphere
		tween(p, "Sine", "Out", dur, {
			["Transparency"] = 1;
			["CFrame"] = p.CFrame * CFrame.Angles(math.random(-360,360)/360,math.random(-360,360)/360,math.random(-360,360)/360)
		})
		tween(mesh, "Sine", "Out", dur*2, {
			["Scale"] = Vector3.new(thickness,size*10,thickness);
		})
		game.Debris:AddItem(p,dur)
	end
end

sparkle(10,55,hrp.Position,3,1)

function push(part,vel)
	local bv2 = Instance.new("BodyVelocity",part)
	bv2.Velocity = (part.Position - torso.Position).unit  * 3 * (vel / 30000)
	bv2.MaxForce = Vector3.new(vel,vel,vel)
	game.Debris:AddItem(bv2,0.25)
	Empyrean.Fling(part, DefaultFlingOptions)
end

local t = {}
function t.find(ta,element)
	for i = 1,#ta do
		if ta[i] == element then
			return true
		end
	end
	return false
end
function AOE(magnitude,damage,pos)
	coroutine.resume(coroutine.create(function()
		if not pos then
			pos = hrp.Position
		end
		local chars = {}
		local ex = baseexplosion:Clone()
		ex.Position = pos
		ex.Parent = workspace
		ex.BlastPressure = 0
		ex.Visible = false
		ex.DestroyJointRadiusPercent = 0
		ex.BlastRadius = magnitude
		ex.Hit:connect(function(pa)
			if pa.Parent:FindFirstChildOfClass("Humanoid") and pa.Parent ~= char and t.find(chars,pa.Parent) == false then
			table.insert(chars,pa.Parent)
			end
			if pa.Parent:FindFirstChildOfClass("Humanoid") and pa.Parent ~= char then
			push(pa, damage * 0)
			end
		end)
		
		local p = basepart:Clone()
		p.Parent = workspace
		p.Shape = "Ball"
		p.Anchored = true
		p.CanCollide = false
		p.Material = "Neon"
		p.Color = secondary
		p.CFrame = CFrame.new(pos)
		p.Size = Vector3.new(0,0,0)
		tween(p, "Sine", "Out", 2, {
			["Size"] = Vector3.new(magnitude*5,magnitude*5,magnitude*5);
		})
		tween(p, "Sine", "Out", 0.75, {
			["Transparency"] = 1;
		})
		game.Debris:AddItem(p,0.75)
		spawn(function() sparkle(magnitude, 15, p.Position,1) end)
		wait()
		for i = 1,#chars do
			local hrp2 = chars[i]:FindFirstChildOfClass("Part")
			if hrp2 then
				local hum2 = chars[i]:FindFirstChildOfClass("Humanoid")
				if hum2 and hum2 ~= hum then
				--	hum2.Health = hum2.Health - (hum2.MaxHealth / (0 / damage))
					if hum2.MaxHealth == math.huge then
					--	chars[i]:BreakJoints()
					end
				end
			end
		end
	end))
end

function AOE2(magnitude,damage,pos)
	if not pos then
		pos = hrp.Position
	end
	local chars = {}
	local ex = baseexplosion:Clone()
	ex.Position = pos
	ex.Parent = workspace
	ex.BlastPressure = 0
	ex.Visible = false
	ex.DestroyJointRadiusPercent = 0
	ex.BlastRadius = magnitude
	ex.Hit:connect(function(pa)
		if pa.Parent:FindFirstChildOfClass("Humanoid") and pa.Parent ~= char and t.find(chars,pa.Parent) == false then
		   table.insert(chars,pa.Parent)
		end
		if pa.Parent:FindFirstChildOfClass("Humanoid") and pa.Parent ~= char then
			push(pa, damage * 0)
		end
	end)
	wait()
	for i = 1,#chars do
		if chars[i] ~= char then
			local hrp2 = chars[i]:FindFirstChild("HumanoidRootPart")
			if hrp2 then
				if (hrp2.Position - pos).magnitude < magnitude then
					local hum2 = chars[i]:FindFirstChildOfClass("Humanoid")
					if hum2 and hum2 ~= hum then
						push(hrp2, 10000)
						-- hum2.Health = hum2.Health - (hum2.MaxHealth / (0 / damage))
						hit().Volume = 0.3
						spawn(function() sparkle((magnitude - (hrp2.Position - pos).magnitude) / 5, 1, hrp2.Position,0.5) end)
					end
				end
			end
		end
	end
end
rstep:connect(function()
	for i,v in pairs (char:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Anchored = false
		end
	end
	if not flying then
		bv.Velocity = Vector3.new(0,0,0)
		bv.MaxForce = Vector3.new(0,0,0)
	end
	local md = hum.MoveDirection
	hum.MaxHealth = math.huge
	hum.Health = math.huge
	hum:SetStateEnabled("Dead",false)
	if pose == "Running" and movelegs then
		tween(hum,"Sine","Out",0.1,{["HipHeight"] = 1.25})
		
		local tim = s / 300
		lsine = lsine + s / 20 / 10
		ksine = ksine + s / 20 / 10
		local lsin = math.sin(lsine)
		local ksin = math.sin(ksine)
		
		lsine2 = lsine2 + s / 20 / 10
		ksine2 = ksine2 + s / 20 / 10
		local lsin2 = math.sin(lsine2)
		local ksin2 = math.sin(ksine2)
		local Ru_Ll = CFrame.Angles(0,lsin/2.5,0)
		local Lu_Rl = CFrame.Angles(0,-lsin2/2.5,0)
		local e = 4 - s / 25
		if e < 1 then e = 1 end
		local Ru2_Ll2 = CFrame.Angles(ksin/2,0,-ksin/e)
		local Lu2_Rl2 = CFrame.Angles(-ksin2/2,0,-ksin2/e)
		
		lll.C0 = lll.C0:lerp(Ru_Ll * olll * CFrame.Angles(0,0,-ksin/5), tim)
		rul.C0 = rul.C0:lerp(Ru_Ll * orul * CFrame.Angles(0,0,ksin/5), tim)

		lul.C0 = lul.C0:lerp(Lu_Rl * olul * CFrame.Angles(0,0,-ksin2/5), tim)
		rll.C0 = rll.C0:lerp(Lu_Rl * orll * CFrame.Angles(0,0,ksin2/5), tim)
		
		lul2.C0 = lul2.C0:lerp(Ru2_Ll2 * olul2, tim)
		rll2.C0 = rll2.C0:lerp(Ru2_Ll2 * orll2, tim)
		
		lll2.C0 = lll2.C0:lerp(Lu2_Rl2 * olul2, tim)
		rul2.C0 = rul2.C0:lerp(Lu2_Rl2 * orll2, tim)
	end
	if pose == "Idle" and movelegs then
		tween(cmotor,"Sine","Out",0.2,{["C0"] = cm0})
		lsine = lsine + 0.1/2
		ksine = ksine + 0.1/2
		local lsin = math.sin(lsine)
		local ksin = math.sin(ksine)
		
		lsine2 = lsine2 + 0.1/2
		ksine2 = ksine2 + 0.1/2
		local lsin2 = math.sin(lsine2)
		local ksin2 = math.sin(ksine2)
		
		local Ru_Ll = CFrame.Angles(0,0,ksin/10 + math.rad(-5))
		local Lu_Rl = CFrame.Angles(0,0,ksin/10 + math.rad(-5))
		local Ru2_Ll2 = CFrame.Angles(0,0,-ksin2/5)
		local Lu2_Rl2 = CFrame.Angles(0,0,-ksin2/5)
		
		tween(hum,"Sine","Out",0.3,{["HipHeight"] = 1.4 - ksin/1.5})
		
		lll.C0 = lll.C0:lerp(Ru_Ll * olll, 0.05)
		rul.C0 = rul.C0:lerp(Ru_Ll * orul, 0.05)

		lul.C0 = lul.C0:lerp(Lu_Rl * olul, 0.05)
		rll.C0 = rll.C0:lerp(Lu_Rl * orll, 0.05)
		
		lul2.C0 = lul2.C0:lerp(Ru2_Ll2 * olul2, 0.05)
		rll2.C0 = rll2.C0:lerp(Ru2_Ll2 * orll2, 0.05)
		
		lll2.C0 = lll2.C0:lerp(Lu2_Rl2 * olul2, 0.05)
		rul2.C0 = rul2.C0:lerp(Lu2_Rl2 * orll2, 0.05)
	end
	if editws == false then return end
	if run == true then
		tween(hum,"Sine","Out",0.5,{["WalkSpeed"] = 40})
		jp = 100
	else
		tween(hum,"Sine","Out",0.5,{["WalkSpeed"] = 16})
		jp = 65
	end
end)

jp = 50

mouse = player:GetMouse()
UIS = game:GetService("UserInputService")
run = false
attacking = false
sdown = false

UIS.InputBegan:connect(function(k,g)
	local key = k.KeyCode
	if not g then
		if key == Enum.KeyCode.Space then
			sdown = true
			jump()
		end
		if key == Enum.KeyCode.Q then
			stomp()
		end
		if key == Enum.KeyCode.LeftShift then
			run = true
		end
		if key == Enum.KeyCode.E then
			backstomp()
		end
		if key == Enum.KeyCode.F then
			fdown = true
			spin()
		end
	end
end)
UIS.InputEnded:connect(function(k,g)
	local key = k.KeyCode
	if not g then
		if key == Enum.KeyCode.LeftShift then
			run = false
		end
		if key == Enum.KeyCode.Space then
			sdown = false
		end
		if key == Enum.KeyCode.F then
			fdown = false
		end
	end
end)

fdown = false

function stomp()
	if flying or attacking then return end
	attacking = true
	editws = false
	movelegs = false
	tween(hum,"Sine","InOut",0.6,{["WalkSpeed"] = 0})
	
	woosh()
	tween(lll,"Sine","InOut",0.2,{["C0"] = olll * CFrame.Angles(0,0,0)})
	tween(lul,"Sine","InOut",0.2,{["C0"] = olul * CFrame.Angles(math.rad(-40),math.rad(-40),math.rad(100)) * CFrame.new(0,-1,-1)})
	tween(rll,"Sine","InOut",0.2,{["C0"] = orll * CFrame.Angles(0,0,0)})
	tween(rul,"Sine","InOut",0.2,{["C0"] = orul * CFrame.Angles(math.rad(40),math.rad(40),math.rad(100)) * CFrame.new(0,-1,1)})
	
	tween(lll2,"Sine","InOut",0.2,{["C0"] = olll2 * CFrame.Angles(0,0,0)})
	tween(lul2,"Sine","InOut",0.2,{["C0"] = olul2 * CFrame.Angles(0,0,0)})
	tween(rll2,"Sine","InOut",0.2,{["C0"] = orll2 * CFrame.Angles(0,0,0)})
	tween(rul2,"Sine","InOut",0.2,{["C0"] = orul2 * CFrame.Angles(0,0,0)})
	wait(0.2)
	tween(lll,"Sine","In",0.15,{["C0"] = olll * CFrame.Angles(0,0,0)})
	tween(lul,"Sine","In",0.15,{["C0"] = olul * CFrame.Angles(math.rad(-20),math.rad(40),0)})
	tween(rll,"Sine","In",0.15,{["C0"] = orll * CFrame.Angles(0,0,0)})
	tween(rul,"Sine","In",0.15,{["C0"] = orul * CFrame.Angles(math.rad(20),math.rad(-40),0)})
	
	tween(lll2,"Sine","InOut",0.15,{["C0"] = olll2 * CFrame.Angles(0,0,0)})
	tween(lul2,"Sine","InOut",0.15,{["C0"] = olul2 * CFrame.Angles(0,0,0)})
	tween(rll2,"Sine","InOut",0.15,{["C0"] = orll2 * CFrame.Angles(0,0,0)})
	tween(rul2,"Sine","InOut",0.15,{["C0"] = orul2 * CFrame.Angles(0,0,0)})
	spawn(function()
		wait(0.08)
		hardhit()
		AOE(5, 20, (hrp.CFrame * CFrame.new(0,-3,-5)).p)
	end)
	wait(0.08)
	movelegs = true
	attacking = false
	editws = true
end

function backstomp()
	if flying or attacking then return end
	attacking = true
	editws = false
	movelegs = false
	tween(hum,"Sine","InOut",0.6,{["WalkSpeed"] = 0})
	
	woosh()
	tween(lll,"Sine","InOut",0.2,{["C0"] = olll * CFrame.Angles(math.rad(40),0,math.rad(70))})
	tween(lul,"Sine","InOut",0.2,{["C0"] = olul})
	tween(rll,"Sine","InOut",0.2,{["C0"] = orll * CFrame.Angles(math.rad(-40),0,math.rad(70))})
	tween(rul,"Sine","InOut",0.2,{["C0"] = orul})
	
	tween(lll2,"Sine","InOut",0.2,{["C0"] = olll2 * CFrame.Angles(0,0,0)})
	tween(lul2,"Sine","InOut",0.2,{["C0"] = olul2 * CFrame.Angles(0,0,0)})
	tween(rll2,"Sine","InOut",0.2,{["C0"] = orll2 * CFrame.Angles(0,0,0)})
	tween(rul2,"Sine","InOut",0.2,{["C0"] = orul2 * CFrame.Angles(0,0,0)})
	wait(0.2)
	tween(lll,"Sine","InOut",0.15,{["C0"] = olll * CFrame.Angles(math.rad(10),math.rad(-40),math.rad(-30))})
	tween(lul,"Sine","InOut",0.15,{["C0"] = olul})
	tween(rll,"Sine","InOut",0.15,{["C0"] = orll * CFrame.Angles(math.rad(-10),math.rad(40),math.rad(-30))})
	tween(rul,"Sine","InOut",0.15,{["C0"] = orul})
	
	tween(lll2,"Sine","InOut",0.15,{["C0"] = olll2 * CFrame.Angles(0,0,0)})
	tween(lul2,"Sine","InOut",0.15,{["C0"] = olul2 * CFrame.Angles(0,0,0)})
	tween(rll2,"Sine","InOut",0.15,{["C0"] = orll2 * CFrame.Angles(0,0,0)})
	tween(rul2,"Sine","InOut",0.15,{["C0"] = orul2 * CFrame.Angles(0,0,0)})
	spawn(function()
		wait(0.08)
		hardhit()
		AOE(5, 20, (hrp.CFrame * CFrame.new(0,-3,5)).p)
	end)
	wait(0.08)
	movelegs = true
	attacking = false
	editws = true
end

jdeb = true
function jump()
	if jdeb == false then return end
	--if hum.FloorMaterial == Enum.Material.Air then return end
	jdeb = false
	local issprint = false
	if jp == 100 then issprint = true end
	movelegs = false
	editws = false
	tween(hum,"Sine","Out",2,{["WalkSpeed"] = 0})
	woosh().Volume = 0.1
	tween(lll,"Sine","InOut",0.5,{["C0"] = olll * CFrame.Angles(0,0,math.rad(50))})
	tween(lul,"Sine","InOut",0.5,{["C0"] = olul * CFrame.Angles(0,0,math.rad(50))})
	tween(rll,"Sine","InOut",0.5,{["C0"] = orll * CFrame.Angles(0,0,math.rad(50))})
	tween(rul,"Sine","InOut",0.5,{["C0"] = orul * CFrame.Angles(0,0,math.rad(50))})
	
	tween(lll2,"Sine","InOut",0.5,{["C0"] = olll2 * CFrame.Angles(0,0,math.rad(70))})
	tween(lul2,"Sine","InOut",0.5,{["C0"] = olul2 * CFrame.Angles(0,0,math.rad(70))})
	tween(rll2,"Sine","InOut",0.5,{["C0"] = orll2 * CFrame.Angles(0,0,math.rad(70))})
	tween(rul2,"Sine","InOut",0.5,{["C0"] = orul2 * CFrame.Angles(0,0,math.rad(70))})
	tween(hum,"Sine","Out",0.5,{["HipHeight"] = 0})
	wait(0.2)
	local power = jp
	repeat rstep:Wait(0) tween(hum,"Sine","Out",0.5,{["HipHeight"] = 0}) power = power + 1 tween(hum,"Sine","Out",0.5,{["WalkSpeed"] = 0}) editws = false movelegs = false until not sdown
	spawn(function()
		jdeb = true
		if power > 200 then power = 200 end
		if power > 150 then hardhit() hardhit() woosh() woosh() sparkle(5,30,(torso.CFrame * CFrame.new(0,-2,0)).p, 1.5) end
		bv.Velocity = Vector3.new(0,power,0)
		bv.MaxForce = Vector3.new(0,4000000,0)
	end)
	tween(hum,"Sine","Out",0.1,{["HipHeight"] = 1.25})
	woosh()
	tween(lll,"Sine","Out",0.25,{["C0"] = olll * CFrame.Angles(0,0,-math.rad(50))})
	tween(lul,"Sine","Out",0.25,{["C0"] = olul * CFrame.Angles(0,0,-math.rad(50))})
	tween(rll,"Sine","Out",0.25,{["C0"] = orll * CFrame.Angles(0,0,-math.rad(50))})
	tween(rul,"Sine","Out",0.25,{["C0"] = orul * CFrame.Angles(0,0,-math.rad(50))})
	
	tween(lll2,"Sine","InOut",0.25,{["C0"] = olll2 * CFrame.Angles(0,0,-math.rad(30))})
	tween(lul2,"Sine","InOut",0.25,{["C0"] = olul2 * CFrame.Angles(0,0,-math.rad(30))})
	tween(rll2,"Sine","InOut",0.25,{["C0"] = orll2 * CFrame.Angles(0,0,-math.rad(30))})
	tween(rul2,"Sine","InOut",0.25,{["C0"] = orul2 * CFrame.Angles(0,0,-math.rad(30))})
	tween(hum,"Sine","Out",0.2,{["WalkSpeed"] = 25})
	wait(0.15)
	movelegs = true
	spawn(function()
		repeat rstep:Wait(0) tween(hum,"Sine","Out",3,{["WalkSpeed"] = 100}) until hum.FloorMaterial ~= Enum.Material.Air
		if power > 150 and issprint then AOE(15,99,hrp.Position - Vector3.new(0,2,0)) explosion() explosion() hardhit() sparkle(15,45,torso.Position - Vector3.new(0,5,0), 1, 10) end
		editws = true
	end)
end
cm0 = cmotor.C0

function unravel()
	tween(lll,"Sine","Out",0.1,{["C0"] = CFrame.new(-1,-0.5,-0.5) * CFrame.Angles(0,0,-0.3)})
	tween(lul,"Sine","Out",0.1,{["C0"] = CFrame.new(-1,-0.5,0.5) * CFrame.Angles(0,0,-0.3)})
	tween(rll,"Sine","Out",0.1,{["C0"] = CFrame.new(-1,-0.5,0.5) * CFrame.Angles(0,0,-0.3)})
	tween(rul,"Sine","Out",0.1,{["C0"] = CFrame.new(-1,-0.5,-0.5) * CFrame.Angles(0,0,-0.3)})
	
	tween(lll2,"Sine","Out",0.1,{["C0"] = olll2 * CFrame.Angles(0,0,math.rad(-90))})
	tween(lul2,"Sine","Out",0.1,{["C0"] = olul2 * CFrame.Angles(0,0,math.rad(-90))})
	tween(rll2,"Sine","Out",0.1,{["C0"] = orll2 * CFrame.Angles(0,0,math.rad(-90))})
	tween(rul2,"Sine","Out",0.1,{["C0"] = orul2 * CFrame.Angles(0,0,math.rad(-90))})
end

function spin()
	if attacking then return end
	flying = true
	attacking = true
	--editws = false
	movelegs = false
	tween(hum,"Sine","InOut",0.2,{["WalkSpeed"] = 0})
	repeat
		movelegs = false
		unravel()
		if fdown == false then flying = false end
		hum.HipHeight = 1 + math.sin(csine)/2
		rstep:Wait(0)
		rstep:Wait(0)
		rstep:Wait(0)
		bv.MaxForce = Vector3.new(0,2000,0)
		bv.Velocity = Vector3.new(0,50,0)
		local t = tween(cmotor, "Sine","Out",0.15,{
			["C0"] = cmotor.C0 * CFrame.Angles(0,2,0)
		})
		local sfx = woosh()
		sfx.Volume = 0.02
		sfx.PlaybackSpeed = sfx.PlaybackSpeed - 0.2
		spawn(function()
			AOE2(15, 3, (hrp.CFrame).p)
		end)
	until
		fdown == false
	bv.MaxForce = Vector3.new(0,0,0)
	tween(cmotor, "Sine","Out",0.5,{
		["C0"] = cm0
	})
	
	movelegs = true
	attacking = false
	flying = false
	--editws = true
end




function base()
	if flying or attacking then return end
	attacking = true
	editws = false
	movelegs = false
	tween(hum,"Sine","InOut",0.2,{["WalkSpeed"] = 0})
	
	woosh()
	tween(lll,"Sine","InOut",0.2,{["C0"] = olll * CFrame.Angles(0,0,0)})
	tween(lul,"Sine","InOut",0.2,{["C0"] = olul})
	tween(rll,"Sine","InOut",0.2,{["C0"] = orll * CFrame.Angles(0,0,0)})
	tween(rul,"Sine","InOut",0.2,{["C0"] = orul})
	
	tween(lll2,"Sine","InOut",0.2,{["C0"] = olll2 * CFrame.Angles(0,0,0)})
	tween(lul2,"Sine","InOut",0.2,{["C0"] = olul2 * CFrame.Angles(0,0,0)})
	tween(rll2,"Sine","InOut",0.2,{["C0"] = orll2 * CFrame.Angles(0,0,0)})
	tween(rul2,"Sine","InOut",0.2,{["C0"] = orul2 * CFrame.Angles(0,0,0)})
	wait(0.2)
	
	spawn(function()
		wait(0.08)
		hardhit()
		AOE2(5, 20, (hrp.CFrame * CFrame.new(0,-3,5)).p)
	end)
	wait(0.15)
	movelegs = true
	attacking = false
	editws = true
end
        ]==],
    },
    {
        name = "Brock.lua",
        code = [==[
script.Parent=nil
--- shortcuts
v3 = Vector3.new
cn = CFrame.new
ca2 = CFrame.Angles
mf = math.floor
mran = math.random
mrad = math.rad
mdeg = math.deg
ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 
mran2 = function(a,b) return mran(a*1000,b*1000)/1000 end 
ud=UDim2.new
bn = BrickColor.new
c3 = Color3.new
-----
--Player='Diitto'
Players=game:service'Players'
Player=Players.LocalPlayer --[Player] 
PChar=Player.Character

as,so={},{'metal','Block','Slash','Slash2','Hit','Kick'}
as.corner='11294911'
as.cone='1033714'
as.ring="3270017"
as.Chakram='47260990'
as.ring2='18430887'
as.blast='20329976'
as.missile='10207677'
as.fire='2693346'
as.boom='3264793'
as.slash='10209645'
as.abscond='2767090'
as.firelaser='13775494'
as.diamond='9756362'
as.metal='rbxasset://sounds\\unsheath.wav'
as.Block = 'rbxasset://sounds\\metal.ogg'
as.Slash = '10209645'
as.Slash2 = '46760716'
as.Hit='10209583'
as.Kick='46153268'
as.cast='2101137'
as.rockhead= '21629626'
as.rockheadt='21629620'


for i,v in pairs(as) do 
if type(tonumber(v:sub(1,3)))=="number" then
as[i]="http://www.roblox.com/asset/?id="..v
end
end

LastMade=nil
iNew=function(tab)
local v=Instance.new(tab[1])
for Ind,Val in pairs(tab) do
if Ind~=1 and Ind~=2 then 
v[Ind] = Val
end
end
v.Parent=tab[2]==0 and LastMade or tab[2]
LastMade=v
return v
end
iPart=function(tab)
local v=Instance.new(tab.type or 'Part')
if tab.type~='CornerWedgePart' then v.formFactor='Custom' end
v.TopSurface=0 v.BottomSurface=0
if tab.sc then
v.Size=v3(tab[2]*tab.sc,tab[3]*tab.sc,tab[4]*tab.sc)
else
v.Size=v3(tab[2],tab[3],tab[4])
end
if tab.co then v.BrickColor=bn(tab.co) end
if tab.tr then v.Transparency=tab.tr end
if tab.rf then v.Reflectance=tab.rf end
if tab.can then v.CanCollide=tab.can end
if tab.cf then v.CFrame=tab.cf end
if tab.an then v.Anchored=tab.an end
if tab.na then v.Name=tab.na end
if tab.ma then v.Material=tab.ma end
v.Parent=tab[1]
v:BreakJoints()
LastMade=v
return v
end
function getoutline(x,z,i)
return math.sqrt(x^2+z^2)+(i or 0.05),mdeg(math.atan2(x,z))
end
function v32(cf)
local x,y,z=cf:toEulerAnglesXYZ()
return v3(mdeg(x),mdeg(y),mdeg(z))
end
WeldLib={}
function GetWeld(weld,CO) 
if not WeldLib[weld] then 
local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
end 
return weld['C'..CO].p,WeldLib[weld][CO]
end 
function ClearWeld(weld)
if WeldLib[weld] then WeldLib[weld]=nil end 
end
function TweenNum(i,loops,i1,i2,smooth)
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local ton
if i1 > i2 then 
ton = -math.abs(i1 - i2) *perc 
else 
ton = math.abs(i1 - i2) *perc 
end 
return i1+ton
end
function TweenV3(i,loops,v1,v2,smooth)
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local tox2,toy2,toz2 = 0,0,0 
if v1.x > v2.x then 
tox2 = -math.abs(v1.x - v2.x) *perc 
else 
tox2 = math.abs(v1.x - v2.x) *perc 
end 
if v1.y > v2.y then 
toy2 = -math.abs(v1.y - v2.y) *perc 
else 
toy2 = math.abs(v1.y - v2.y) *perc 
end 
if v1.z > v2.z then 
toz2 = -math.abs(v1.z - v2.z) *perc 
else 
toz2 = math.abs(v1.z - v2.z) *perc 
end
return v3(v1.x + tox2,v1.y + toy2,v1.z + toz2)
end
function TweenCF(i,loops,origpos,origangle,nextpos,nextangle,smooth) 
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local tox,toy,toz = 0,0,0 
if origangle.x > nextangle.x then tox = -math.abs(origangle.x - nextangle.x) *perc 
else tox = math.abs(origangle.x - nextangle.x) *perc end 
if origangle.y > nextangle.y then toy = -math.abs(origangle.y - nextangle.y) *perc 
else toy = math.abs(origangle.y - nextangle.y) *perc end 
if origangle.z > nextangle.z then toz = -math.abs(origangle.z - nextangle.z) *perc 
else toz = math.abs(origangle.z - nextangle.z) *perc end 
local tox2,toy2,toz2 = 0,0,0 
if origpos.x > nextpos.x then 
tox2 = -math.abs(origpos.x - nextpos.x) *perc 
else tox2 = math.abs(origpos.x - nextpos.x) *perc end 
if origpos.y > nextpos.y then 
toy2 = -math.abs(origpos.y - nextpos.y) *perc 
else toy2 = math.abs(origpos.y - nextpos.y) *perc end 
if origpos.z > nextpos.z then 
toz2 = -math.abs(origpos.z - nextpos.z) *perc 
else toz2 = math.abs(origpos.z - nextpos.z) *perc end
return cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
function SetWeld(weld,CO,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
loops=math.floor(loops)
smooth = smooth or 1 
if not WeldLib[weld] then 
local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
end 
local perc =smooth==1 and math.sin((math.pi/2)/loops*i) or i/loops 
--print(weld.Part1)
local tox,toy,toz = 0,0,0 
tox = origangle.x > nextangle.x and -math.abs(origangle.x - nextangle.x) *perc or math.abs(origangle.x - nextangle.x) *perc 
toy = origangle.y > nextangle.y and -math.abs(origangle.y - nextangle.y) *perc or math.abs(origangle.y - nextangle.y) *perc 
toz = origangle.z > nextangle.z and -math.abs(origangle.z - nextangle.z) *perc or math.abs(origangle.z - nextangle.z) *perc 
local tox2,toy2,toz2 = 0,0,0 
tox2= origpos.x > nextpos.x and -math.abs(origpos.x - nextpos.x) *perc or math.abs(origpos.x - nextpos.x) *perc 
toy2= origpos.y > nextpos.y and -math.abs(origpos.y - nextpos.y) *perc or math.abs(origpos.y - nextpos.y) *perc
toz2= origpos.z > nextpos.z and -math.abs(origpos.z - nextpos.z) *perc or math.abs(origpos.z - nextpos.z) *perc 
WeldLib[weld][CO] = v3(origangle.x + tox,origangle.y + toy,origangle.z + toz)
weld['C'..CO] = cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
function se(Key,Text) 
local Values = {} 
for value in (Text..Key):gmatch("(.-)"..Key) do 
table.insert(Values,value)
end 
local Values2={}
for i,v in pairs(Values) do Values2[i]=Values[i]:lower() end
return Values,Values2
end
findplayer=function(nn)
if not nn then return nil end 
local found 
for i,v in pairs(Players:GetPlayers()) do 
if string.find(v.Name:lower(),nn:lower()) and not found then found=v end 
end
return found
end
LoopFunctions={}
iLoopFunctions=-9000
function DoLoop(times,func)
iLoopFunctions=iLoopFunctions+1
LoopFunctions[tonumber(iLoopFunctions)]={times,0,func}
end
function MeshEffect(times,cf1,cf2,scale1,scale2,tr1,tr2,col,type)
local cf2=cf2 or cf1
local v=iPart{Char,0.2,0.2,0.2,co=col,cf=cf1,na='Mesh',an=true,ca=false,tr=tr1} 
local mesh=iNew{'SpecialMesh',v,Scale=scale1}
if type=='Brick' or type=='Sphere' then 
mesh.MeshType=type
else
mesh.MeshId=type
end
local x1,y1,z1 = cf1:toEulerAnglesXYZ()
local x2,y2,z2 = cf2:toEulerAnglesXYZ()
local count=0
DoLoop(times,function(i) count=count+1 
mesh.Scale=TweenV3(count,times,scale1,scale2,1)*((type=='Brick' or type=='Sphere') and 5 or 1)
v.Transparency=TweenNum(count,times,tr1,tr2,1) 
v.CFrame=TweenCF(count,times,cf1.p,v3(mdeg(x1),mdeg(y1),mdeg(z1)),cf2.p,v3(mdeg(x2),mdeg(y2),mdeg(z2)),1) 
if i==1 then v:Remove() end end)
end
Dmgv={8,16}
HitDebounce={}
Damage=function(Hum,Mult,Sound) 
if not Hum or Hum.Parent==Char then return end 
if not Hum.Parent:findFirstChild'Torso' then return end 
local HName=Hum.Parent.Name
if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 
HitDebounce[HName]=tick()+0.2
local Mult=Mult or 1
local Dealt=mran(Dmgv[1],Dmgv[2])*Mult
local col=''
if Hum.Parent:findFirstChild'Block' and Hum.Parent.Block.Value>0 then 
Hum.Parent.Block.Value=Hum.Parent.Block.Value-1
col='Bright blue'
else
Hum.Health=Hum.Health-Dealt
col='Bright red'
end
if Sound then so[col=='Bright blue' and 'Block' or 'Hit']:Play() end
local DoH=iNew{'Model',Char,Name=col=='Bright blue' and 'Block' or Dealt}
iNew{'Humanoid',DoH,MaxHealth=1/0,Health=1/0,Name=''}
local Doh=iPart{DoH,0.6,0.2,0.6,co=col,an=true} Doh.Name='Head' iNew{'CylinderMesh',Doh}
local dofs=Hum.Parent.Torso.CFrame*cn(mran2(-1.5,1.5),2.5,mran2(-1,1)) Doh.CFrame=dofs
DoLoop(40,function(i) Doh.CFrame=dofs*cn(0,i*2,0) Doh.Transparency=i-0.5 if i==1 then DoH:Remove() end end)
end
AOEFind = function(pos,ra,f,f2) -- range get 
local p0,p1=pos-v3(ra/2,ra/2,ra/2),pos+v3(ra/2,ra/2,ra/2)
pcall(function()
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),nil,100)) do 
local Hum=v.Parent:findFirstChild'Humanoid' 
if v.Name=='Torso' and Hum and Hum.Health>0 and v.Parent~=Char then
pcall(function() f(Hum,v) end) 
elseif f2 and not Hum then 
pcall(function() f2(v) end) 
end 
end
end) 
end 
function FindSurface(part, position) 
local obj = part.CFrame:pointToObjectSpace(position) 
local siz = part.Size/2 
for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
local vec = Vector3.FromNormalId(v) 
local wvec = part.CFrame:vectorToWorldSpace(vec) 
local vz = (obj)/(siz*vec) 
if (math.abs(vz.X-1) < 0.01 or math.abs(vz.Y-1) < 0.01 or math.abs(vz.Z-1) < 0.01) then
return wvec,vec 
end 
end 
if part.className == "WedgePart" then 
return part.CFrame:vectorToWorldSpace(Vector3.new(0,0.707,-0.707)), Vector3.new(0,0.707,-0.707) 
end 
end
function FaceBG(pos)
BG.maxTorque=v3(1,1,1)/0
BG.cframe=cn(Torso.Position,v3(pos.x,Torso.Position.y,pos.z))*cn(0,0,-1)
end
ray = function(Pos, Dir,tab,length) -- ray cast
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *(length or 999)),tab) 
end 
function Projectile(ofs,speed,part,adj,fhit,fnohit)
part.CFrame=ofs*adj
local stop=false
DoLoop(50,function(x) 
local i=x
if not stop then 
local hit,pos=ray(ofs.p,ofs.p-ofs*cn(0,0,-1).p,Char,speed+1)
if hit then 
--Hit
if fhit then i=1 stop=true
----
local cof=FindSurface(hit,pos)
--iPart{workspace,2,2,0.2,cf=cn(pos,pos+cof),an=true,co='Black'}
----
local x,y,z=ofs:toEulerAnglesXYZ()
ofs=cn(pos)*ca(mdeg(x),mdeg(y),mdeg(z))*cn(0,0,-part.Size.y/2)
part.CFrame=ofs*adj
fhit(hit,pos) end 
else
ofs=ofs*cn(0,0,speed)
part.CFrame=ofs*adj
end
if i==1 then 
if fnohit then fnohit(ofs.p) else part:Remove() end
end 
end
end)
end

CC={'','Bright yellow','Flame reddish orange'}
Scale=5
Mat='Marble'

SpawnPoint=PChar.Torso.CFrame*cn(0,1+Scale*3,-20-Scale*1.5)
name='Brock'
pcall(function() _G.OldMod00:Remove() end)

---------------
UNDYING=function()
pcall(function() fUNDYING:disconnect() end)
pcall(function() local hum=Grabbing.Part1.Parent.Humanoid Grabbing:Remove() Grabbing=nil hum.PlatformStand=false end)
Torso.Anchored=true Torso.Transparency=1 Torso.CanCollide=false
Stand:Remove() Head:Remove()
local RespawnPos=cn(Torso.CFrame.p+v3(0,Scale*5,0))*ca(0,mran(-360,360),0)
wait(4)
Anim='Reviving'
local oldChar=Char
local oldRootLimbs=RootLimbs
for i,v in pairs(oldRootLimbs) do v.Anchored=true end
fMarble(Char,function(v) v.Anchored=true end) 
MakeAI(RespawnPos) Anim='Reviving' 
fMarble(Char,function(v) v.Transparency=1 end) 
for i,v in pairs(RootLimbs) do v.Transparency=1 end 
wait(0.1) Torso.Anchored=true
local Reconstruct={} 
fMarble(oldChar,function(v) 
local x1,y1,z1=v.CFrame:toEulerAnglesXYZ() 
local x2,y2,z2=Char[v.Parent.Name][v.Name].CFrame:toEulerAnglesXYZ()
Reconstruct[#Reconstruct+1]={v,Char[v.Parent.Name][v.Name],v.Position,v3(mdeg(x1),mdeg(y1),mdeg(z1)),v3(mdeg(x2),mdeg(y2),mdeg(z2))} end) 
for i,v in pairs(oldRootLimbs) do 
local x1,y1,z1=v.CFrame:toEulerAnglesXYZ() 
local x2,y2,z2=Char[v.Name].CFrame:toEulerAnglesXYZ()
Reconstruct[#Reconstruct+1]={v,Char[v.Name],v.Position,v3(mdeg(x1),mdeg(y1),mdeg(z1)),v3(mdeg(x2),mdeg(y2),mdeg(z2))} end
local tweens=100
for tween=1,tweens do 
for i,v in pairs(Reconstruct) do v[1].CFrame=TweenCF(tween,tweens,v[3],v[4],v[2].Position,v[5],1)*ca(360*(tween/tweens),720*(tween/tweens),0) end
wait()
end
oldChar:Remove()
fMarble(Char,function(v) v.Transparency=0 end)
for i,v in pairs(RootLimbs) do v.Transparency=0 end
Torso.Anchored=false wait()
BG.maxTorque=v3(1,1,1)/0 BG.cframe=Torso.CFrame
ReturnAnim()
wait(2)
BG.maxTorque=nov3
Anim,ArmAnim,LegAnim='None','None','None'
end
------

function MakeAI(SpawnPoint2)
Char=iNew{'Model',workspace,Name=name,archivable=false} _G.OldMod00=Char
Torso=iPart{Char,2,2,1,sc=Scale,co=CC[1],cf=SpawnPoint2,na='Torso'} 
pTorso=iPart{Char,2,2,1,sc=Scale,co=CC[1],cf=SpawnPoint2,na='pTorso'} 
Head=iPart{Char,1,1,1,sc=Scale,co=CC[1],na='Head'} 
pHead=iPart{Char,1,1,1,sc=Scale,co=CC[1],na='pHead'} iNew{'SpecialMesh',pHead,Scale=v3(1,1,1)*Scale/1.4,VertexColor=v3(1,1,1)/1.65,MeshId=as.rockhead,TextureId=as.rockheadt}
Stand=iPart{Char,1.5,2.9,1.1,sc=Scale,co=CC[1],na='Stand'}

for i,n in pairs(so) do 
local v=iNew{'Sound',Torso,Volume=1,Pitch=1,Looped=false,Name=v,SoundId=as[n]}
so[n]=v
end


LSho=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LSho'} 
LArm=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LArm'} 

RSho=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RSho'} 
RArm=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RArm'} 

LThi=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LThi'} 
LLeg=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LLeg'} 

RThi=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RThi'} 
RLeg=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RLeg'} 



nov3=v3(0,0,0)
Marble={}
MarbleSpeed=0.2
MarbleMax=12
for i,v in pairs({pTorso,LSho,RSho,LArm,RArm,LThi,RThi,LLeg,RLeg}) do 
v.Material=Mat 
local VS=v.Size
local va=1.2
--v.Size=v.Size/1.5
local vv=v:Clone()
for x=-1,1,2 do 
for y=-1,1,2 do 
for z=-1,1,2 do
local marb=vv:Clone() marb.Size=VS/mran2(1.8,2.2) marb.Parent=v marb.Name=x..y..z
local wmarb=iNew{'Weld',marb,Part0=v,Part1=marb,C0=cn(VS.x/4*x/va,VS.y/4*y,VS.z/4*z/va)*ca(mran(-MarbleMax,MarbleMax),mran(-MarbleMax,MarbleMax),mran(-MarbleMax,MarbleMax))}
Marble[#Marble+1]={wmarb,mran(-1,1),mran(-1,1),mran(-1,1)}
end end end 
iNew{'BlockMesh',v,Scale=v3(1,1,1)/1.5}
v.Transparency=0 --.995
end 

for i,v in pairs(Char:children()) do if v:IsA'BasePart' and v.Name~='Torso' then v.CFrame=Torso.CFrame end end

Head.Transparency=0.99
Head.CanCollide=false
Neck=iNew{'Weld',Torso,Part0=Torso,Part1=Head,C0=cn(0,0,0)}
pNeck=iNew{'Weld',Torso,Part0=pTorso,Part1=pHead,C0=cn(0,1.5*Scale,0)}
Hum=iNew{'Humanoid',Char} 


Torso.Transparency=1
wTorso=iNew{'Weld',Torso,Part0=Torso,Part1=pTorso,C0=cn(0,-2.5*Scale,0)*ca(0,0,0)}
oTorso=cn(0,0,0)

Stand.Transparency=1
wStand=iNew{'Weld',Torso,Part0=Torso,Part1=Stand,C0=cn(0,-2.5*Scale,0)}

wLSho=iNew{'Weld',LSho,Part0=pTorso,Part1=LSho,C0=cn(-1.5*Scale,0.75*Scale,0),C1=cn(0,0.25*Scale,0)}
wLArm=iNew{'Weld',LArm,Part0=LSho,Part1=LArm,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wRSho=iNew{'Weld',RSho,Part0=pTorso,Part1=RSho,C0=cn(1.5*Scale,0.75*Scale,0),C1=cn(0,0.25*Scale,0)}
wRArm=iNew{'Weld',RArm,Part0=RSho,Part1=RArm,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wLThi=iNew{'Weld',LThi,Part0=pTorso,Part1=LThi,C0=cn(-0.5*Scale,-1*Scale,0),C1=cn(0,0.75*Scale,0)}
wLLeg=iNew{'Weld',LLeg,Part0=LThi,Part1=LLeg,C0=cn(1,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wRThi=iNew{'Weld',RThi,Part0=pTorso,Part1=RThi,C0=cn(0.5*Scale,-1*Scale,0),C1=cn(0,0.75*Scale,0)}
wRLeg=iNew{'Weld',RLeg,Part0=RThi,Part1=RLeg,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wLSho.C0=cn(-1.5*Scale,0.75*Scale,0)*ca(0,0,-135) --a,b
wLArm.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --c,d
wRSho.C0=cn(1.5*Scale,0.75*Scale,0)*ca(0,0,135) --e,f
wRArm.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --g,h
----
wLThi.C0=cn(-0.5*Scale,-1*Scale,0)*ca(0,0,-45) --i,j
wLLeg.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --k,l
wRThi.C0=cn(0.5*Scale,-1*Scale,0)*ca(0,0,45) --m,n
wRLeg.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --o,p

BG=iNew{'BodyGyro',Torso,maxTorque=nov3}
BP=iNew{'BodyPosition',Torso,maxForce=nov3}
fUNDYING=Hum.Died:connect(UNDYING)
LimbNames={'LSho','RSho','LArm','RArm','RThi','LThi','RLeg','LLeg'}
for i=1,8 do local v=LimbNames[i] LimbNames[v]=getfenv()["w"..v] end 
RootLimbs={pHead,pTorso,LSho,RSho,LArm,RArm,RThi,LThi,RLeg,LLeg}
Anim,LegAnim,ArmAnim='Sit','Sit','Sit'
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
SetWeld(wLSho,0,1,1,a,b,v3(-1.5*Scale,0.5*Scale,0),v3(0,0,-10),1) 
SetWeld(wLArm,0,1,1,c,d,v3(0,-0.75*Scale,0),v3(10,0,10),1)
SetWeld(wRSho,0,1,1,e,f,v3(1.5*Scale,0.5*Scale,0),v3(0,0,10),1)
SetWeld(wRArm,0,1,1,g,h,v3(0,-0.75*Scale,0),v3(10,0,-10),1) 
SetWeld(wLThi,0,1,1,i,j,v3(-0.5*Scale,-1*Scale,0),v3(15,0,-5),1) 
SetWeld(wLLeg,0,1,1,k,l,v3(0,-0.75*Scale,0),v3(-15,0,5),1)
SetWeld(wRThi,0,1,1,m,n,v3(0.5*Scale,-1*Scale,0),v3(15,0,5),1) 
SetWeld(wRLeg,0,1,1,o,p,v3(0,-0.75*Scale,0),v3(-15,0,-5),1)
Oa,Ob,Oc,Od,Oe,Of,Og,Oh,Oi,Oj,Ok,Ol,Om,On,Oo,Op=GetPose() 
SetWeld(wLSho,0,1,1,nov3,nov3,a,b,1) 
SetWeld(wLArm,0,1,1,nov3,nov3,c,d,1)
SetWeld(wRSho,0,1,1,nov3,nov3,e,f,1)
SetWeld(wRArm,0,1,1,nov3,nov3,g,h,1) 
SetWeld(wLThi,0,1,1,nov3,nov3,i,j,1) 
SetWeld(wLLeg,0,1,1,nov3,nov3,k,l,1)
SetWeld(wRThi,0,1,1,nov3,nov3,m,n,1) 
SetWeld(wRLeg,0,1,1,nov3,nov3,o,p,1)
end

function GetPose() 
local a,b=GetWeld(wLSho,0) 
local c,d=GetWeld(wLArm,0)
local e,f=GetWeld(wRSho,0)
local g,h=GetWeld(wRArm,0) 
local i,j=GetWeld(wLThi,0)
local k,l=GetWeld(wLLeg,0)
local m,n=GetWeld(wRThi,0)
local o,p=GetWeld(wRLeg,0)
local q,r=GetWeld(wTorso,0)
return a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r
end

MakeAI(SpawnPoint)

ASpeed=28
coroutine.resume(coroutine.create(function()
SetWeld(wLSho,0,1,1,nov3,nov3,wLSho.C0.p,v3(45,0,-10),1) 
SetWeld(wLArm,0,1,1,nov3,nov3,wLArm.C0.p,v3(45,0,10),1)
SetWeld(wRSho,0,1,1,nov3,nov3,wRSho.C0.p,v3(45,0,10),1) 
SetWeld(wRArm,0,1,1,nov3,nov3,wRArm.C0.p,v3(45,0,-10),1) 
SetWeld(wLThi,0,1,1,nov3,nov3,v3(-0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,-12),1) 
SetWeld(wLLeg,0,1,1,nov3,nov3,wLLeg.C0.p,v3(-70,0,12),1) 
SetWeld(wRThi,0,1,1,nov3,nov3,v3( 0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,12),1) 
SetWeld(wRLeg,0,1,1,nov3,nov3,wRLeg.C0.p,v3(-70,0,-12),1) 
SetWeld(wTorso,0,1,1,oTorso,nov3,v3(0,-3*Scale,0),nov3,1)
wait(1)
Anim='Standing'
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
for x=1,ASpeed do 
SetWeld(wTorso,0,x,ASpeed,wTorso.C0.p,nov3,oTorso,nov3,1) 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.5*Scale,0.5*Scale,0),v3(0,0,-10),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,v3(0,-0.75*Scale,0),v3(10,0,10),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3(1.5*Scale,0.5*Scale,0),v3(0,0,10),1)
SetWeld(wRArm,0,x,ASpeed,g,h,v3(0,-0.75*Scale,0),v3(10,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,v3(-0.5*Scale,-1*Scale,0),v3(15,0,-5),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,v3(0,-0.75*Scale,0),v3(-15,0,5),1)
SetWeld(wRThi,0,x,ASpeed,m,n,v3(0.5*Scale,-1*Scale,0),v3(15,0,5),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,v3(0,-0.75*Scale,0),v3(-15,0,-5),1)
wait() 
end 
ArmAnim='None'
LegAnim='None'
Anim='None'
end))
--Target=PChar
function Stay(bool,cff)
BG.maxTorque=bool and v3(1,1,1)/0 or nov3 BG.cframe=cff or Torso.CFrame
BP.maxForce=BG.maxTorque BP.position=Torso.Position
end
function fMarble(Ch,func)
for i,v in pairs(Ch:children()) do 
for x=-1,1,2 do 
for y=-1,1,2 do 
for z=-1,1,2 do 
if v:findFirstChild(x..y..z) then func(v[x..y..z]) end
end end end 
end
end
function ReturnAnim()
local ne1,ne2=GetWeld(pNeck,0)
local wt1,wt2=GetWeld(wTorso,0)
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,a,b,Oa,Ob,1) 
SetWeld(wLArm,0,x,ASpeed,c,d,Oc,Od,1)
SetWeld(wRSho,0,x,ASpeed,e,f,Oe,Of,1) 
SetWeld(wRArm,0,x,ASpeed,g,h,Og,Oh,1) 
SetWeld(wLThi,0,x,ASpeed,i,j,Oi,Oj,1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,Ok,Ol,1) 
SetWeld(wRThi,0,x,ASpeed,m,n,Om,On,1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,Oo,Op,1) 
SetWeld(wTorso,0,x,ASpeed,wt1,wt2,oTorso,nov3,1) 
SetWeld(pNeck,0,x,ASpeed,ne1,ne2,v3(0,1.5,0)*Scale,nov3,1)
wait()
end
end

ChatConnection=Player.Chatted:connect(function(msg)
coroutine.resume(coroutine.create(function()
if not Char.Parent then return end
local Sep,sep=se(';',msg)
local p1,p2=findplayer(Sep[2]),findplayer(Sep[3])
local cmd=sep[1]
--print(Sep[1])
--print(LimbNames[Sep[1]])
Tt=(p1 and p1.Character and p1.Character:findFirstChild'Torso') and p1.Character.Torso or nil
if cmd=='sit' and (Anim=='None' or Anim=='Follow') then 
Anim='Sitting'
Hum:MoveTo(Torso.Position,Torso)
LegAnim,ArmAnim='Sit','Sit'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(45,0,-10),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(45,0,10),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(45,0,10),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(45,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,-12),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(-70,0,12),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3( 0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,12),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(-70,0,-12),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-3*Scale,0),nov3,1) 
wait()
end
Anim='Sit'
elseif (cmd=='stand' or cmd=='stop') and (Anim=='Roll' or Anim=='Sit' or Anim=='Follow' or Anim=='Form' or Anim=='Dance' or Anim=='Grab') then 
if Anim=='Sit' or Anim=='Form' or Anim=='Dance' or Anim=='Roll' then 
Anim='Returning'
ReturnAnim()
else
Target=nil
wait(0.2)
Hum:MoveTo(Torso.Position,Torso)
end
LegAnim,ArmAnim,Anim='None','None','None'
elseif cmd=='follow' and Tt and Anim=='None' then 
Anim='Follow'
Target=p1.Character
elseif cmd=='shoot' and Tt and RArm['1-11'].Transparency~=1 and ArmAnim=='None' then 
Target=p1.Character
ArmAnim='Shoot'
FaceBG(Tt.Position)
wait(0.1) 
local cff=cn(pTorso.CFrame.p,v3(Tt.Position.x,pTorso.Position.y,Tt.Position.z))
local ofs=cff:toObjectSpace(cn(cff*cn(1.5*Scale,0.5*Scale,0).p,Tt.CFrame*cn(0,2,0).p)*ca(90,0,0)*cn(0,-0.25*Scale,0))
local x,y,z=ofs:toEulerAnglesXYZ() 
local rot=v3(mdeg(x),mdeg(y),mdeg(z))
for q=1,ASpeed do 
SetWeld(wRArm,0,q,ASpeed,Og,Oh,Og,nov3,1)
SetWeld(wRSho,0,q,ASpeed,Oe,Of,ofs.p,rot,1)
SetWeld(wRSho,1,q,ASpeed,v3(0,0.25*Scale,0),nov3,nov3,nov3,1) 
wait()
end
for y=-1,1,2 do for x=-1,1,2 do for z=-1,1,2 do 
local new=RArm[x..y..z]:Clone() new.Parent=RArm game.Debris:AddItem(new,8) new.Touched:connect(function(hit) Damage(hit.Parent:findFirstChild'Humanoid') end)
new.CFrame=RArm[x..y..z].CFrame*cn(0,-Scale*1.5,0) new.CanCollide=true new.Velocity=cn(new.Position,Target.Torso.Position).lookVector*((new.Position-Target.Torso.Position).magnitude*20+900)
RArm[x..y..z].Transparency=1 so.Block:Play() wait(0.06)
end end end
RArm.Transparency=1
delay(1,function() 
for x=-1,1,2 do for y=-1,1,2 do for z=-1,1,2 do local new=RArm[x..y..z]:Clone() new.Transparency=0 new.CanCollide=false new.Name='f'..new.Name new.Parent=RArm new.CFrame=RArm.CFrame*cn(Scale*x*2,Scale*-3,Scale*z*2)
iNew{'BodyPosition',new,maxForce=v3(1,1,1)/0,position=RArm[x..y..z].Position} wait(0.14) end end end
DoLoop(35,function(i) for x=-1,1,2 do for y=-1,1,2 do for z=-1,1,2 do RArm['f'..x..y..z].BodyPosition.position=RArm[x..y..z].Position if i==1 then RArm['f'..x..y..z]:Remove() RArm[x..y..z].Transparency=0 RArm.Transparency=0 end end end end end)
end)
for q=1,ASpeed do 
SetWeld(wRArm,0,q,ASpeed,Og,nov3,Og,Oh,1)
SetWeld(wRSho,0,q,ASpeed,ofs.p,rot,Oe,Of,1) 
SetWeld(wRSho,1,q,ASpeed,nov3,nov3,v3(0,0.25*Scale,0),nov3,1) 
wait()
end
BG.maxTorque=nov3
ArmAnim='None'
elseif cmd=='slam' and (Anim=='None' or Anim=='Follow') and Tt then 
Target=p1
local lTt=Tt
Anim='Follow'
repeat Hum:MoveTo(Tt.Position+v3(0.5,0.5,0.5),Tt) wait(0.2) until lTt~=Tt or (Tt.Position-pTorso.Position).magnitude<10+Scale*5.5 or Anim~='Follow'
if Anim~='Follow' then BG.maxTorque=nov3 return end 
if lTt~=Tt then return end 
Anim,LegAnim,ArmAnim='Slam','',''
Hum:MoveTo(Torso.Position,Torso)
FaceBG(Tt.Position) 
Stay(true,BG.cframe)
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
ASpeed2=15
for x=1,ASpeed2 do 
SetWeld(wLSho,0,x,ASpeed2,a,b,Oa,v3(180,0,0),1) 
SetWeld(wRSho,0,x,ASpeed2,e,f,Oe,v3(180,0,0),1) 
SetWeld(wTorso,0,x,ASpeed2,nov3,nov3,v3(0,3,0)*Scale,nov3,1) 
wait()
end
for x=1,ASpeed2 do 
SetWeld(wTorso,0,x,ASpeed2,v3(0,3,0)*Scale,nov3,v3(0,-3*Scale+2.5,-6*Scale),v3(-89,0,0),1) 
wait()
end
AOEFind(pTorso.Position,6.5*Scale,function(Hum) Damage(Hum,3,true) Hum.Sit=true end)
MeshEffect(35,Torso.CFrame*cn(0,-3.5*Scale,-6*Scale)*ca(90,0,0),nil,v3(2,2,1)*Scale,v3(12,12,5)*Scale,0.2,1,'Light stone grey',as.ring)
wait(0.5)
for x=1,ASpeed do 
SetWeld(wTorso,0,x,ASpeed,v3(0,-3*Scale+2.5,-6*Scale),v3(-90,0,0),nov3,nov3,1) 
SetWeld(wLSho,0,x,ASpeed,Oa,v3(180,0,0),Oa,Ob,1) 
SetWeld(wRSho,0,x,ASpeed,Oe,v3(180,0,0),Oe,Of,1) 
wait()
end
Stay(false)
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='boulder' and Anim=='None' then 
Target=p1.Character
Anim,LegAnim,ArmAnim='','',''
Stay(true)
FaceBG(Tt.Position)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(135,0,0),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,0),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(135,0,0),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5,-0.5,0.25)*Scale,v3(45,0,-15),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3( 0.5,-0.5,0.25)*Scale,v3(45,0,15),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(0,0,0),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-1.5,-1.5)*Scale,v3(-90,0,0),1) 
wait()
end
wait(0.2)
local boulder=iPart{Char,1,1,1,type='WedgePart'} boulder.Material=Mat 
local wm=iNew{'SpecialMesh',boulder,Scale=v3(4,3,4)*Scale,MeshType='Wedge'}
local wb=iNew{'Weld',boulder,Part0=RArm,Part1=boulder,C0=cn(-1.5*Scale,-2.3*Scale,0)*ca(180,180,0)}
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed*2 do 
SetWeld(wLSho,0,x,ASpeed*2,a,b,a,v3(225,0,0),1) 
SetWeld(wLArm,0,x,ASpeed*2,c,d,c,v3(45,0,0),1)
SetWeld(wRSho,0,x,ASpeed*2,e,f,e,v3(225,0,0),1) 
SetWeld(wRArm,0,x,ASpeed*2,g,h,g,v3(45,0,0),1) 
SetWeld(wLThi,0,x,ASpeed*2,i,j,Oi,v3(0,0,-15),1) 
SetWeld(wLLeg,0,x,ASpeed*2,k,l,k,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed*2,m,n,Om,v3(0,0,15),1) 
SetWeld(wRLeg,0,x,ASpeed*2,o,p,o,v3(0,0,0),1) 
SetWeld(wTorso,0,x,ASpeed*2,q,r,nov3,nov3,1) 
wait()
end
FaceBG(Tt.Position)
for x=1,ASpeed/2 do 
SetWeld(wLSho,0,x,math.floor(ASpeed/2),a,v3(225,0,0),a,v3(90,0,0),1) 
SetWeld(wLArm,0,x,math.floor(ASpeed/2),c,v3(45,0,0),c,v3(45,0,0),1)
SetWeld(wRSho,0,x,math.floor(ASpeed/2),e,v3(225,0,0),e,v3(90,0,0),1) 
SetWeld(wRArm,0,x,math.floor(ASpeed/2),g,v3(45,0,0),g,v3(45,0,0),1) 
wait()
end
local bcf=boulder.CFrame
wb:Remove()
wm:Remove() 
boulder.Size=wm.Scale 
boulder.CFrame=cn(boulder.Position,Target.Torso.Position)*cn(0,3,-1)*ca(0,180,0)
--boulder.Friction=0.1
boulder.Elasticity=0
boulder.Velocity=(boulder.CFrame*ca(0,180,0)).lookVector*((boulder.Position-Target.Torso.Position).magnitude*1+90)
boulder.RotVelocity=nov3
game.Debris:AddItem(boulder,8)
Stay(false)
ReturnAnim()
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='grab' and Tt and not Grabbing then 
Target=p1
local lTt=Tt
Anim='Follow'
repeat Hum:MoveTo(Tt.Position+v3(0.5,0.5,0.5),Tt) wait(0.2) until lTt~=Tt or (Tt.Position-Stand.CFrame*cn(0,-Stand.Size.y/2+1,-2.8*Scale).p).magnitude<10 or Anim~='Follow'
if Anim~='Follow' then BG.maxTorque=nov3 return end 
if lTt~=Tt then return end 
pcall(function() Tt.Parent.Humanoid.PlatformStand=true end)
Hum:MoveTo(Torso.Position,Torso) 
Anim,LegAnim,ArmAnim='Grab','',''
FaceBG(Tt.Position)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(-30,0,-30),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,0),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(145,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5,-0.4,0.3)*Scale,v3(70,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(-20,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3(0.5,-0.5,-0.3)*Scale,v3(135,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(-90,0,0),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-2,-1.5)*Scale,v3(-90,0,0),1) 
wait()
end
local ofs=RArm.CFrame:toObjectSpace(Tt.CFrame) 
Tt.Parent.Humanoid.PlatformStand=true 
Grabbing=iNew{'Weld',RArm,Part0=RArm,Part1=Tt,C0=ofs} 
local a,b=GetWeld(Grabbing,0) 
for x=1,ASpeed do 
SetWeld(Grabbing,0,x,ASpeed,a,b,v3(0,-0.75*Scale-1,0),v3(-90,0,0),1) 
wait()
end
Stay(false)
ReturnAnim()
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='dance' and (Anim=='None' or Anim=='Follow') then 
Hum:MoveTo(pTorso.Position,pTorso)
Anim,ArmAnim,LegAnim='Dance','Dance','Dance'
local ASpeed=math.floor(ASpeed/2)
repeat
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed do 
if Anim~='Dance' then break end 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.2,0.5,-0.25)*Scale,v3(35,0,30),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(25,0,0),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.2,0.5,-0.25)*Scale,v3(45,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(25,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,i,v3(0,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,m,v3(45,0,20),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(-45,0,-20),1) 
wait()
end
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed do 
if Anim~='Dance' then break end 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.2,0.5,-0.25)*Scale,v3(95,0,30),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(-10,0,0),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.2,0.5,-0.25)*Scale,v3(105,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(-10,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,i,v3(45,0,-20),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(-45,0,20),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,m,v3(0,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(0,0,0),1) 
wait()
end
until Anim~='Dance'
elseif cmd=='roll' and (Anim=='None' or Anim=='Follow') then 
Target=p1
local lTt=Tt
Anim,ArmAnim,LegAnim='Roll','',''
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
local n1,n2=GetWeld(pNeck,0)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.5,0.5,0)*Scale,v3(0,0,-45),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(0,0,90),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.5,0.5,0)*Scale,v3(0,0,45),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(0,0,-90),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,v3(0,1, 0.5)*Scale,v3(-30,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(60,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,v3(0,1,-0.5)*Scale,v3(30,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(-60,0,0),1) 
SetWeld(pNeck,0,x,ASpeed,n1,n2,v3(0,0,0),n2,1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-2,0)*Scale,nov3,1) 
wait()
end
tWS[2]=3
repeat 
local cf=Torso.CFrame*cn(mran2(-1,1)*Scale,-4*Scale,0.5*Scale)*ca(90+mran(-20,20),mran(-30,30),0)
MeshEffect(24,cf,cf*cn(0,4*Scale,0),v3(0.5,0.5,0.5)*Scale,v3(mran2(1,4),mran2(3,5),mran2(1,3))*Scale,0.1,1,'Dark stone grey','Brick') 
Hum:MoveTo(Tt.CFrame*cn(0,0,Scale).p,Tt) wTorso.C0=wTorso.C0*ca(-20,0,0) wait(0.035) until lTt~=Tt or (Tt.Position-Stand.CFrame*cn(0,-Stand.Size.y/2+1,-2.8*Scale).p).magnitude<6 or Anim~='Roll'
tWS[2]=1
ClearWeld(wTorso)
if Anim~='Roll' then return end 
Hum:MoveTo(Torso.Position+v3(0,1,0),Torso)
Torso.Anchored=true Torso.Velocity=nov3
local cf=Stand.CFrame*cn(0,0,-1.5*Scale)*ca(-45,0,0) --iPart{Char,1,1,1,co='Black',cf=cf,an=true}
MeshEffect(50,cf,nil,v3(3.5,3.5,2)*Scale,v3(11,11,6)*Scale,0.1,1,'White',as.ring) 
for i=1,16 do 
local cf=cf*ca(90,360*(i/16),0)*ca(45,0,0)
MeshEffect(40,cf,cf*cn(0,10*Scale,0),v3(0.2,2,0.2)*Scale,v3(1,5,1)*Scale,0.1,1,'','Sphere') 
end
AOEFind(cf.p,6.5*Scale,function(Hum,v) Damage(Hum,2,true) Hum.Sit=true v.Velocity=cn(pTorso.Position,v.Position).lookVector*50 end)
wait(0.2)
Torso.Anchored=false
ReturnAnim()
Hum:MoveTo(Torso.Position,Torso) 
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='beam' and (Anim=='None' or Anim=='Follow') then 
Anim='beam'
local che =iPart{Char,1,1,1,sc=Scale,co=CC[1],ma=Mat} local chew=iNew{'Weld',che ,Part0=pTorso,Part1=che}
local che2=iPart{che ,0.8*Scale,0.2,0.8*Scale,co='Really black'} local che2w=iNew{'Weld',che2,Part0=che,Part1=che2}
local chem=iNew{'CylinderMesh',che} iNew{'CylinderMesh',che2}
local chest,chex,i={},0,0
for x=-1,1,2 do for y=-1,1,2 do i=i+1 chest[i]={pTorso[x..y..'-1']} chest[i][2]=chest[i][1].Weld chest[i][3]=chest[i][2].C0
local xx,yy,zz=chest[i][2].C0:toEulerAnglesXYZ() chest[i][4]=v3(mdeg(xx),mdeg(yy),mdeg(zz))
chest[i][5]=cn(0.45*x*Scale,0,-0.5*Scale)*chest[i][3] chest[i][6]=chest[i][4]+v3(0,-105*x,0) end end
local len=1.75
local dochest=function(v,chexx,adj)
local p=v/ASpeed
chex=adj*p
chem.Scale=v3(1,len*p,1) 
chew.C0=ca(chexx+chex,0,0)*cn(0,len/2*p*Scale,0)
che2w.C0=cn(0,len/2*p*Scale,0)
for i=1,4 do SetWeld(chest[i][2],0,v,ASpeed,chest[i][3],chest[i][4],chest[i][5],chest[i][6],1) end 
end
for v=1,ASpeed do if Tt then FaceBG(Tt.Position) end dochest(v,-90,-45) wait() end
local beam=iPart{Char,0.7*Scale,1,0.7*Scale,co='New Yeller',an=true,tr=0.3} beamm=iNew{'CylinderMesh',beam}
for i=1,ASpeed*3 do 
local p=i/ASpeed*3
chex=90*math.sin((math.pi/2)/(ASpeed*3)*i)
chew.C0=ca(-135+chex,0,0)*cn(0,len/2*Scale,0)
local hit,pos=ray(che2.Position,che2.Position-che2.CFrame*cn(0,-1,0).p,Char)
local mag=(che2.Position-pos).magnitude local p1,p2=che2.Position+v3(mran2(-1,1),mran2(-1,1),mran2(-1,1))/3,pos+v3(mran2(-1,1),mran2(-1,1),mran2(-1,1))/3
beam.CFrame=cn(p1,p2)*cn(0,0,-mag/2)*ca(90,0,0) beamm.Scale=v3(1,mag+(Scale/3),1)
AOEFind(pos,Scale*2,function(Hum) Damage(Hum,2.5) end)
if i%2==0 then for i=1,5 do local cf=cn(pos)*ca(0,mran(-180,180),mran(-95,95)) MeshEffect(8,cf,cf*cn(0,Scale*2.2,0),v3(0.1,0.4,0.1)*Scale,v3(0.4,3,0.4)*Scale,0.2,1,CC[mran(2,3)],as.cone) end
MeshEffect(8,cn(pos),nil,v3(0.8,0.8,0.8)*Scale,v3(4,4,4)*Scale,0.2,1,CC[mran(2,3)],'Sphere') end
if Tt then FaceBG(Tt.Position) end
wait()
end
DoLoop(12,function(i) beam.Transparency=0.3+i*0.7 if i==1 then beam:Remove() end end)
for v=ASpeed,0,-1 do dochest(v,-90,45) wait() end
Stay(false)
che:Remove()
Anim='None'
---------------------------------------------------------------------------=---WWWWWWWWWWWWWWWWWW
elseif cmd=='box' and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='cart','cart'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(90,0,10),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,25),1) 
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(90,0,-10),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-25),1) 
wait()
end
Stay(true)
local spawn=RArm.CFrame*cn(0,-0.75*Scale-2,0)*ca(-90,0,0)
local des=iPart{Char,1,1,1,an=true,ma=Mat,cf=spawn,ca=false}
for i=1,6,0.2 do des.Size=v3(i,i,i) des.CFrame=spawn*cn(0,0,-i/2) wait() end
local cart=iNew{'Model',workspace,Name='Cart'}
local base=iPart{cart,4,1,5,ma=Mat,cf=des.CFrame} iNew{'BodyGyro',base}
for x=-1,1,2 do 
local new=iPart{cart,0.5,4,5,ma=Mat,cf=base.CFrame} iNew{'Weld',new,Part0=base,Part1=new,C0=cn(1.75*x,2.5,0)}
local new=iPart{cart,3.5,4,0.5,ma=Mat,cf=base.CFrame} iNew{'Weld',new,Part0=base,Part1=new,C0=cn(0,2.5,2.25*x)}
end
for i=6,0.8,-0.2 do des.Size=v3(i,i,i) des.CFrame=spawn*cn(0,0,-i/2) wait() end des:Remove()
Stay(false)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='crush' and Grabbing and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='crush','crush'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(80,0,-160),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,80),1) 
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(80,0,160),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-80),1) 
wait()
end
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
wait(0.2)
for x=1,ASpeed/2 do 
SetWeld(wLSho,0,x,ASpeed/2,a,b,Oa,v3(80,0,-14),1) 
SetWeld(wLArm,0,x,ASpeed/2,c,d,Oc,v3(0,0,80),1) 
SetWeld(wRSho,0,x,ASpeed/2,e,f,Oe,v3(80,0,14),1) 
SetWeld(wRArm,0,x,ASpeed/2,g,h,Og,v3(0,0,-80),1) 
wait()
end
MeshEffect(35,Grabbing.Part1.CFrame,nil,v3(2,2,1)*Scale,v3(7,7,3)*Scale,0.3,1,'Light stone grey',as.ring)
local crushjo=60
pcall(function() for i,v in pairs({'Neck','Left Shoulder','Right Shoulder','Left Hip','Right Hip'}) do local w=Grabbing.Part1.Parent.Torso[v] w.C1=w.C1*ca(mran(-crushjo,crushjo),mran(-crushjo,crushjo),mran(-crushjo,crushjo)) end end)
local hit=Grabbing.Part1
Grabbing:Remove() Grabbing=nil
wait(2)
pcall(function() hit.Parent.Humanoid.PlatformStand=false end)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='eat' and Grabbing and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='Eat','Eat'
for x=1,ASpeed*2 do 
SetWeld(wRSho,0,x,ASpeed*2,Oe,Of,Oe,v3(135,0,15),1) 
SetWeld(wRArm,0,x,ASpeed*2,Og,Oh,Og,v3(45,-10,-100),1) 
wait()
end
wait(1)
for x=1,40 do 
SetWeld(wRSho,0,1,1,Oe,Of,Oe,v3(135+mran(-3,3),0,15+mran(-3,3)),1) 
SetWeld(wRArm,0,1,1,Og,Oh,Og,v3(45,-10+mran(-12,12),-100+mran(-3,3)),1) 
wait(0.05)
if x%2==0 then 
local cf=Grabbing.Part1.CFrame*ca(180,mran(-180,180),mran(-40,40))*cn(0,1.5,0)
MeshEffect(24,cf,cf*cn(0,10,0),v3(0.2,2,0.2),v3(0.4,5,0.4),0.1,1,'Really red','Sphere') 
end
end
Grabbing.Part1:BreakJoints()
pcall(function() Grabbing.Part1.Parent.Head:Remove() end)
Grabbing:Remove() Grabbing=nil
wait(2)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='drop' and Grabbing then 
local hum=Grabbing.Part1.Parent.Humanoid Grabbing:Remove() Grabbing=nil hum.PlatformStand=false
elseif LimbNames[Sep[1]] and (Anim=='None' or Anim=='Form') then
Anim,ArmAnim,LegAnim='Form','Form','Form'
local v1,v2=GetWeld(LimbNames[Sep[1]],0)
local sepx=se(',',Sep[2])
for x=1,ASpeed*2 do 
SetWeld(LimbNames[Sep[1]],0,x,ASpeed*2,v1,v2,v1,v3(tonumber(sepx[1]),tonumber(sepx[2]),tonumber(sepx[3])),1) 
wait()
end
elseif cmd=='plode' then 
Char:BreakJoints() wait()
local Pressure=tonumber(sep[2]) or 50
fMarble(Char,function(v) v.Velocity=cn(Torso.Position,v.Position).lookVector*Pressure end)
for i,v in pairs(RootLimbs) do v.Velocity=cn(Torso.Position,v.Position).lookVector*Pressure end
elseif cmd=='explode' then 
iNew{'Explosion',pTorso,Position=pTorso.Position,BlastRadius=Scale*20}
elseif cmd=='goto' then
pcall(function()
Hum:MoveTo(Player:GetMouse().Hit.p,Player:GetMouse().Target) end)
elseif cmd=='newscale' and tonumber(sep[2]) then 
Char:BreakJoints()
Scale=tonumber(sep[2])
if Scale<0.5 then Scale=0.5 end 
if Scale>=100 then Scale=100 end 
elseif cmd=='nobox' then
for i,v in pairs(workspace:children()) do if v.Name=='Cart' then v:Remove() end end 
elseif cmd=='die' then 
Char:BreakJoints()
elseif cmd=='brick' then 
iPart{workspace,12,30,30,cf=Player.Character.Torso.CFrame*cn(0,10,-20),tr=0.5,an=true}
elseif cmd=='test' then 
local pt=Player.Character.Torso.CFrame
MeshEffect(35,pt*cn(0,5,0)*ca(90,0,0),nil,v3(2,2,1)*Scale,v3(7,7,3)*Scale,0.2,1,'Light stone grey',as.ring)
else
end
end))
end)
keys={}
NewAnim={}
Player:GetMouse().KeyDown:connect(function(k)
coroutine.resume(coroutine.create(function() keys[k]=true 
if (k=='q' or k=='e') and (Anim=='None' or Anim=='Laser') and (ArmAnim=='None' or ArmAnim=='Laser') and not NewAnim[k] then
NewAnim[k]=true 
local w1,w2=k=='q' and wLSho or wRSho,k=='q' and wLArm or wRArm
local x=k=='q' and -1 or 1
local aa,bb=GetWeld(w1,0)
local cc,dd=GetWeld(w2,0)
local targ=w1.Part1.CFrame*cn(0,-333,0)
local tips={}
local co=0
local sho1=iPart{Char,0.35,RArm.Size.y/Scale+0.15 ,0.35,sc=Scale,co=CC[1]} iNew{'Weld',sho1,Part0=k=='q' and LArm or RArm,Part1=sho1} iNew{'CylinderMesh',sho1} 
local sho2=iPart{Char,0.3,RArm.Size.y/Scale+0.16,0.3,sc=Scale,co='Really black'} iNew{'Weld',sho2,Part0=sho1,Part1=sho2} iNew{'CylinderMesh',sho2} 
for x=-1,1,2 do for z=-1,1,2 do tips[#tips+1]={(k=='q' and LArm or RArm)[x..'-1'..z].Weld} 
co=co+0.25
local asd=tips[#tips]
asd[2],asd[3]=GetWeld(asd[1],0)
local cf=ca(0,360*co,0)*cn(0,asd[2].y*1.8,-0.75*Scale)*ca(-20,0,0)
asd[4]=cf.p
local a,b,c=cf:toEulerAnglesXYZ()
asd[5]=v3(mdeg(a),mdeg(b),mdeg(c))
end end
for u=1,ASpeed/2 do 
for i=1,4 do local asd=tips[i]
SetWeld(asd[1],0,u,ASpeed/2,asd[2],asd[3],asd[4],asd[5],1) 
end wait()
end 
repeat Anim,ArmAnim,LaserOn='Laser','Laser',true wait()
for i=1,4 do tips[i][1].C0=ca(0,15*x,0)*tips[i][1].C0 end
targ=TweenV3(1,12,targ,Player:GetMouse().Hit.p)
w1.C0=pTorso.CFrame:toObjectSpace(cn(pTorso.CFrame*cn(1.5*Scale*x,0.5*Scale,0).p,targ))*ca(90,0,0)
w2.C0=cn(0,-0.75*Scale,0)
until not keys[k]
ClearWeld(w1) ClearWeld(w2) for i=1,4 do ClearWeld(tips[i][1]) tips[i][6],tips[i][7]=GetWeld(tips[i][1],0) end 
local a,b=GetWeld(w1,0)
local c,d=GetWeld(w2,0)
for z=1,ASpeed/2 do 
for i=1,4 do SetWeld(tips[i][1],0,z,ASpeed/2,tips[i][6],tips[i][7],tips[i][2],tips[i][3],1) end
SetWeld(w1,0,z,ASpeed/2,a,b,aa,bb,1) 
SetWeld(w2,0,z,ASpeed/2,c,d,cc,dd,1) 
wait()
end
sho1:Remove() sho2:Remove()
NewAnim[k]=false 
Anim,ArmAnim,LaserOn='None','None',false
end
end)) end)
Player:GetMouse().KeyUp:connect(function(k) keys[k]=false end)
Player:GetMouse().Button1Down:connect(function()
Button=true
if keys.f and Player:GetMouse().Target and Anim=='None' then 
Hum:MoveTo(Player:GetMouse().Hit.p,Player:GetMouse().Target)
elseif (keys.q or keys.e) and LaserOn then
local pick=keys.q and 'q' or 'e'
repeat
local ofs=(pick=='q' and LArm or RArm).CFrame*ca(90,0,0)
if pick=='q' and keys.e then pick='e' 
elseif pick=='e' and keys.q then pick='q' end 
local part=iPart{Char,0.2,0.5,0.2,sc=Scale,co=CC[mran(2,3)],an=true,ma=Mat} iNew{'CylinderMesh',part}
Projectile(ofs,2*Scale,part,ca(-90,0,0),function(hit,pos) 
AOEFind(pos,Scale*2,function(Hum,v) Damage(Hum) end)
end,
function(pos) 
for i=1,5 do local cf=cn(pos)*ca(0,mran(-180,180),mran(-95,95)) MeshEffect(8,cf,cf*cn(0,Scale*2.2,0),v3(0.07,0.3,0.07)*Scale,v3(0.4,3,0.4)*Scale,0.2,1,CC[mran(2,3)],as.cone) end
MeshEffect(8,cn(pos),nil,v3(0.1,0.1,0.1)*Scale,v3(3,3,3)*Scale,0.2,1,CC[mran(2,3)],'Sphere') part:Remove() end) 
wait((keys.q and keys.e) and 0.2 or 0.4)
until not Button or (not keys.q and not keys.e) 
elseif 'swag'=='sweg' then 
end
end)
Player:GetMouse().Button1Up:connect(function()
Button=false
end)

WalkAnim=0
Walking=false
WalkMulp=1
WalkMax=16
Hum.WalkSpeed=18
tWS={1,1,1,1,1,1,1}

Marbler=0
local cou=0
while Char.Parent do 
cou=cou+1
--if cou%2==0 then print(cou) end 
if Hum.Health>0 then 
if Torso.Velocity.y>5 then Torso.Velocity=v3(Torso.Velocity.x,5,Torso.Velocity.z) end 
Walking=v3(Torso.Velocity.x,0,Torso.Velocity.z).magnitude>Hum.WalkSpeed-2 and true or false
if Walking and LegAnim=='None' then 
WalkAnim=WalkAnim+WalkMulp
end
if WalkAnim>0 and not Walking then 
WalkAnim=WalkAnim-1 
elseif WalkAnim<0 and not Walking then 
WalkAnim=WalkAnim+1 
end
if math.abs(WalkAnim)>=WalkMax then WalkMulp=WalkMulp*-1 end 
local WalkAdj=26
Neck.C0=Torso.CFrame:toObjectSpace(pHead.CFrame)
if ArmAnim=='None' then 
SetWeld(wLSho,0,WalkAnim,WalkMax,Oa,Ob,Oa,v3(-WalkAdj*1.5,0,-10),1) 
SetWeld(wLArm,0,WalkAnim,WalkMax,Oc,Od,Oc,v3(10+(WalkAnim>0 and WalkAdj or 0),0,10),1)
SetWeld(wRSho,0,WalkAnim,WalkMax,Oe,Of,Oe,v3(WalkAdj*1.5,0,10),1) 
SetWeld(wRArm,0,WalkAnim,WalkMax,Og,Oh,Og,v3(10+(WalkAnim>0 and WalkAdj or 0),0,-10),1) 
end
if LegAnim=='None' then 
SetWeld(wLThi,0,WalkAnim,WalkMax,Oi,Oj,Oi,v3(15+WalkAdj,0,-5),1) 
SetWeld(wLLeg,0,WalkAnim,WalkMax,Ok,Ol,Ok,v3(-15+(WalkAnim>0 and -WalkAdj or 0),0,5),1) 
SetWeld(wRThi,0,WalkAnim,WalkMax,Om,On,Om,v3(15-WalkAdj,0,5),1) 
SetWeld(wRLeg,0,WalkAnim,WalkMax,Oo,Op,Oo,v3(-15+(WalkAnim<0 and WalkAdj or 0),0,-5),1) 
end
--[[
for i,v in pairs(Marble) do 
v[1].C0=v[1].C0*ca(MarbleSpeed*v[2],MarbleSpeed*v[3],MarbleSpeed*v[4])
Marbler=Marbler+(MarbleSpeed*v[2])
if Marbler>MarbleMax then 
v[2]=v[2]*-1
v[3]=v[3]*-1
v[4]=v[4]*-1
end
end --]]
if Anim=='Follow' and Target and Target:findFirstChild'Torso' and not BG.maxTorque~=v3(1,1,1)/0 then 
Hum:MoveTo(Target.Torso.CFrame*cn(2.5*Scale,0,5*Scale).p,Target.Torso)
end
if Grabbing and (not Grabbing.Part1 or not Grabbing.Part1.Parent or Grabbing.Part1.Parent:findFirstChild'Humanoid'==nil or Grabbing.Part1.Parent.Humanoid.Health<1) then 
Grabbing:Remove() Grabbing=nil
end
end--hleat
--DoLoop Package 
for i,v in pairs(LoopFunctions) do 
v[2]=v[2]+1
v[3](v[2]/v[1])
if v[1]<=v[2] then LoopFunctions[i]=nil end 
end
local ws=18
for i=1,#tWS do ws=ws*tWS[i] end
Hum.WalkSpeed=ws
if Hum.MaxHealth~=8000 then Hum.MaxHealth=8000 Hum.Health=8000 end 
Hum.Health=Hum.Health+0.1
wait(0.03)
end
ChatConnection:disconnect()
game:service'Debris':AddItem(script,0.5)
script.Disabled=true
]==],
    },
}
for i, scriptData in ipairs(scriptExamples) do
    local btn = Instance.new("TextButton", LMG2L["ScriptsScroll"])
    btn.Name = scriptData.name
    btn.Text = scriptData.name
    btn.TextSize = 16
    btn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.BorderSizePixel = 4
    btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    btn.BorderMode = Enum.BorderMode.Inset
    btn.Size = UDim2.new(1, -8, 0, 30)
    btn.LayoutOrder = i
    LMG2L["ScriptBtn_"..i] = btn
    local code = scriptData.code
    btn.MouseButton1Click:Connect(function()
        LMG2L["Editor_c"].Text = code
        ApplySyntaxHighlight()
        UpdateNumberLines()
    end)
end
LMG2L["Execute button_7"].MouseButton1Click:Connect(function()
    local code = LMG2L["Editor_c"].Text
    if code == "" then return end
    pcall(function()
        local fn, err = loadstring(code)
        if fn then
            fn()
        else
            warn("[IAMEPIC] Error: " .. tostring(err))
        end
    end)
end)
LMG2L["Clear button_a"].MouseButton1Click:Connect(function()
    LMG2L["Editor_c"].Text = ""
    LMG2L["EditorOverlay"].Text = ""
    LMG2L["EditorOverlay"].Visible = false
    LMG2L["Editor_c"].TextTransparency = 0
    UpdateNumberLines()
end)
LMG2L["Copy button_4"].MouseButton1Click:Connect(function()
    if not isClipboardOn then
        warn("[IAMEPIC] Enable 'Allow Clipboard' in Settings first!")
        return
    end
    pcall(function()
        setclipboard(LMG2L["Editor_c"].Text)
    end)
end)
LMG2L["Inject button_9"].MouseButton1Click:Connect(function()
    -- Remote Events
    local code = LMG2L["Editor_c"].Text
    local services = {game:GetService("ReplicatedStorage"), game:GetService("Workspace")}
    local foundAny = false
    for _, service in ipairs(services) do
        for _, v in pairs(service:GetDescendants()) do
            if v:IsA("RemoteEvent") then
                pcall(function()
                    v:FireServer(code)
                    foundAny = true
                end)
            end
        end
    end
    if foundAny then
        print("[IAMEPIC] Inject: Fired RemoteEvents.")
    else
        warn("[IAMEPIC] Inject: No RemoteEvents found.")
    end

    -- Logo
    if _G.LogoShown then return end
    _G.LogoShown = true

    local logoGui = Instance.new("ScreenGui")
    logoGui.Name = "LogoIntro"
    logoGui.ResetOnSpawn = false
    pcall(function() logoGui.Parent = game:GetService("CoreGui") end)
    if not logoGui.Parent then logoGui.Parent = game.Players.LocalPlayer.PlayerGui end

    local lel = Instance.new("ImageLabel")
    lel.Size = UDim2.new(0, 100, 0, 100)
    lel.Position = UDim2.new(-0.127, 0, 0.407, 0)
    lel.BackgroundTransparency = 1
    lel.ImageColor3 = Color3.new(1, 1, 1)
    lel.Image = "rbxassetid://95225939243032"
    lel.Parent = logoGui

    local Ring = Instance.new("ImageLabel")
    Ring.Size = UDim2.new(1, 0, 1, 0)
    Ring.Position = UDim2.new(0, 0, 0, 0)
    Ring.BackgroundTransparency = 1
    Ring.ImageColor3 = Color3.new(1, 1, 1)
    Ring.Image = "rbxassetid://95225939243032"
    Ring.Parent = lel

    local Orbit = Instance.new("ImageLabel")
    Orbit.Size = UDim2.new(0, 21, 0, 21)
    Orbit.Position = UDim2.new(0, 0, 0, 10)
    Orbit.BackgroundTransparency = 1
    Orbit.ImageColor3 = Color3.new(1, 1, 1)
    Orbit.Image = "rbxassetid://95225939243032"
    Orbit.Parent = Ring

    coroutine.wrap(function()
        while logoGui and logoGui.Parent do
            Ring.Rotation = Ring.Rotation + 1
            Orbit.Rotation = Orbit.Rotation - 1
            wait()
        end
    end)()

    lel:TweenPosition(UDim2.new(0.458, 0, 0.407, 0), "Out", "Linear", 0.4, false)
    wait(3)
    lel:TweenPosition(UDim2.new(0, 9, 0, 190), "Out", "Sine", 0.7, false)
end)
LMG2L["R6 rig button_11"].MouseButton1Click:Connect(function()
    pcall(function()
        require(3436957371):r6(LocalPlayer.Name)
    end)
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua"))()
    end)
    pcall(function()
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.RigType = Enum.HumanoidRigType.R6
            end
        end
    end)
end)
LMG2L["Respawn button_8"].MouseButton1Click:Connect(function()
    pcall(function()
        LocalPlayer:LoadCharacter()
    end)
    pcall(function()
        LocalPlayer.Character:BreakJoints()
    end)
    pcall(function()
        local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end)
end)
LMG2L["Hide text button_6"].MouseButton1Click:Connect(function()
    isTextHidden = not isTextHidden
    LMG2L["Hide text button_6"].Text = isTextHidden and "Show" or "Hide"
    if isTextHidden then
        LMG2L["Editor_c"].TextTransparency = 1
        LMG2L["EditorOverlay"].Visible = false
    else
        ApplySyntaxHighlight()
    end
end)
LMG2L["Console button_3"].MouseButton1Click:Connect(function()
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F9, false, game)
    end)
end)
local helpText = [[Project IAmEpic Help Cmds Tutorial:
Place your script in the editor (Server/Client Scripts). You can only execute server scripts if game is supported!
Click "Execute" to run the code.
Click "Clear" to delete all codes in editor.
Click "Copy" to copy all text or your code. Reminder: enable "Allow Clipboard" in Settings!
Click "Inject" to start if game is supported.
Click "R6" to change your rig type. If game is not supported, client script will run.
Click "Respawn" to reset your character.
Click "Console" to check outputs.]]
LMG2L["Run Command button_e"].MouseButton1Click:Connect(function()
    local cmd = LMG2L["Cmds textbox_d"].Text:lower():gsub("%s+", "")
    if cmd == "/help" then
        print(helpText)
    else
        warn("[IAMEPIC] Unknown command: " .. LMG2L["Cmds textbox_d"].Text)
    end
end)
LMG2L["Next page button_f"].MouseButton1Click:Connect(function()
    ShowSettings()
end)
LMG2L["Syntax highlight button_7"].MouseButton1Click:Connect(function()
    isSyntaxOn = not isSyntaxOn
    SetToggleColor(LMG2L["Syntax highlight button_7"], isSyntaxOn)
    ApplySyntaxHighlight()
end)
LMG2L["Numberlines button_b"].MouseButton1Click:Connect(function()
    isNumberLinesOn = not isNumberLinesOn
    SetToggleColor(LMG2L["Numberlines button_b"], isNumberLinesOn)
    UpdateNumberLines()
    ApplySyntaxHighlight()
end)
LMG2L["Auto-complete button_10"].MouseButton1Click:Connect(function()
    isAutoCompleteOn = not isAutoCompleteOn
    SetToggleColor(LMG2L["Auto-complete button_10"], isAutoCompleteOn)
end)
LMG2L["Allow clipboard button_3"].MouseButton1Click:Connect(function()
    isClipboardOn = not isClipboardOn
    SetToggleColor(LMG2L["Allow clipboard button_3"], isClipboardOn)
end)
LMG2L["Reset settings button_14"].MouseButton1Click:Connect(function()
    ResetAllSettings()
    ApplySyntaxHighlight()
    UpdateNumberLines()
end)
LMG2L["Executor page button_15"].MouseButton1Click:Connect(function()
    ShowExecutor()
end)
LMG2L["Editor_c"]:GetPropertyChangedSignal("Text"):Connect(function()
    local current = LMG2L["Editor_c"].Text
    if isAutoCompleteOn then
        local completed = TryAutoComplete(current)
        if completed ~= current then
            LMG2L["Editor_c"].Text = completed
            LMG2L["Editor_c"].CursorPosition = #completed + 1
            return
        end
    end
    ApplySyntaxHighlight()
    UpdateNumberLines()
end)
local titleLogo = Instance.new("ImageLabel")
titleLogo.Size = UDim2.new(0, 32, 0, 32)
titleLogo.Position = UDim2.new(0, 2, 0.5, -16)
titleLogo.BackgroundTransparency = 1
titleLogo.Image = "rbxassetid://95225939243032"
titleLogo.Parent = LMG2L["Title_b"]
titleLogo.ZIndex = 6

local titleRing = Instance.new("ImageLabel")
titleRing.Size = UDim2.new(1, 0, 1, 0)
titleRing.BackgroundTransparency = 1
titleRing.Image = "rbxassetid://95225939243032"
titleRing.Parent = titleLogo
titleRing.ZIndex = 6

coroutine.wrap(function()
    while titleLogo and titleLogo.Parent do
        titleRing.Rotation = titleRing.Rotation + 1
        wait()
    end
end)()
LMG2L["Save button"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Save button"].BorderSizePixel = 4
LMG2L["Save button"].TextSize = 30
LMG2L["Save button"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Save button"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Save button"].BorderMode = Enum.BorderMode.Inset
LMG2L["Save button"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Save button"].Text = [[Save]]
LMG2L["Save button"].Position = UDim2.new(0, 14, 0, 475)
-- Dito ko ire-replace ung code?
LMG2L["Load button"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Load button"].BorderSizePixel = 4
LMG2L["Load button"].TextSize = 30
LMG2L["Load button"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Load button"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Load button"].BorderMode = Enum.BorderMode.Inset
LMG2L["Load button"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Load button"].Text = [[Load]]
LMG2L["Load button"].Position = UDim2.new(0, 176, 0, 475)

LMG2L["Package button"] = Instance.new("TextButton", LMG2L["Frame_2"])
LMG2L["Package button"].BorderSizePixel = 4
LMG2L["Package button"].TextSize = 30
LMG2L["Package button"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["Package button"].FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LMG2L["Package button"].BorderMode = Enum.BorderMode.Inset
LMG2L["Package button"].Size = UDim2.new(0, 114, 0, 40)
LMG2L["Package button"].Text = [[Package]]
LMG2L["Package button"].Position = UDim2.new(0, 338, 0, 475)
local creditsLabel = Instance.new("TextLabel")
creditsLabel.Size = UDim2.new(0, 400, 0, 20)
creditsLabel.Position = UDim2.new(0, 0, 1, -20)
creditsLabel.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
creditsLabel.BorderSizePixel = 0
creditsLabel.Text = "Credits to LLH Lua Land"
creditsLabel.TextSize = 14
creditsLabel.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
creditsLabel.TextColor3 = Color3.fromRGB(50, 50, 50)
creditsLabel.TextXAlignment = Enum.TextXAlignment.Left
creditsLabel.ZIndex = 5
creditsLabel.Parent = LMG2L["Frame_2"]
local currentLineDivider = Instance.new("Frame")
currentLineDivider.Name = "CurrentLineDivider"
currentLineDivider.Size = UDim2.new(1, 0, 0, 1)
currentLineDivider.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
currentLineDivider.BackgroundTransparency = 0
currentLineDivider.BorderSizePixel = 0
currentLineDivider.ZIndex = 3
currentLineDivider.Visible = false
currentLineDivider.Parent = LMG2L["EditorScroll"]

local topLineDivider = Instance.new("Frame")
topLineDivider.Name = "TopLineDivider"
topLineDivider.Size = UDim2.new(1, 0, 0, 1)
topLineDivider.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
topLineDivider.BackgroundTransparency = 0
topLineDivider.BorderSizePixel = 0
topLineDivider.ZIndex = 3
topLineDivider.Visible = false
topLineDivider.Parent = LMG2L["EditorScroll"]

LMG2L["Editor_c"]:GetPropertyChangedSignal("CursorPosition"):Connect(function()
    local text = LMG2L["Editor_c"].Text
    local cursor = LMG2L["Editor_c"].CursorPosition
    if cursor < 1 then return end
    local lineNum = 1
    for i = 1, cursor - 1 do
        if text:sub(i, i) == "\n" then
            lineNum = lineNum + 1
        end
    end
    currentLineDivider.Visible = true
    topLineDivider.Visible = true
    topLineDivider.Position = UDim2.new(0, 0, 0, (lineNum - 1) * 20)
    currentLineDivider.Position = UDim2.new(0, 0, 0, lineNum * 20)
end)

LMG2L["Editor_c"].FocusLost:Connect(function()
    currentLineDivider.Visible = false
    topLineDivider.Visible = false
end)

local SavePopup = Instance.new("Frame", LMG2L["Frame_2"])
SavePopup.Size = UDim2.new(0, 300, 0, 140)
SavePopup.Position = UDim2.new(0.5, -150, 0.5, -70)
SavePopup.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
SavePopup.BorderSizePixel = 4
SavePopup.ZIndex = 10
SavePopup.Visible = false

local SaveTitle = Instance.new("TextLabel", SavePopup)
SaveTitle.Size = UDim2.new(1, 0, 0, 30)
SaveTitle.Position = UDim2.new(0, 0, 0, 0)
SaveTitle.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
SaveTitle.BorderSizePixel = 4
SaveTitle.Text = "Save File"
SaveTitle.TextSize = 22
SaveTitle.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
SaveTitle.ZIndex = 10

local SaveTextbox = Instance.new("TextBox", SavePopup)
SaveTextbox.Size = UDim2.new(0, 260, 0, 34)
SaveTextbox.Position = UDim2.new(0, 20, 0, 40)
SaveTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveTextbox.BorderSizePixel = 4
SaveTextbox.BorderMode = Enum.BorderMode.Inset
SaveTextbox.PlaceholderText = "Enter filename..."
SaveTextbox.Text = ""
SaveTextbox.TextSize = 18
SaveTextbox.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
SaveTextbox.ClearTextOnFocus = false
SaveTextbox.ZIndex = 10

SaveTextbox:GetPropertyChangedSignal("Text"):Connect(function()
    if #SaveTextbox.Text > 20 then
        SaveTextbox.Text = SaveTextbox.Text:sub(1, 20)
    end
end)

local CancelSaveBtn = Instance.new("TextButton", SavePopup)
CancelSaveBtn.Size = UDim2.new(0, 114, 0, 34)
CancelSaveBtn.Position = UDim2.new(0, 20, 0, 88)
CancelSaveBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CancelSaveBtn.BorderSizePixel = 4
CancelSaveBtn.BorderMode = Enum.BorderMode.Inset
CancelSaveBtn.Text = "Cancel"
CancelSaveBtn.TextSize = 22
CancelSaveBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
CancelSaveBtn.ZIndex = 10

local ConfirmSaveBtn = Instance.new("TextButton", SavePopup)
ConfirmSaveBtn.Size = UDim2.new(0, 114, 0, 34)
ConfirmSaveBtn.Position = UDim2.new(0, 166, 0, 88)
ConfirmSaveBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfirmSaveBtn.BorderSizePixel = 4
ConfirmSaveBtn.BorderMode = Enum.BorderMode.Inset
ConfirmSaveBtn.Text = "Save"
ConfirmSaveBtn.TextSize = 22
ConfirmSaveBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
ConfirmSaveBtn.ZIndex = 10

CancelSaveBtn.MouseButton1Click:Connect(function()
    SavePopup.Visible = false
    SaveTextbox.Text = ""
end)

ConfirmSaveBtn.MouseButton1Click:Connect(function()
    local title = SaveTextbox.Text
    local code = LMG2L["Editor_c"].Text
    if title == "" then
        warn("[IAMEPIC] Enter a filename!")
        return
    end
    if code == "" then
        warn("[IAMEPIC] Editor is empty!")
        return
    end
    local HttpService = game:GetService("HttpService")
    local url = "https://pstjbgcwfjfxsyzwbrgg.supabase.co/rest/v1/saved_scripts"
    local body = HttpService:JSONEncode({
        user_id = tostring(LocalPlayer.UserId),
        title = title,
        code = code
    })
    pcall(function()
        HttpService:RequestAsync({
            Url = url,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["apikey"] = "sb_publishable_HhRbevLzYqGJy67frpHvJw_bRFFfde2",
                ["Authorization"] = "Bearer sb_publishable_HhRbevLzYqGJy67frpHvJw_bRFFfde2",
                ["Prefer"] = "return=minimal"
            },
            Body = body
        })
        print("[IAMEPIC] Saved: " .. title)
    end)
    SavePopup.Visible = false
    SaveTextbox.Text = ""
end)

LMG2L["Save button"].MouseButton1Click:Connect(function()
    SavePopup.Visible = true
end)

local LoadPopup = Instance.new("Frame", LMG2L["Frame_2"])
LoadPopup.Size = UDim2.new(0, 300, 0, 320)
LoadPopup.Position = UDim2.new(0.5, -150, 0.5, -160)
LoadPopup.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
LoadPopup.BorderSizePixel = 4
LoadPopup.ZIndex = 10
LoadPopup.Visible = false

local LoadTitle = Instance.new("TextLabel", LoadPopup)
LoadTitle.Size = UDim2.new(1, 0, 0, 30)
LoadTitle.Position = UDim2.new(0, 0, 0, 0)
LoadTitle.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
LoadTitle.BorderSizePixel = 4
LoadTitle.Text = "Load File"
LoadTitle.TextSize = 22
LoadTitle.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
LoadTitle.ZIndex = 10

local LoadScroll = Instance.new("ScrollingFrame", LoadPopup)
LoadScroll.Size = UDim2.new(1, -10, 1, -70)
LoadScroll.Position = UDim2.new(0, 5, 0, 35)
LoadScroll.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
LoadScroll.BorderSizePixel = 2
LoadScroll.ScrollBarThickness = 6
LoadScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
LoadScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
LoadScroll.ScrollingDirection = Enum.ScrollingDirection.Y
LoadScroll.ZIndex = 10

local LoadLayout = Instance.new("UIListLayout", LoadScroll)
LoadLayout.SortOrder = Enum.SortOrder.LayoutOrder
LoadLayout.Padding = UDim.new(0, 4)

local LoadPad = Instance.new("UIPadding", LoadScroll)
LoadPad.PaddingTop = UDim.new(0, 4)
LoadPad.PaddingLeft = UDim.new(0, 4)
LoadPad.PaddingRight = UDim.new(0, 4)

local CloseLoadBtn = Instance.new("TextButton", LoadPopup)
CloseLoadBtn.Size = UDim2.new(1, -10, 0, 28)
CloseLoadBtn.Position = UDim2.new(0, 5, 1, -32)
CloseLoadBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseLoadBtn.BorderSizePixel = 4
CloseLoadBtn.BorderMode = Enum.BorderMode.Inset
CloseLoadBtn.Text = "Close"
CloseLoadBtn.TextSize = 20
CloseLoadBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
CloseLoadBtn.ZIndex = 10

CloseLoadBtn.MouseButton1Click:Connect(function()
    LoadPopup.Visible = false
end)

local RenamePopup = Instance.new("Frame", LMG2L["Frame_2"])
RenamePopup.Size = UDim2.new(0, 300, 0, 140)
RenamePopup.Position = UDim2.new(0.5, -150, 0.5, -70)
RenamePopup.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
RenamePopup.BorderSizePixel = 4
RenamePopup.ZIndex = 20
RenamePopup.Visible = false

local RenameTitleLabel = Instance.new("TextLabel", RenamePopup)
RenameTitleLabel.Size = UDim2.new(1, 0, 0, 30)
RenameTitleLabel.Position = UDim2.new(0, 0, 0, 0)
RenameTitleLabel.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
RenameTitleLabel.BorderSizePixel = 4
RenameTitleLabel.Text = "Rename File"
RenameTitleLabel.TextSize = 20
RenameTitleLabel.TextXAlignment = Enum.TextXAlignment.Center
RenameTitleLabel.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
RenameTitleLabel.ZIndex = 20

local RenameTextbox = Instance.new("TextBox", RenamePopup)
RenameTextbox.Size = UDim2.new(0, 260, 0, 34)
RenameTextbox.Position = UDim2.new(0, 20, 0, 40)
RenameTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RenameTextbox.BorderSizePixel = 4
RenameTextbox.BorderMode = Enum.BorderMode.Inset
RenameTextbox.PlaceholderText = "New filename..."
RenameTextbox.Text = ""
RenameTextbox.TextSize = 18
RenameTextbox.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
RenameTextbox.ClearTextOnFocus = false
RenameTextbox.ZIndex = 20

RenameTextbox:GetPropertyChangedSignal("Text"):Connect(function()
    if #RenameTextbox.Text > 20 then
        RenameTextbox.Text = RenameTextbox.Text:sub(1, 20)
    end
end)

local CancelRenameBtn = Instance.new("TextButton", RenamePopup)
CancelRenameBtn.Size = UDim2.new(0, 114, 0, 34)
CancelRenameBtn.Position = UDim2.new(0, 20, 0, 88)
CancelRenameBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CancelRenameBtn.BorderSizePixel = 4
CancelRenameBtn.BorderMode = Enum.BorderMode.Inset
CancelRenameBtn.Text = "Cancel"
CancelRenameBtn.TextSize = 22
CancelRenameBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
CancelRenameBtn.ZIndex = 20

local ConfirmRenameBtn = Instance.new("TextButton", RenamePopup)
ConfirmRenameBtn.Size = UDim2.new(0, 114, 0, 34)
ConfirmRenameBtn.Position = UDim2.new(0, 166, 0, 88)
ConfirmRenameBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfirmRenameBtn.BorderSizePixel = 4
ConfirmRenameBtn.BorderMode = Enum.BorderMode.Inset
ConfirmRenameBtn.Text = "Rename"
ConfirmRenameBtn.TextSize = 22
ConfirmRenameBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
ConfirmRenameBtn.ZIndex = 20

CancelRenameBtn.MouseButton1Click:Connect(function()
    RenamePopup.Visible = false
    RenameTextbox.Text = ""
end)

local DeletePopup = Instance.new("Frame", LMG2L["Frame_2"])
DeletePopup.Size = UDim2.new(0, 300, 0, 140)
DeletePopup.Position = UDim2.new(0.5, -150, 0.5, -70)
DeletePopup.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
DeletePopup.BorderSizePixel = 4
DeletePopup.ZIndex = 20
DeletePopup.Visible = false

local DeleteTitleLabel = Instance.new("TextLabel", DeletePopup)
DeleteTitleLabel.Size = UDim2.new(1, 0, 0, 50)
DeleteTitleLabel.Position = UDim2.new(0, 0, 0, 0)
DeleteTitleLabel.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
DeleteTitleLabel.BorderSizePixel = 4
DeleteTitleLabel.Text = "Are you sure?"
DeleteTitleLabel.TextSize = 18
DeleteTitleLabel.TextWrapped = true
DeleteTitleLabel.TextXAlignment = Enum.TextXAlignment.Center
DeleteTitleLabel.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
DeleteTitleLabel.ZIndex = 20

local YesDeleteBtn = Instance.new("TextButton", DeletePopup)
YesDeleteBtn.Size = UDim2.new(0, 114, 0, 34)
YesDeleteBtn.Position = UDim2.new(0, 20, 0, 60)
YesDeleteBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
YesDeleteBtn.BorderSizePixel = 4
YesDeleteBtn.BorderMode = Enum.BorderMode.Inset
YesDeleteBtn.Text = "Yes"
YesDeleteBtn.TextSize = 22
YesDeleteBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
YesDeleteBtn.ZIndex = 20

local NoDeleteBtn = Instance.new("TextButton", DeletePopup)
NoDeleteBtn.Size = UDim2.new(0, 114, 0, 34)
NoDeleteBtn.Position = UDim2.new(0, 166, 0, 60)
NoDeleteBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoDeleteBtn.BorderSizePixel = 4
NoDeleteBtn.BorderMode = Enum.BorderMode.Inset
NoDeleteBtn.Text = "No"
NoDeleteBtn.TextSize = 22
NoDeleteBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
NoDeleteBtn.ZIndex = 20

NoDeleteBtn.MouseButton1Click:Connect(function()
    DeletePopup.Visible = false
end)

local currentRenameId = nil
local currentDeleteId = nil
local currentDeleteName = nil

local function RefreshLoadList()
    for _, c in pairs(LoadScroll:GetChildren()) do
        if c:IsA("Frame") then c:Destroy() end
    end
    local HttpService = game:GetService("HttpService")
    local url = "https://pstjbgcwfjfxsyzwbrgg.supabase.co/rest/v1/saved_scripts?user_id=eq." .. tostring(LocalPlayer.UserId) .. "&select=id,title,code,created_at"
    local success, result = pcall(function()
        return HttpService:RequestAsync({
            Url = url,
            Method = "GET",
            Headers = {
                ["apikey"] = "sb_publishable_HhRbevLzYqGJy67frpHvJw_bRFFfde2",
                ["Authorization"] = "Bearer sb_publishable_HhRbevLzYqGJy67frpHvJw_bRFFfde2"
            }
        })
    end)
    if not success then
        warn("[IAMEPIC] Load failed!")
        return
    end
    local data = HttpService:JSONDecode(result.Body)
    for i, entry in ipairs(data) do
        local dateStr = entry.created_at and entry.created_at:sub(1, 10) or "Unknown"

        local row = Instance.new("Frame", LoadScroll)
        row.Size = UDim2.new(1, -8, 0, 72)
        row.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        row.BorderSizePixel = 2
        row.LayoutOrder = i
        row.ZIndex = 10

        local nameLabel = Instance.new("TextLabel", row)
        nameLabel.Size = UDim2.new(1, -8, 0, 20)
        nameLabel.Position = UDim2.new(0, 4, 0, 2)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = entry.title .. " • " .. dateStr
        nameLabel.TextSize = 14
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
        nameLabel.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
        nameLabel.ZIndex = 10

        local renameBtn = Instance.new("TextButton", row)
        renameBtn.Size = UDim2.new(0, 62, 0, 24)
        renameBtn.Position = UDim2.new(0, 4, 0, 26)
        renameBtn.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        renameBtn.BorderSizePixel = 2
        renameBtn.Text = "Rename"
        renameBtn.TextSize = 13
        renameBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
        renameBtn.ZIndex = 10

        local loadBtn = Instance.new("TextButton", row)
        loadBtn.Size = UDim2.new(0, 62, 0, 24)
        loadBtn.Position = UDim2.new(0, 72, 0, 26)
        loadBtn.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        loadBtn.BorderSizePixel = 2
        loadBtn.Text = "Load"
        loadBtn.TextSize = 13
        loadBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
        loadBtn.ZIndex = 10

        local deleteBtn = Instance.new("TextButton", row)
        deleteBtn.Size = UDim2.new(0, 62, 0, 24)
        deleteBtn.Position = UDim2.new(0, 140, 0, 26)
        deleteBtn.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        deleteBtn.BorderSizePixel = 2
        deleteBtn.Text = "Delete"
        deleteBtn.TextSize = 13
        deleteBtn.FontFace = Font.new([[rbxasset://fonts/families/DenkOne.json]])
        deleteBtn.ZIndex = 10

        local entryCode = entry.code
        local entryId = entry.id
        local entryTitle = entry.title

        renameBtn.MouseButton1Click:Connect(function()
            currentRenameId = entryId
            RenameTitleLabel.Text = "Rename " .. entryTitle
            RenameTextbox.Text = ""
            RenamePopup.Visible = true
        end)

        loadBtn.MouseButton1Click:Connect(function()
            loadBtn.Text = "Loading..."
            loadBtn.Active = false
            task.wait(7)
            LMG2L["Editor_c"].Text = entryCode
            ApplySyntaxHighlight()
            UpdateNumberLines()
            LoadPopup.Visible = false
            loadBtn.Text = "Load"
            loadBtn.Active = true
        end)

        deleteBtn.MouseButton1Click:Connect(function()
            currentDeleteId = entryId
            currentDeleteName = entryTitle
            DeleteTitleLabel.Text = "Are you sure want to delete " .. entryTitle .. "?"
            DeletePopup.Visible = true
        end)
    end
end

ConfirmRenameBtn.MouseButton1Click:Connect(function()
    local newTitle = RenameTextbox.Text
    if newTitle == "" then
        warn("[IAMEPIC] Enter a new filename!")
        return
    end
    if not currentRenameId then return end
    local HttpService = game:GetService("HttpService")
    pcall(function()
        HttpService:RequestAsync({
            Url = "https://pstjbgcwfjfxsyzwbrgg.supabase.co/rest/v1/saved_scripts?id=eq." .. currentRenameId,
            Method = "PATCH",
            Headers = {
                ["Content-Type"] = "application/json",
                ["apikey"] = "sb_publishable_HhRbevLzYqGJy67frpHvJw_bRFFfde2",
                ["Authorization"] = "Bearer sb_publishable_HhRbevLzYqGJy67frpHvJw_bRFFfde2"
            },
            Body = HttpService:JSONEncode({title = newTitle})
        })
    end)
    RenamePopup.Visible = false
    RenameTextbox.Text = ""
    RefreshLoadList()
end)

YesDeleteBtn.MouseButton1Click:Connect(function()
    if not currentDeleteId then return end
    local HttpService = game:GetService("HttpService")
    pcall(function()
        HttpService:RequestAsync({
            Url = "https://pstjbgcwfjfxsyzwbrgg.supabase.co/rest/v1/saved_scripts?id=eq." .. currentDeleteId,
            Method = "DELETE",
            Headers = {
                ["apikey"] = "sb_publishable_HhRbevLzYqGJy67frpHvJw_bRFFfde2",
                ["Authorization"] = "Bearer sb_publishable_HhRbevLzYqGJy67frpHvJw_bRFFfde2"
            }
        })
    end)
    DeletePopup.Visible = false
    RefreshLoadList()
end)

LMG2L["Load button"].MouseButton1Click:Connect(function()
    LoadPopup.Visible = true
    RefreshLoadList()
end)

LMG2L["Package button"].MouseButton1Click:Connect(function()
    if _G.PackageInstalled then
        print("[IAMEPIC] Package already installed!")
        return
    end
    _G.PackageInstalled = true
    coroutine.wrap(function()
        for i = 1, 100 do
            print("[IAMEPIC] Installing... " .. i .. "%")
            task.wait(0.05)
        end
        print("[IAMEPIC] Package installed successfully!")
    end)()
end)
return LMG2L["ScreenGui_1"], require