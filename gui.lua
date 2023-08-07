if not game:IsLoaded() then
	game.Loaded:Wait()
end
print("JYNX loading v1.0.1")

local options = {
	["Fast animations"] = false;
	["Animations"] = true;
	["Force compact mode"] = false;
}
local savedScripts = {
}
local update = "7-22-2023"
if not isfolder("JYNX__CORE_" .. update) then
	makefolder("JYNX__CORE_" .. update)
	writefile("JYNX__CORE_" .. update .. "/settings.json", game:GetService("HttpService"):JSONEncode(options))
	writefile("JYNX__CORE_" .. update .. "/scriptTree.json", game:GetService("HttpService"):JSONEncode(savedScripts))
end
for a, b in pairs(game:GetService("HttpService"):JSONDecode(readfile("JYNX__CORE_" .. update .. "/settings.json"))) do
	options[a] = b
end
for a, b in pairs(game:GetService("HttpService"):JSONDecode(readfile("JYNX__CORE_" .. update .. "/scriptTree.json"))) do
	savedScripts[a] = b
end
for _, a in ipairs(listfiles("")) do
	if string.find(a, "JYNX__CORE_") and a ~= "JYNX__CORE_" .. update then
		delfolder(a)
	end
end

function animate(obj, tinfo, goal, waitForIt)
	if options["Animations"] then
		if options["Fast animations"] then
			tinfo = TweenInfo.new(tinfo.Time / 2, tinfo.EasingStyle, tinfo.EasingDirection, tinfo.RepeatCount, tinfo.Reverses, tinfo.DelayTime)
		end
		game.TweenService:Create(obj, tinfo, goal):Play()
		if waitForIt then
			task.wait(tinfo.Time)
		end
	else
		for a, b in pairs(goal) do
			obj[a] = b
		end
	end
end

--####JYNXGUI####
--Compiled using SIMPLE GUI COMPILER
--SIMPLE GUI CONVERTER BY R_299P

--##Variables##
local _Select = Instance.new("TextButton")
local ___UICorner = Instance.new("UICorner")
local _____UICorner = Instance.new("UICorner")
local __Icon = Instance.new("ImageLabel")
local _________________UICorner = Instance.new("UICorner")
local __________UICorner = Instance.new("UICorner")
local _SearchSetting = Instance.new("TextBox")
local ________________UICorner = Instance.new("UICorner")
local _Trigger = Instance.new("TextButton")
local _ScrollingFrame = Instance.new("ScrollingFrame")
local ______UICorner = Instance.new("UICorner")
local _______________UICorner = Instance.new("UICorner")
local __UICorner = Instance.new("UICorner")
local ___Frame = Instance.new("Frame")
local _TemplateItemTrigger = Instance.new("Frame")
local _3 = Instance.new("ImageButton")
local __Frame = Instance.new("Frame")
local _FileList = Instance.new("ScrollingFrame")
local ______________UICorner = Instance.new("UICorner")
local _TabSettings = Instance.new("Frame")
local _SaveFile = Instance.new("TextButton")
local _TabExecutor = Instance.new("Frame")
local _Switch = Instance.new("TextButton")
local _TemplateItemBool = Instance.new("Frame")
local _UICorner = Instance.new("UICorner")
local _SearchFile = Instance.new("TextBox")
local ___TextLabel = Instance.new("TextLabel")
local _SettingList = Instance.new("ScrollingFrame")
local _ExecuteFile = Instance.new("TextButton")
local _2 = Instance.new("ImageButton")
local _TextLabel = Instance.new("TextLabel")
local _Icon = Instance.new("ImageLabel")
local _UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local ___________UICorner = Instance.new("UICorner")
local _1 = Instance.new("ImageButton")
local __UIListLayout = Instance.new("UIListLayout")
local _DeleteFile = Instance.new("TextButton")
local ____________UICorner = Instance.new("UICorner")
local _________UICorner = Instance.new("UICorner")
local _UIStroke = Instance.new("UIStroke")
local _Frame = Instance.new("Frame")
local ____UICorner = Instance.new("UICorner")
local _TemplateItem = Instance.new("Frame")
local _AutoExecuteFile = Instance.new("TextButton")
local ________UICorner = Instance.new("UICorner")
local _LogoText = Instance.new("TextLabel")
local _ClearCode = Instance.new("TextButton")
local _Sidebar = Instance.new("Frame")
local _UIListLayout = Instance.new("UIListLayout")
local _Logo = Instance.new("ImageButton")
local _______UICorner = Instance.new("UICorner")
local __UIStroke = Instance.new("UIStroke")
local _ExecuteCode = Instance.new("TextButton")
local __TextLabel = Instance.new("TextLabel")
local __Jynx = Instance.new("Frame")
local ___UIListLayout = Instance.new("UIListLayout")
local _TabFiles = Instance.new("Frame")
local _Codebox = Instance.new("TextBox")
local _Jynx = Instance.new("ScreenGui")
local _____________UICorner = Instance.new("UICorner")
local ___Icon = Instance.new("ImageLabel")

--##Properties##

--_Select
_Select.TextWrapped = true
_Select.Active = true
_Select.BorderSizePixel = 0
_Select.TextScaled = true
_Select.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_Select.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_Select.TextSize = 14
_Select.Parent = _Frame
_Select.TextColor3 = Color3.fromRGB(0, 0, 0)
_Select.NextSelectionUp = nil
_Select.Position = UDim2.new(1, -140, 0, 5)
_Select.NextSelectionRight = nil
_Select.Size = UDim2.new(0, 135, 0, 55)
_Select.Name = "Select"
_Select.BorderColor3 = Color3.fromRGB(0, 0, 0)
_Select.Text = "Select"
_Select.NextSelectionLeft = nil
_Select.NextSelectionDown = nil
_Select.RootLocalizationTable = nil
_Select.SelectionImageObject = nil

--___UICorner
___UICorner.Parent = _ExecuteCode

--_____UICorner
_____UICorner.Parent = _ClearCode

--__Icon
__Icon.BorderSizePixel = 0
__Icon.NextSelectionDown = nil
__Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
__Icon.Parent = _2
__Icon.Name = "Icon"
__Icon.Image = "rbxassetid://7129850222"
__Icon.NextSelectionRight = nil
__Icon.NextSelectionUp = nil
__Icon.Size = UDim2.new(0, 80, 0, 80)
__Icon.NextSelectionLeft = nil
__Icon.RootLocalizationTable = nil
__Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
__Icon.BackgroundTransparency = 1
__Icon.SelectionImageObject = nil
__Icon.Position = UDim2.new(0, 10, 0, 10)

--_________________UICorner
_________________UICorner.Parent = _SearchSetting

--__________UICorner
__________UICorner.Parent = _AutoExecuteFile

--_SearchSetting
_SearchSetting.CursorPosition = -1
_SearchSetting.Active = true
_SearchSetting.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
_SearchSetting.BorderSizePixel = 0
_SearchSetting.NextSelectionDown = nil
_SearchSetting.TextSize = 16
_SearchSetting.TextXAlignment = Enum.TextXAlignment.Left
_SearchSetting.TextWrapped = true
_SearchSetting.TextYAlignment = Enum.TextYAlignment.Top
_SearchSetting.TextScaled = true
_SearchSetting.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_SearchSetting.TextColor3 = Color3.fromRGB(255, 255, 255)
_SearchSetting.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_SearchSetting.RootLocalizationTable = nil
_SearchSetting.Parent = _TabSettings
_SearchSetting.Name = "SearchSetting"
_SearchSetting.NextSelectionRight = nil
_SearchSetting.PlaceholderText = "Search..."
_SearchSetting.NextSelectionUp = nil
_SearchSetting.NextSelectionLeft = nil
_SearchSetting.BorderColor3 = Color3.fromRGB(0, 0, 0)
_SearchSetting.Text = ""
_SearchSetting.Size = UDim2.new(1, -5, 0, 50)
_SearchSetting.Position = UDim2.new(0, 5, 0, 5)
_SearchSetting.BackgroundTransparency = 0.5
_SearchSetting.SelectionImageObject = nil

--________________UICorner
________________UICorner.Parent = _Trigger

--_Trigger
_Trigger.TextWrapped = true
_Trigger.Active = true
_Trigger.BorderSizePixel = 0
_Trigger.TextScaled = true
_Trigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_Trigger.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_Trigger.TextSize = 14
_Trigger.Parent = ___Frame
_Trigger.TextColor3 = Color3.fromRGB(0, 0, 0)
_Trigger.NextSelectionUp = nil
_Trigger.Position = UDim2.new(1, -140, 0, 5)
_Trigger.NextSelectionRight = nil
_Trigger.Size = UDim2.new(0, 135, 0, 55)
_Trigger.Name = "Trigger"
_Trigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
_Trigger.Text = "Trigger"
_Trigger.NextSelectionLeft = nil
_Trigger.NextSelectionDown = nil
_Trigger.RootLocalizationTable = nil
_Trigger.SelectionImageObject = nil

--_ScrollingFrame
_ScrollingFrame.Active = true
_ScrollingFrame.BorderSizePixel = 0
_ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
_ScrollingFrame.NextSelectionDown = nil
_ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_ScrollingFrame.Parent = _Sidebar
_ScrollingFrame.Selectable = true
_ScrollingFrame.NextSelectionUp = nil
_ScrollingFrame.NextSelectionLeft = nil
_ScrollingFrame.NextSelectionRight = nil
_ScrollingFrame.Size = UDim2.new(1, 0, 1, -100)
_ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
_ScrollingFrame.ClipsDescendants = true
_ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
_ScrollingFrame.Position = UDim2.new(0, 0, 0, 100)
_ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
_ScrollingFrame.RootLocalizationTable = nil
_ScrollingFrame.BackgroundTransparency = 1
_ScrollingFrame.SelectionImageObject = nil
_ScrollingFrame.SelectionGroup = true

--______UICorner
______UICorner.Parent = _SaveFile

--_______________UICorner
_______________UICorner.Parent = ___Frame

--__UICorner
__UICorner.Parent = __Jynx

--___Frame
___Frame.BorderSizePixel = 0
___Frame.NextSelectionDown = nil
___Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
___Frame.Parent = _TemplateItemTrigger
___Frame.NextSelectionRight = nil
___Frame.Size = UDim2.new(1, -10, 1, -10)
___Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
___Frame.NextSelectionUp = nil
___Frame.NextSelectionLeft = nil
___Frame.RootLocalizationTable = nil
___Frame.BackgroundTransparency = 0.5
___Frame.SelectionImageObject = nil
___Frame.Position = UDim2.new(0, 5, 0, 5)

--_TemplateItemTrigger
_TemplateItemTrigger.BorderSizePixel = 0
_TemplateItemTrigger.NextSelectionDown = nil
_TemplateItemTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_TemplateItemTrigger.Parent = _SettingList
_TemplateItemTrigger.NextSelectionRight = nil
_TemplateItemTrigger.Size = UDim2.new(1, 0, 0, 75)
_TemplateItemTrigger.Name = "TemplateItemTrigger"
_TemplateItemTrigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
_TemplateItemTrigger.NextSelectionUp = nil
_TemplateItemTrigger.NextSelectionLeft = nil
_TemplateItemTrigger.RootLocalizationTable = nil
_TemplateItemTrigger.Visible = false
_TemplateItemTrigger.BackgroundTransparency = 1
_TemplateItemTrigger.SelectionImageObject = nil

--_3
_3.Active = true
_3.BorderSizePixel = 0
_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_3.Name = "3"
_3.RootLocalizationTable = nil
_3.Parent = _ScrollingFrame
_3.NextSelectionUp = nil
_3.NextSelectionDown = nil
_3.NextSelectionLeft = nil
_3.NextSelectionRight = nil
_3.Size = UDim2.new(0, 100, 0, 100)
_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
_3.BackgroundTransparency = 1
_3.SelectionImageObject = nil
_3:SetAttribute("tab", "Settings")

--__Frame
__Frame.BorderSizePixel = 0
__Frame.NextSelectionDown = nil
__Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
__Frame.Parent = _TemplateItemBool
__Frame.NextSelectionRight = nil
__Frame.Size = UDim2.new(1, -10, 1, -10)
__Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
__Frame.NextSelectionUp = nil
__Frame.NextSelectionLeft = nil
__Frame.RootLocalizationTable = nil
__Frame.BackgroundTransparency = 0.5
__Frame.SelectionImageObject = nil
__Frame.Position = UDim2.new(0, 5, 0, 5)

--_FileList
_FileList.Active = true
_FileList.BorderSizePixel = 0
_FileList.CanvasSize = UDim2.new(0, 0, 0, 0)
_FileList.NextSelectionDown = nil
_FileList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_FileList.Parent = _TabFiles
_FileList.Name = "FileList"
_FileList.Selectable = true
_FileList.NextSelectionUp = nil
_FileList.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
_FileList.NextSelectionLeft = nil
_FileList.NextSelectionRight = nil
_FileList.Size = UDim2.new(1, 0, 1, -120)
_FileList.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
_FileList.ClipsDescendants = true
_FileList.BorderColor3 = Color3.fromRGB(0, 0, 0)
_FileList.Position = UDim2.new(0, 0, 0, 60)
_FileList.RootLocalizationTable = nil
_FileList.BackgroundTransparency = 1
_FileList.SelectionImageObject = nil
_FileList.SelectionGroup = true
_FileList.AutomaticCanvasSize = Enum.AutomaticSize.Y

--______________UICorner
______________UICorner.Parent = _Switch

--_TabSettings
_TabSettings.BorderSizePixel = 0
_TabSettings.NextSelectionDown = nil
_TabSettings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_TabSettings.Parent = __Jynx
_TabSettings.NextSelectionRight = nil
_TabSettings.Size = UDim2.new(1, -100, 1, 0)
_TabSettings.Name = "TabSettings"
_TabSettings.BorderColor3 = Color3.fromRGB(0, 0, 0)
_TabSettings.NextSelectionUp = nil
_TabSettings.NextSelectionLeft = nil
_TabSettings.RootLocalizationTable = nil
_TabSettings.Visible = false
_TabSettings.BackgroundTransparency = 1
_TabSettings.SelectionImageObject = nil
_TabSettings.Position = UDim2.new(0, 100, 0, 0)

--_SaveFile
_SaveFile.TextWrapped = true
_SaveFile.Active = true
_SaveFile.BorderSizePixel = 0
_SaveFile.TextScaled = true
_SaveFile.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_SaveFile.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_SaveFile.TextSize = 14
_SaveFile.Parent = _TabFiles
_SaveFile.TextColor3 = Color3.fromRGB(255, 255, 255)
_SaveFile.NextSelectionUp = nil
_SaveFile.Position = UDim2.new(0, 5, 1, -55)
_SaveFile.NextSelectionRight = nil
_SaveFile.Size = UDim2.new(0.25, -10, 0, 50)
_SaveFile.Name = "SaveFile"
_SaveFile.BorderColor3 = Color3.fromRGB(0, 0, 0)
_SaveFile.Text = "Save"
_SaveFile.NextSelectionLeft = nil
_SaveFile.NextSelectionDown = nil
_SaveFile.RootLocalizationTable = nil
_SaveFile.BackgroundTransparency = 0.5
_SaveFile.SelectionImageObject = nil

--_TabExecutor
_TabExecutor.BorderSizePixel = 0
_TabExecutor.NextSelectionDown = nil
_TabExecutor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_TabExecutor.Parent = __Jynx
_TabExecutor.NextSelectionRight = nil
_TabExecutor.Size = UDim2.new(1, -100, 1, 0)
_TabExecutor.Name = "TabExecutor"
_TabExecutor.BorderColor3 = Color3.fromRGB(0, 0, 0)
_TabExecutor.NextSelectionUp = nil
_TabExecutor.NextSelectionLeft = nil
_TabExecutor.RootLocalizationTable = nil
_TabExecutor.BackgroundTransparency = 1
_TabExecutor.SelectionImageObject = nil
_TabExecutor.Position = UDim2.new(0, 100, 0, 0)

--_Switch
_Switch.TextWrapped = true
_Switch.Active = true
_Switch.BorderSizePixel = 0
_Switch.TextScaled = true
_Switch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_Switch.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_Switch.TextSize = 14
_Switch.Parent = __Frame
_Switch.TextColor3 = Color3.fromRGB(0, 0, 0)
_Switch.NextSelectionUp = nil
_Switch.Position = UDim2.new(1, -190, 0, 5)
_Switch.NextSelectionRight = nil
_Switch.Size = UDim2.new(0, 135, 0, 55)
_Switch.Name = "Switch"
_Switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
_Switch.Text = "Off"
_Switch.NextSelectionLeft = nil
_Switch.NextSelectionDown = nil
_Switch.RootLocalizationTable = nil
_Switch.SelectionImageObject = nil

--_TemplateItemBool
_TemplateItemBool.BorderSizePixel = 0
_TemplateItemBool.NextSelectionDown = nil
_TemplateItemBool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_TemplateItemBool.Parent = _SettingList
_TemplateItemBool.NextSelectionRight = nil
_TemplateItemBool.Size = UDim2.new(1, 0, 0, 75)
_TemplateItemBool.Name = "TemplateItemBool"
_TemplateItemBool.BorderColor3 = Color3.fromRGB(0, 0, 0)
_TemplateItemBool.NextSelectionUp = nil
_TemplateItemBool.NextSelectionLeft = nil
_TemplateItemBool.RootLocalizationTable = nil
_TemplateItemBool.Visible = false
_TemplateItemBool.BackgroundTransparency = 1
_TemplateItemBool.SelectionImageObject = nil

--_UICorner
_UICorner.Parent = _Sidebar

--_SearchFile
_SearchFile.Active = true
_SearchFile.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
_SearchFile.BorderSizePixel = 0
_SearchFile.NextSelectionDown = nil
_SearchFile.TextSize = 16
_SearchFile.TextXAlignment = Enum.TextXAlignment.Left
_SearchFile.TextWrapped = true
_SearchFile.TextYAlignment = Enum.TextYAlignment.Top
_SearchFile.TextScaled = true
_SearchFile.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_SearchFile.TextColor3 = Color3.fromRGB(255, 255, 255)
_SearchFile.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_SearchFile.RootLocalizationTable = nil
_SearchFile.Parent = _TabFiles
_SearchFile.Name = "SearchFile"
_SearchFile.NextSelectionRight = nil
_SearchFile.PlaceholderText = "Search..."
_SearchFile.NextSelectionUp = nil
_SearchFile.NextSelectionLeft = nil
_SearchFile.BorderColor3 = Color3.fromRGB(0, 0, 0)
_SearchFile.Text = ""
_SearchFile.Size = UDim2.new(1, -10, 0, 50)
_SearchFile.Position = UDim2.new(0, 5, 0, 5)
_SearchFile.BackgroundTransparency = 0.5
_SearchFile.SelectionImageObject = nil

--___TextLabel
___TextLabel.TextWrapped = true
___TextLabel.BorderSizePixel = 0
___TextLabel.NextSelectionDown = nil
___TextLabel.TextScaled = true
___TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
___TextLabel.TextXAlignment = Enum.TextXAlignment.Left
___TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
___TextLabel.Parent = ___Frame
___TextLabel.TextSize = 14
___TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
___TextLabel.NextSelectionRight = nil
___TextLabel.Size = UDim2.new(1, -145, 1, 0)
___TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
___TextLabel.Text = "OptionName"
___TextLabel.NextSelectionUp = nil
___TextLabel.NextSelectionLeft = nil
___TextLabel.RootLocalizationTable = nil
___TextLabel.BackgroundTransparency = 1
___TextLabel.SelectionImageObject = nil

--_SettingList
_SettingList.Active = true
_SettingList.BorderSizePixel = 0
_SettingList.CanvasSize = UDim2.new(0, 0, 0, 0)
_SettingList.NextSelectionDown = nil
_SettingList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_SettingList.Parent = _TabSettings
_SettingList.Name = "SettingList"
_SettingList.Selectable = true
_SettingList.NextSelectionUp = nil
_SettingList.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
_SettingList.NextSelectionLeft = nil
_SettingList.NextSelectionRight = nil
_SettingList.Size = UDim2.new(1, 0, 1, -60)
_SettingList.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
_SettingList.ClipsDescendants = true
_SettingList.BorderColor3 = Color3.fromRGB(0, 0, 0)
_SettingList.Position = UDim2.new(0, 0, 0, 60)
_SettingList.RootLocalizationTable = nil
_SettingList.BackgroundTransparency = 1
_SettingList.SelectionImageObject = nil
_SettingList.SelectionGroup = true
_SettingList.AutomaticCanvasSize = Enum.AutomaticSize.Y

--_ExecuteFile
_ExecuteFile.TextWrapped = true
_ExecuteFile.Active = true
_ExecuteFile.BorderSizePixel = 0
_ExecuteFile.TextTransparency = 0.6000000238418579
_ExecuteFile.TextScaled = true
_ExecuteFile.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_ExecuteFile.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_ExecuteFile.TextSize = 14
_ExecuteFile.Parent = _TabFiles
_ExecuteFile.TextColor3 = Color3.fromRGB(255, 255, 255)
_ExecuteFile.NextSelectionUp = nil
_ExecuteFile.Position = UDim2.new(0.5, 5, 1, -55)
_ExecuteFile.NextSelectionRight = nil
_ExecuteFile.Size = UDim2.new(0.25, -10, 0, 50)
_ExecuteFile.Name = "ExecuteFile"
_ExecuteFile.BorderColor3 = Color3.fromRGB(0, 0, 0)
_ExecuteFile.Text = "Execute"
_ExecuteFile.NextSelectionLeft = nil
_ExecuteFile.NextSelectionDown = nil
_ExecuteFile.RootLocalizationTable = nil
_ExecuteFile.BackgroundTransparency = 0.5
_ExecuteFile.SelectionImageObject = nil

--_2
_2.Active = true
_2.BorderSizePixel = 0
_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_2.Name = "2"
_2.RootLocalizationTable = nil
_2.Parent = _ScrollingFrame
_2.NextSelectionUp = nil
_2.NextSelectionDown = nil
_2.NextSelectionLeft = nil
_2.NextSelectionRight = nil
_2.Size = UDim2.new(0, 100, 0, 100)
_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_2.BackgroundTransparency = 1
_2.SelectionImageObject = nil
_2:SetAttribute("tab", "Files")

--_TextLabel
_TextLabel.TextWrapped = true
_TextLabel.BorderSizePixel = 0
_TextLabel.NextSelectionDown = nil
_TextLabel.TextScaled = true
_TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_TextLabel.TextXAlignment = Enum.TextXAlignment.Left
_TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_TextLabel.Parent = _Frame
_TextLabel.TextSize = 14
_TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
_TextLabel.NextSelectionRight = nil
_TextLabel.Size = UDim2.new(1, -145, 1, 0)
_TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
_TextLabel.Text = "FileName"
_TextLabel.NextSelectionUp = nil
_TextLabel.NextSelectionLeft = nil
_TextLabel.RootLocalizationTable = nil
_TextLabel.BackgroundTransparency = 1
_TextLabel.SelectionImageObject = nil

--_Icon
_Icon.BorderSizePixel = 0
_Icon.NextSelectionDown = nil
_Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_Icon.Parent = _1
_Icon.Name = "Icon"
_Icon.Image = "rbxassetid://11570895459"
_Icon.NextSelectionRight = nil
_Icon.NextSelectionUp = nil
_Icon.Size = UDim2.new(0, 80, 0, 80)
_Icon.NextSelectionLeft = nil
_Icon.RootLocalizationTable = nil
_Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
_Icon.ImageColor3 = Color3.fromRGB(128, 0, 255)
_Icon.BackgroundTransparency = 1
_Icon.SelectionImageObject = nil
_Icon.Position = UDim2.new(0, 10, 0, 10)

--_UITextSizeConstraint
_UITextSizeConstraint.Parent = _Codebox
_UITextSizeConstraint.MaxTextSize = 16

--___________UICorner
___________UICorner.Parent = _Frame

--_1
_1.Active = true
_1.BorderSizePixel = 0
_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1.Name = "1"
_1.RootLocalizationTable = nil
_1.Parent = _ScrollingFrame
_1.NextSelectionUp = nil
_1.NextSelectionDown = nil
_1.NextSelectionLeft = nil
_1.NextSelectionRight = nil
_1.Size = UDim2.new(0, 100, 0, 100)
_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1.BackgroundTransparency = 1
_1.SelectionImageObject = nil
_1:SetAttribute("tab", "Executor")

--__UIListLayout
__UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
__UIListLayout.Parent = _FileList
__UIListLayout.Padding = UDim.new(0, 0)

--_DeleteFile
_DeleteFile.TextWrapped = true
_DeleteFile.Active = true
_DeleteFile.BorderSizePixel = 0
_DeleteFile.TextTransparency = 0.6000000238418579
_DeleteFile.TextScaled = true
_DeleteFile.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_DeleteFile.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_DeleteFile.TextSize = 14
_DeleteFile.Parent = _TabFiles
_DeleteFile.TextColor3 = Color3.fromRGB(255, 255, 255)
_DeleteFile.NextSelectionUp = nil
_DeleteFile.Position = UDim2.new(0.25, 5, 1, -55)
_DeleteFile.NextSelectionRight = nil
_DeleteFile.Size = UDim2.new(0.25, -10, 0, 50)
_DeleteFile.Name = "DeleteFile"
_DeleteFile.BorderColor3 = Color3.fromRGB(0, 0, 0)
_DeleteFile.Text = "Delete"
_DeleteFile.NextSelectionLeft = nil
_DeleteFile.NextSelectionDown = nil
_DeleteFile.RootLocalizationTable = nil
_DeleteFile.BackgroundTransparency = 0.5
_DeleteFile.SelectionImageObject = nil

--____________UICorner
____________UICorner.Parent = _Select

--_________UICorner
_________UICorner.Parent = _ExecuteFile

--_UIStroke
_UIStroke.Color = Color3.fromRGB(128, 0, 255)
_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_UIStroke.Parent = _Logo
_UIStroke.Thickness = 5

--_Frame
_Frame.BorderSizePixel = 0
_Frame.NextSelectionDown = nil
_Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_Frame.Parent = _TemplateItem
_Frame.NextSelectionRight = nil
_Frame.Size = UDim2.new(1, -10, 1, -10)
_Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
_Frame.NextSelectionUp = nil
_Frame.NextSelectionLeft = nil
_Frame.RootLocalizationTable = nil
_Frame.BackgroundTransparency = 0.5
_Frame.SelectionImageObject = nil
_Frame.Position = UDim2.new(0, 5, 0, 5)

--____UICorner
____UICorner.Parent = _Codebox

--_TemplateItem
_TemplateItem.BorderSizePixel = 0
_TemplateItem.NextSelectionDown = nil
_TemplateItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_TemplateItem.Parent = _FileList
_TemplateItem.NextSelectionRight = nil
_TemplateItem.Size = UDim2.new(1, 0, 0, 75)
_TemplateItem.Name = "TemplateItem"
_TemplateItem.BorderColor3 = Color3.fromRGB(0, 0, 0)
_TemplateItem.NextSelectionUp = nil
_TemplateItem.NextSelectionLeft = nil
_TemplateItem.RootLocalizationTable = nil
_TemplateItem.Visible = false
_TemplateItem.BackgroundTransparency = 1
_TemplateItem.SelectionImageObject = nil

--_AutoExecuteFile
_AutoExecuteFile.TextWrapped = true
_AutoExecuteFile.Active = true
_AutoExecuteFile.BorderSizePixel = 0
_AutoExecuteFile.TextTransparency = 0.6000000238418579
_AutoExecuteFile.TextScaled = true
_AutoExecuteFile.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_AutoExecuteFile.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_AutoExecuteFile.TextSize = 14
_AutoExecuteFile.Parent = _TabFiles
_AutoExecuteFile.TextColor3 = Color3.fromRGB(255, 255, 255)
_AutoExecuteFile.NextSelectionUp = nil
_AutoExecuteFile.Position = UDim2.new(0.75, 5, 1, -55)
_AutoExecuteFile.NextSelectionRight = nil
_AutoExecuteFile.Size = UDim2.new(0.25, -10, 0, 50)
_AutoExecuteFile.Name = "AutoExecuteFile"
_AutoExecuteFile.BorderColor3 = Color3.fromRGB(0, 0, 0)
_AutoExecuteFile.Text = "Auto Execute"
_AutoExecuteFile.NextSelectionLeft = nil
_AutoExecuteFile.NextSelectionDown = nil
_AutoExecuteFile.RootLocalizationTable = nil
_AutoExecuteFile.BackgroundTransparency = 0.5
_AutoExecuteFile.SelectionImageObject = nil

--________UICorner
________UICorner.Parent = _DeleteFile

--_LogoText
_LogoText.TextWrapped = true
_LogoText.BorderSizePixel = 0
_LogoText.RichText = true
_LogoText.NextSelectionDown = nil
_LogoText.TextScaled = true
_LogoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_LogoText.FontFace = Font.new("rbxasset://fonts/families/Michroma.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_LogoText.TextTransparency = 0.25
_LogoText.Parent = _Logo
_LogoText.TextSize = 14
_LogoText.TextColor3 = Color3.fromRGB(125, 0, 255)
_LogoText.NextSelectionRight = nil
_LogoText.Size = UDim2.new(1, 0, 1, 0)
_LogoText.Name = "LogoText"
_LogoText.BorderColor3 = Color3.fromRGB(0, 0, 0)
_LogoText.Text = "<stroke color=\"#000000\" joins=\"miter\" thickness=\"2\" transparency=\"0.75\">JY<br>NX</br></stroke>"
_LogoText.NextSelectionUp = nil
_LogoText.NextSelectionLeft = nil
_LogoText.RootLocalizationTable = nil
_LogoText.BackgroundTransparency = 1
_LogoText.SelectionImageObject = nil

--_ClearCode
_ClearCode.TextWrapped = true
_ClearCode.Active = true
_ClearCode.BorderSizePixel = 0
_ClearCode.TextScaled = true
_ClearCode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_ClearCode.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_ClearCode.TextSize = 14
_ClearCode.Parent = _TabExecutor
_ClearCode.TextColor3 = Color3.fromRGB(255, 255, 255)
_ClearCode.NextSelectionUp = nil
_ClearCode.Position = UDim2.new(0.5, 5, 1, -55)
_ClearCode.NextSelectionRight = nil
_ClearCode.Size = UDim2.new(0.5, -10, 0, 50)
_ClearCode.Name = "ClearCode"
_ClearCode.BorderColor3 = Color3.fromRGB(0, 0, 0)
_ClearCode.Text = "Clear"
_ClearCode.NextSelectionLeft = nil
_ClearCode.NextSelectionDown = nil
_ClearCode.RootLocalizationTable = nil
_ClearCode.BackgroundTransparency = 0.5
_ClearCode.SelectionImageObject = nil

--_Sidebar
_Sidebar.BorderSizePixel = 0
_Sidebar.NextSelectionDown = nil
_Sidebar.BackgroundColor3 = Color3.fromRGB(32, 0, 64)
_Sidebar.Parent = __Jynx
_Sidebar.NextSelectionRight = nil
_Sidebar.Size = UDim2.new(0, 100, 1, 0)
_Sidebar.Name = "Sidebar"
_Sidebar.BorderColor3 = Color3.fromRGB(0, 0, 0)
_Sidebar.NextSelectionUp = nil
_Sidebar.NextSelectionLeft = nil
_Sidebar.RootLocalizationTable = nil
_Sidebar.SelectionImageObject = nil

--_UIListLayout
_UIListLayout.Parent = _ScrollingFrame
_UIListLayout.Padding = UDim.new(0, 0)

--_Logo
_Logo.Active = true
_Logo.BorderSizePixel = 0
_Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_Logo.Name = "Logo"
_Logo.RootLocalizationTable = nil
_Logo.Parent = _Sidebar
_Logo.NextSelectionUp = nil
_Logo.NextSelectionDown = nil
_Logo.NextSelectionLeft = nil
_Logo.Image = "rbxassetid://7931216247"
_Logo.NextSelectionRight = nil
_Logo.Size = UDim2.new(0, 80, 0, 80)
_Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
_Logo.SelectionImageObject = nil
_Logo.Position = UDim2.new(0, 10, 0, 10)
_Logo.Modal = true

--_______UICorner
_______UICorner.Parent = _SearchFile

--__UIStroke
__UIStroke.Color = Color3.fromRGB(255, 255, 255)
__UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
__UIStroke.Parent = __Jynx
__UIStroke.Thickness = 5

--_ExecuteCode
_ExecuteCode.TextWrapped = true
_ExecuteCode.Active = true
_ExecuteCode.BorderSizePixel = 0
_ExecuteCode.TextScaled = true
_ExecuteCode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_ExecuteCode.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_ExecuteCode.TextSize = 14
_ExecuteCode.Parent = _TabExecutor
_ExecuteCode.TextColor3 = Color3.fromRGB(255, 255, 255)
_ExecuteCode.NextSelectionUp = nil
_ExecuteCode.Position = UDim2.new(0, 5, 1, -55)
_ExecuteCode.NextSelectionRight = nil
_ExecuteCode.Size = UDim2.new(0.5, -10, 0, 50)
_ExecuteCode.Name = "ExecuteCode"
_ExecuteCode.BorderColor3 = Color3.fromRGB(0, 0, 0)
_ExecuteCode.Text = "Execute"
_ExecuteCode.NextSelectionLeft = nil
_ExecuteCode.NextSelectionDown = nil
_ExecuteCode.RootLocalizationTable = nil
_ExecuteCode.BackgroundTransparency = 0.5
_ExecuteCode.SelectionImageObject = nil

--__TextLabel
__TextLabel.TextWrapped = true
__TextLabel.BorderSizePixel = 0
__TextLabel.NextSelectionDown = nil
__TextLabel.TextScaled = true
__TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
__TextLabel.TextXAlignment = Enum.TextXAlignment.Left
__TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
__TextLabel.Parent = __Frame
__TextLabel.TextSize = 14
__TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
__TextLabel.NextSelectionRight = nil
__TextLabel.Size = UDim2.new(1, -195, 1, 0)
__TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
__TextLabel.Text = "OptionName"
__TextLabel.NextSelectionUp = nil
__TextLabel.NextSelectionLeft = nil
__TextLabel.RootLocalizationTable = nil
__TextLabel.BackgroundTransparency = 1
__TextLabel.SelectionImageObject = nil

--__Jynx
__Jynx.BorderSizePixel = 0
__Jynx.NextSelectionDown = nil
__Jynx.BackgroundColor3 = Color3.fromRGB(64, 0, 128)
__Jynx.Parent = _Jynx
__Jynx.AnchorPoint = Vector2.new(0.5, 0.5)
__Jynx.NextSelectionRight = nil
__Jynx.Size = UDim2.new(0, 600, 0, 400)
__Jynx.Name = "Jynx"
__Jynx.ClipsDescendants = true
__Jynx.BorderColor3 = Color3.fromRGB(0, 0, 0)
__Jynx.NextSelectionUp = nil
__Jynx.NextSelectionLeft = nil
__Jynx.RootLocalizationTable = nil
__Jynx.SelectionImageObject = nil
__Jynx.Position = UDim2.new(0.5, 0, 0.5, 0)

--___UIListLayout
___UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
___UIListLayout.Parent = _SettingList
___UIListLayout.Padding = UDim.new(0, 0)

--_TabFiles
_TabFiles.BorderSizePixel = 0
_TabFiles.NextSelectionDown = nil
_TabFiles.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_TabFiles.Parent = __Jynx
_TabFiles.NextSelectionRight = nil
_TabFiles.Size = UDim2.new(1, -100, 1, 0)
_TabFiles.Name = "TabFiles"
_TabFiles.BorderColor3 = Color3.fromRGB(0, 0, 0)
_TabFiles.NextSelectionUp = nil
_TabFiles.NextSelectionLeft = nil
_TabFiles.RootLocalizationTable = nil
_TabFiles.Visible = false
_TabFiles.BackgroundTransparency = 1
_TabFiles.SelectionImageObject = nil
_TabFiles.Position = UDim2.new(0, 100, 0, 0)

--_Codebox
_Codebox.CursorPosition = -1
_Codebox.Active = true
_Codebox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
_Codebox.BorderSizePixel = 0
_Codebox.NextSelectionDown = nil
_Codebox.TextSize = 16
_Codebox.TextXAlignment = Enum.TextXAlignment.Left
_Codebox.TextWrapped = true
_Codebox.TextYAlignment = Enum.TextYAlignment.Top
_Codebox.TextScaled = true
_Codebox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_Codebox.TextColor3 = Color3.fromRGB(255, 255, 255)
_Codebox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_Codebox.RootLocalizationTable = nil
_Codebox.Parent = _TabExecutor
_Codebox.MultiLine = true
_Codebox.Name = "Codebox"
_Codebox.NextSelectionRight = nil
_Codebox.PlaceholderText = "--Welcome to JYNX"
_Codebox.NextSelectionUp = nil
_Codebox.NextSelectionLeft = nil
_Codebox.BorderColor3 = Color3.fromRGB(0, 0, 0)
_Codebox.Text = ""
_Codebox.Size = UDim2.new(1, -10, 1, -65)
_Codebox.Position = UDim2.new(0, 5, 0, 5)
_Codebox.BackgroundTransparency = 0.5
_Codebox.SelectionImageObject = nil
_Codebox.ClearTextOnFocus = false

--_Jynx
_Jynx.IgnoreGuiInset = false
_Jynx.Name = "Jynx"
_Jynx.RootLocalizationTable = nil
_Jynx.Enabled = false

--_____________UICorner
_____________UICorner.Parent = __Frame

--___Icon
___Icon.BorderSizePixel = 0
___Icon.NextSelectionDown = nil
___Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
___Icon.Parent = _3
___Icon.Name = "Icon"
___Icon.Image = "rbxassetid://9753762469"
___Icon.NextSelectionRight = nil
___Icon.NextSelectionUp = nil
___Icon.Size = UDim2.new(0, 80, 0, 80)
___Icon.NextSelectionLeft = nil
___Icon.RootLocalizationTable = nil
___Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
___Icon.BackgroundTransparency = 1
___Icon.SelectionImageObject = nil
___Icon.Position = UDim2.new(0, 10, 0, 10)

local tab = "Executor"
for _, a in ipairs(_ScrollingFrame:GetChildren()) do
	if a:IsA("ImageButton") then
		a.MouseButton1Click:Connect(function()
			__Jynx:FindFirstChild("Tab" .. tab).Visible = false
			for _, b in ipairs(_ScrollingFrame:GetChildren()) do
				if b:GetAttribute("tab") == tab then
					b.Icon.ImageColor3 = Color3.new(1, 1, 1)
				end
			end
			tab = a:GetAttribute("tab")
			a.Icon.ImageColor3 = Color3.fromRGB(128, 0, 255)
			__Jynx:FindFirstChild("Tab" .. tab).Visible = true
		end)
	end
end

--Window script
_Logo.MouseButton1Click:Connect(function()
	_Jynx.Enabled = false
end)

local runService = game:GetService("RunService")
runService.RenderStepped:Connect(function(deltaTime)
	if _Jynx.AbsoluteSize.Y < 500 or options["Force compact mode"] then
		__Jynx.Size = UDim2.new(0, 600, 0, 300)
	else
		__Jynx.Size = UDim2.new(0, 600, 0, 400)
	end
end)

--TODO REMOVE MOBILE CONFLICT
-- if game.CoreGui.RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.HubBar.HubBarContainer:FindFirstChild("RecordTab") then
-- 	game.CoreGui.RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.HubBar.HubBarContainer.RecordTab.Visible = false
-- else
-- 	for _, a in ipairs(game.CoreGui.RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.HubBar.HubBarContainer:GetChildren()) do
-- 		if a:IsA("TextButton") then
-- 			a.Size = UDim2.new(0.2, 0, 1, 0)
-- 		end
-- 	end
-- end


local clickPos = {}
function posButton(obj)
	if not clickPos[obj] then
		clickPos[obj] = obj.Position
	end
	return clickPos[obj]
end

--Executor Tab
_ExecuteCode.MouseButton1Click:Connect(function()
	local pos = posButton(_ExecuteCode)
	_ExecuteCode.Position += UDim2.new(0, 0, 0, 10)
	animate(_ExecuteCode, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = pos})
	coroutine.wrap(loadstring(_Codebox.Text))()
end)
local undoCode = ""
_ClearCode.MouseButton1Click:Connect(function()
	local pos = posButton(_ClearCode)
	_ClearCode.Position += UDim2.new(0, 0, 0, 10)
	animate(_ClearCode, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = pos})
	if _ClearCode.Text == "Clear" then
		undoCode = _Codebox.Text
		_Codebox.Text = ""
		_ClearCode.Text = "Undo"
		_Codebox:GetPropertyChangedSignal("Text"):Wait()
		_ClearCode.Text = "Clear"
	else
		_Codebox.Text = undoCode
		_ClearCode.Text = "Clear"
	end
end)

--Files Tab
for _, idAndAE in pairs(savedScripts) do
	if idAndAE < 0 then
		coroutine.wrap(loadstring(readfile("JYNX__CORE_" .. update .. "/script" .. math.abs(idAndAE) .. ".jynx")))()
	end
end
local currentSelectedFile = nil
function reloadFiles()
	currentSelectedFile = nil
	_DeleteFile.TextTransparency = 0.6
	_ExecuteFile.TextTransparency = 0.6
	_AutoExecuteFile.TextTransparency = 0.6
	_AutoExecuteFile.Text = "Auto Execute"
	for _, a in ipairs(_FileList:GetChildren()) do
		if string.find(a.Name, "File_") then
			a:Destroy()
		end
	end
	_AutoExecuteFile.BackgroundColor3 = Color3.new(0, 0, 0)
	for scriptName, idAndAE in pairs(savedScripts) do
		local id, AE = math.abs(idAndAE), idAndAE < 0
		local template = _TemplateItem:Clone()
		template.Visible = true
		template.Parent = _FileList
		template.Name = "File_" .. scriptName
		template.Frame.TextLabel.Text = scriptName
		template.Frame.Select.MouseButton1Click:Connect(function()
			if currentSelectedFile == scriptName then
				animate(template.Frame, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 0, 0)})
				animate(template.Frame.Select, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 1, 1); TextColor3 = Color3.new(0, 0, 0)})
				animate(template.Frame.TextLabel, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.new(1, 1, 1)})
				currentSelectedFile = nil
				_DeleteFile.TextTransparency = 0.6
				_ExecuteFile.TextTransparency = 0.6
				_AutoExecuteFile.TextTransparency = 0.6
				_AutoExecuteFile.Text = "Auto Execute"
				_AutoExecuteFile.BackgroundColor3 = Color3.new(0, 0, 0)
			elseif currentSelectedFile then
				local oldFile = _FileList:FindFirstChild("File_" .. currentSelectedFile)
				if oldFile then
					animate(oldFile.Frame, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 0, 0)})
					animate(oldFile.Frame.Select, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 1, 1); TextColor3 = Color3.new(0, 0, 0)})
					animate(oldFile.Frame.TextLabel, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.new(1, 1, 1)})
				end
				animate(template.Frame, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 1, 1)})
				animate(template.Frame.Select, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 0, 0); TextColor3 = Color3.new(1, 1, 1)})
				animate(template.Frame.TextLabel, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.new(0, 0, 0)})
				currentSelectedFile = scriptName
				_DeleteFile.TextTransparency = 0
				_ExecuteFile.TextTransparency = 0
				_AutoExecuteFile.TextTransparency = 0
				_AutoExecuteFile.Text = "Auto Execute: OFF"
				animate(_AutoExecuteFile, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0.5, 0, 0)})
				if AE then
					_AutoExecuteFile.Text = "Auto Execute: ON"
					animate(_AutoExecuteFile, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 0.5, 0)})
				end
			else
				animate(template.Frame, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 1, 1)})
				animate(template.Frame.Select, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 0, 0); TextColor3 = Color3.new(1, 1, 1)})
				animate(template.Frame.TextLabel, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.new(0, 0, 0)})
				currentSelectedFile = scriptName
				_DeleteFile.TextTransparency = 0
				_ExecuteFile.TextTransparency = 0
				_AutoExecuteFile.TextTransparency = 0
				_AutoExecuteFile.Text = "Auto Execute: OFF"
				animate(_AutoExecuteFile, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0.5, 0, 0)})
				if AE then
					_AutoExecuteFile.Text = "Auto Execute: ON"
					animate(_AutoExecuteFile, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 0.5, 0)})
				end
			end
		end)
	end
end

_SaveFile.MouseButton1Click:Connect(function()
	if _SaveFile.Text == "Save" then
		if #_SearchFile.Text > 5 then
			local pos = posButton(_SaveFile)
			_SaveFile.Position += UDim2.new(0, 0, 0, 10)
			animate(_SaveFile, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = pos})
			local _next = 1
			for _, _ in pairs(savedScripts) do
				_next += 1
			end
			savedScripts[_SearchFile.Text] = _next
			writefile("JYNX__CORE_" .. update .. "/script" .. _next .. ".jynx", _Codebox.Text)
			reloadFiles()
			writefile("JYNX__CORE_" .. update .. "/scriptTree.json", game:GetService("HttpService"):JSONEncode(savedScripts))
		end
	elseif currentSelectedFile then
		_Codebox.Text = readfile("JYNX__CORE_" .. update .. "/script" .. math.abs(savedScripts[currentSelectedFile]) .. ".jynx", _Codebox.Text)
	end
end)

_DeleteFile.MouseButton1Click:Connect(function()
	if currentSelectedFile and _DeleteFile.TextTransparency == 0 then
		local pos = posButton(_DeleteFile)
		_DeleteFile.Position += UDim2.new(0, 0, 0, 10)
		animate(_DeleteFile, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = pos})
		delfile("JYNX__CORE_" .. update .. "/script" .. math.abs(savedScripts[currentSelectedFile]) .. ".jynx")
		savedScripts[currentSelectedFile] = nil
		reloadFiles()
		writefile("JYNX__CORE_" .. update .. "/scriptTree.json", game:GetService("HttpService"):JSONEncode(savedScripts))
	end
end)

_ExecuteFile.MouseButton1Click:Connect(function()
	if currentSelectedFile and _ExecuteFile.TextTransparency == 0 then
		local pos = posButton(_ExecuteFile)
		_ExecuteFile.Position += UDim2.new(0, 0, 0, 10)
		animate(_ExecuteFile, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = pos})
		coroutine.wrap(loadstring(readfile("JYNX__CORE_" .. update .. "/script" .. math.abs(savedScripts[currentSelectedFile]) .. ".jynx")))()
	end
end)

_AutoExecuteFile.MouseButton1Click:Connect(function()
	if currentSelectedFile and _AutoExecuteFile.TextTransparency == 0 then
		local pos = posButton(_AutoExecuteFile)
		_AutoExecuteFile.Position += UDim2.new(0, 0, 0, 10)
		animate(_AutoExecuteFile, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = pos})
		savedScripts[currentSelectedFile] = 1 - savedScripts[currentSelectedFile]
		_AutoExecuteFile.Text = "Auto Execute: OFF"
		animate(_AutoExecuteFile, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0.5, 0, 0)})
		if savedScripts[currentSelectedFile] < 0 then
			_AutoExecuteFile.Text = "Auto Execute: ON"
			animate(_AutoExecuteFile, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 0.5, 0)})
		end
	end
end)

_SearchFile:GetPropertyChangedSignal("Text"):Connect(function()
	reloadFiles()
	for _, a in ipairs(_FileList:GetChildren()) do
		if string.sub(a.Name, 1, 5) == "File_" then
			a.Visible = string.find(string.sub(a.Name, 6), _SearchFile.Text)
		end
	end
end)
reloadFiles()

--Settings Tab
local triggers = {
	["Delete JYNX data and close"] = function()
		if isfolder("JYNX__CORE_" .. update) then
			delfolder("JYNX__CORE_" .. update)
			game.Players.LocalPlayer:Kick("JYNX data deleted. JYNX needs to restart")
		end
	end;
	["Delete workspace"] = function()
		for _, a in ipairs(listfiles("")) do
			if isfile(a) then
				delfile(a)
			elseif a ~= "JYNX__CORE_" .. update then
				delfolder(a)
			end
		end
	end;
}
function reloadSettings()
	for _, a in ipairs(_SettingList:GetChildren()) do
		if a.Name == "Setting" then
			a:Destroy()
		end
	end
	for setting, value in pairs(options) do
		local template = _TemplateItemBool:Clone()
		template.Visible = true
		template.Name = "Setting_" .. setting
		template.Frame.TextLabel.Text = setting
		template.Frame.Switch.Position = UDim2.new(1, -190, 0, 5)
		template.Frame.Switch.Text = "Off"
		if value then
			template.Frame.Switch.Position = UDim2.new(1, -140, 0, 5)
			template.Frame.Switch.Text = "On"
		end
		template.Parent = _SettingList
		template.Frame.Switch.MouseButton1Click:Connect(function()
			value = not value
			if value then
				template.Frame.Switch.Text = "On"
				animate(template.Frame.Switch, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(1, -140, 0, 5)})
			else
				template.Frame.Switch.Text = "Off"
				animate(template.Frame.Switch, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(1, -190, 0, 5)})
			end
			options[setting] = value
			writefile("JYNX__CORE_" .. update .. "/settings.json", game:GetService("HttpService"):JSONEncode(options))
		end)
	end
	for setting, value in pairs(triggers) do
		local template = _TemplateItemTrigger:Clone()
		template.Visible = true
		template.Name = "Setting_" .. setting
		template.Frame.TextLabel.Text = setting
		template.Parent = _SettingList
		template.Frame.Trigger.MouseButton1Click:Connect(function()
			local pos = posButton(template.Frame.Trigger)
			template.Frame.Trigger.Position += UDim2.new(0, 0, 0, 10)
			animate(template.Frame.Trigger, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = pos})
			value()
		end)
	end
end

_SearchSetting:GetPropertyChangedSignal("Text"):Connect(function()
	reloadSettings()
	for _, a in ipairs(_SettingList:GetChildren()) do
		if string.sub(a.Name, 1, 8) == "Setting_" then
			a.Visible = string.find(string.sub(a.Name, 9), _SearchSetting.Text)
		end
	end
end)
reloadSettings()

--TODO REMOVE MOBILE CONFLICT
-- --####JYNXTAB####
-- --Compiled using SIMPLE GUI COMPILER
-- --SIMPLE GUI CONVERTER BY R_299P

-- --##Variables##
-- local AspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
-- local TabSelection = Instance.new("ImageLabel")
-- local JynxTab = Instance.new("TextButton")
-- local Icon = Instance.new("ImageLabel")
-- local Title = Instance.new("TextLabel")

-- --##Properties##

-- --AspectRatioConstraint
-- AspectRatioConstraint.AspectRatio = 1.024999976158142
-- AspectRatioConstraint.Name = "AspectRatioConstraint"
-- AspectRatioConstraint.Parent = Icon

-- --TabSelection
-- TabSelection.ZIndex = 3
-- TabSelection.SliceCenter = Rect.new(3, 1, 4, 5)
-- TabSelection.ScaleType = Enum.ScaleType.Slice
-- TabSelection.NextSelectionDown = nil
-- TabSelection.Parent = JynxTab
-- TabSelection.Name = "TabSelection"
-- TabSelection.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuSelection.png"
-- TabSelection.NextSelectionRight = nil
-- TabSelection.NextSelectionUp = nil
-- TabSelection.Size = UDim2.new(1, 0, 0, 6)
-- TabSelection.NextSelectionLeft = nil
-- TabSelection.RootLocalizationTable = nil
-- TabSelection.Visible = false
-- TabSelection.BorderColor3 = Color3.fromRGB(27, 42, 53)
-- TabSelection.BackgroundTransparency = 1
-- TabSelection.SelectionImageObject = nil
-- TabSelection.Position = UDim2.new(0, 0, 1, -6)

-- --JynxTab
-- JynxTab.Active = true
-- JynxTab.ZIndex = 3
-- JynxTab.FontFace = Font.new("rbxasset://fonts/families/LegacyArial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
-- JynxTab.TextColor3 = Color3.fromRGB(27, 42, 53)
-- JynxTab.NextSelectionUp = nil
-- JynxTab.NextSelectionRight = nil
-- JynxTab.Size = UDim2.new(0.20000000298023224, 0, 1, 0)
-- JynxTab.Name = "JynxTab"
-- JynxTab.BorderColor3 = Color3.fromRGB(27, 42, 53)
-- JynxTab.Text = ""
-- JynxTab.NextSelectionLeft = nil
-- JynxTab.NextSelectionDown = nil
-- JynxTab.RootLocalizationTable = nil
-- JynxTab.BackgroundTransparency = 1
-- JynxTab.SelectionImageObject = nil
-- JynxTab.Parent = game.CoreGui.RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.HubBar.HubBarContainer

-- --Icon
-- Icon.ZIndex = 3
-- Icon.NextSelectionDown = nil
-- Icon.Parent = JynxTab
-- Icon.Name = "Icon"
-- Icon.Image = "rbxassetid://7931216247"
-- Icon.NextSelectionRight = nil
-- Icon.NextSelectionUp = nil
-- Icon.Size = UDim2.new(0, 44, 0, 37)
-- Icon.NextSelectionLeft = nil
-- Icon.RootLocalizationTable = nil
-- Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
-- Icon.ImageTransparency = 0.5
-- Icon.BackgroundTransparency = 1
-- Icon.SelectionImageObject = nil
-- Icon.Position = UDim2.new(0, 15, 0.5, -18)

-- --Title
-- Title.ZIndex = 3
-- Title.NextSelectionDown = nil
-- Title.TextXAlignment = Enum.TextXAlignment.Left
-- Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
-- Title.TextTransparency = 0.5
-- Title.Parent = Icon
-- Title.TextSize = 24
-- Title.TextColor3 = Color3.fromRGB(255, 255, 255)
-- Title.Position = UDim2.new(1.2000000476837158, 0, 0, 0)
-- Title.NextSelectionRight = nil
-- Title.Size = UDim2.new(1.0499999523162842, 0, 1, 0)
-- Title.Name = "Title"
-- Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
-- Title.Text = "Jynx"
-- Title.NextSelectionUp = nil
-- Title.NextSelectionLeft = nil
-- Title.RootLocalizationTable = nil
-- Title.BackgroundTransparency = 1
-- Title.SelectionImageObject = nil

-- JynxTab.MouseButton1Click:Connect(function()
-- 	_Jynx.Enabled = true
-- end)

--TODO REMOVE MOBILE CONFLICT
--Compiled using SIMPLE GUI COMPILER
--SIMPLE GUI CONVERTER BY R_299P

--##Variables##
local _Background = Instance.new("ImageButton")
local _StateOverlay = Instance.new("ImageLabel")
local _ChatIcon = Instance.new("TextButton")
local _Icon = Instance.new("ImageLabel")
local _BadgeContainer = Instance.new("Frame")

--##Properties##

--_Background
_Background.Active = true
_Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_Background.Name = "Background"
_Background.RootLocalizationTable = nil
_Background.Parent = _ChatIcon
_Background.NextSelectionUp = nil
_Background.NextSelectionDown = nil
_Background.NextSelectionLeft = nil
_Background.AnchorPoint = Vector2.new(0, 1)
_Background.Image = "rbxasset://textures/ui/TopBar/iconBase.png"
_Background.NextSelectionRight = nil
_Background.Size = UDim2.new(0, 32, 0, 32)
_Background.BorderColor3 = Color3.fromRGB(27, 42, 53)
_Background.BackgroundTransparency = 1
_Background.SelectionImageObject = nil
_Background.Position = UDim2.new(0, 0, 1, 0)

--_StateOverlay
_StateOverlay.ZIndex = 2
_StateOverlay.SliceCenter = Rect.new(8, 8, 8, 8)
_StateOverlay.ScaleType = Enum.ScaleType.Slice
_StateOverlay.NextSelectionDown = nil
_StateOverlay.Parent = _Background
_StateOverlay.Name = "StateOverlay"
_StateOverlay.Image = "rbxasset://LuaPackages/Packages/_Index/UIBlox/UIBlox/AppImageAtlas/img_set_1x_1.png"
_StateOverlay.ImageRectSize = Vector2.new(17, 17)
_StateOverlay.NextSelectionRight = nil
_StateOverlay.NextSelectionUp = nil
_StateOverlay.Size = UDim2.new(1, 0, 1, 0)
_StateOverlay.NextSelectionLeft = nil
_StateOverlay.RootLocalizationTable = nil
_StateOverlay.BorderColor3 = Color3.fromRGB(27, 42, 53)
_StateOverlay.ImageTransparency = 1
_StateOverlay.ImageRectOffset = Vector2.new(402, 494)
_StateOverlay.BackgroundTransparency = 1
_StateOverlay.SelectionImageObject = nil

--_ChatIcon
_ChatIcon.LayoutOrder = 3
_ChatIcon.Active = true
_ChatIcon.FontFace = Font.new("rbxasset://fonts/families/LegacyArial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
_ChatIcon.TextColor3 = Color3.fromRGB(27, 42, 53)
_ChatIcon.NextSelectionUp = nil
_ChatIcon.NextSelectionRight = nil
_ChatIcon.Size = UDim2.new(0, 44, 1, 0)
_ChatIcon.Name = "ChatIcon"
_ChatIcon.Selectable = false
_ChatIcon.BorderColor3 = Color3.fromRGB(27, 42, 53)
_ChatIcon.Text = ""
_ChatIcon.NextSelectionLeft = nil
_ChatIcon.NextSelectionDown = nil
_ChatIcon.RootLocalizationTable = nil
_ChatIcon.BackgroundTransparency = 1
_ChatIcon.SelectionImageObject = nil

--_Icon
_Icon.NextSelectionDown = nil
_Icon.Parent = _Background
_Icon.Name = "Icon"
_Icon.AnchorPoint = Vector2.new(0.5, 0.5)
_Icon.Image = "rbxasset://textures/ui/TopBar/chatOff.png"
_Icon.NextSelectionRight = nil
_Icon.NextSelectionUp = nil
_Icon.Size = UDim2.new(0, 20, 0, 20)
_Icon.NextSelectionLeft = nil
_Icon.RootLocalizationTable = nil
_Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
_Icon.BackgroundTransparency = 1
_Icon.SelectionImageObject = nil
_Icon.Position = UDim2.new(0.5, 0, 0.5, 0)

--_BadgeContainer
_BadgeContainer.ZIndex = 2
_BadgeContainer.NextSelectionDown = nil
_BadgeContainer.Parent = _ChatIcon
_BadgeContainer.NextSelectionRight = nil
_BadgeContainer.Size = UDim2.new(1, 0, 1, 0)
_BadgeContainer.Name = "BadgeContainer"
_BadgeContainer.BorderColor3 = Color3.fromRGB(27, 42, 53)
_BadgeContainer.NextSelectionUp = nil
_BadgeContainer.NextSelectionLeft = nil
_BadgeContainer.RootLocalizationTable = nil
_BadgeContainer.BackgroundTransparency = 1
_BadgeContainer.SelectionImageObject = nil
_ChatIcon.Parent = game.CoreGui.TopBarApp.TopBarFrame.LeftFrame

_ChatIcon.MouseButton1Click:Connect(function()
	_Jynx.Enabled = true
end)

_Background.MouseButton1Click:Connect(function()
	_Jynx.Enabled = true
end)

_Jynx.Parent = game.CoreGui

print("JYNX loaded v1.0.1")
