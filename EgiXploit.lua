local Library = {}
local SaveTheme = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local Stats = game:GetService("Stats")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer

local function createTheme(cfg)
    return {
        ["Shadow"] = cfg.Shadow,
        ["Background"] = cfg.Background,
        ["Page"] = cfg.Page,
        ["Main"] = cfg.Main,
        ["Text & Icon"] = cfg.TextAndIcon,
        ["Function"] = {
            ["Toggle"] = {
                ["Background"] = cfg.ElementBg,
                ["True"] = {
                    ["Toggle Background"] = cfg.AccentDark,
                    ["Toggle Value"] = cfg.Accent
                },
                ["False"] = {
                    ["Toggle Background"] = cfg.ToggleOffBg,
                    ["Toggle Value"] = cfg.ToggleOffKnob
                }
            },
            ["Label"] = {
                ["Background"] = cfg.ElementBg
            },
            ["Dropdown"] = {
                ["Background"] = cfg.ElementBg,
                ["Value Background"] = cfg.ValueBg,
                ["Value Stroke"] = cfg.ValueStroke,
                ["Dropdown Select"] = {
                    ["Background"] = cfg.DropdownBg,
                    ["Search"] = cfg.DropdownSearch,
                    ["Item Background"] = cfg.DropdownItem
                }
            },
            ["Slider"] = {
                ["Background"] = cfg.ElementBg,
                ["Value Background"] = cfg.ValueBg,
                ["Value Stroke"] = cfg.ValueStroke,
                ["Slider Bar"] = cfg.AccentDark,
                ["Slider Bar Value"] = cfg.Accent,
                ["Circle Value"] = Color3.fromRGB(255, 255, 255)
            },
            ["Code"] = {
                ["Background"] = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, cfg.ElementBg),
                    ColorSequenceKeypoint.new(1, cfg.ElementBg)
                }),
                ["Background Code"] = cfg.CodeHeader,
                ["Background Code Value"] = cfg.CodeBg,
                ["ScrollingFrame Code"] = cfg.Accent
            },
            ["Button"] = {
                ["Background"] = cfg.ElementBg,
                ["Click"] = cfg.TextAndIcon
            },
            ["Textbox"] = {
                ["Background"] = cfg.ElementBg,
                ["Value Background"] = cfg.ValueBg,
                ["Value Stroke"] = cfg.ValueStroke
            },
            ["Keybind"] = {
                ["Background"] = cfg.ElementBg,
                ["Value Background"] = cfg.ValueBg,
                ["Value Stroke"] = cfg.ValueStroke,
                ["True"] = {
                    ["Toggle Background"] = cfg.AccentDark,
                    ["Toggle Value"] = cfg.Accent
                },
                ["False"] = {
                    ["Toggle Background"] = cfg.ToggleOffBg,
                    ["Toggle Value"] = cfg.ToggleOffKnob
                }
            },
            ["Color Picker"] = {
                ["Background"] = cfg.ElementBg,
                ["Color Select"] = {
                    ["Background"] = cfg.DropdownBg,
                    ["UIStroke"] = cfg.ValueStroke
                }
            }
        }
    }
end

local Themes = {
    ["index"] = {"Dark", "Amethyst", "Blue", "Red", "Orange", "Emerald", "Rose"},

    ["Dark"] = createTheme({
        Shadow = Color3.fromRGB(10, 10, 12),
        Background = Color3.fromRGB(20, 20, 20),
        Page = Color3.fromRGB(18, 18, 18),
        Main = Color3.fromRGB(70, 130, 180),
        TextAndIcon = Color3.fromRGB(235, 235, 235),
        ElementBg = Color3.fromRGB(26, 26, 28),
        ValueBg = Color3.fromRGB(20, 20, 22),
        ValueStroke = Color3.fromRGB(230, 230, 230),
        AccentDark = Color3.fromRGB(40, 55, 70),
        Accent = Color3.fromRGB(70, 130, 180),
        ToggleOffBg = Color3.fromRGB(32, 32, 35),
        ToggleOffKnob = Color3.fromRGB(48, 48, 52),
        DropdownBg = Color3.fromRGB(20, 20, 22),
        DropdownSearch = Color3.fromRGB(30, 30, 34),
        DropdownItem = Color3.fromRGB(34, 34, 38),
        CodeHeader = Color3.fromRGB(35, 35, 38),
        CodeBg = Color3.fromRGB(26, 26, 29)
    }),

    ["Amethyst"] = createTheme({
        Shadow = Color3.fromRGB(14, 14, 20),
        Background = Color3.fromRGB(29, 28, 38),
        Page = Color3.fromRGB(24, 24, 31),
        Main = Color3.fromRGB(91, 68, 209),
        TextAndIcon = Color3.fromRGB(255, 255, 255),
        ElementBg = Color3.fromRGB(33, 31, 44),
        ValueBg = Color3.fromRGB(24, 24, 31),
        ValueStroke = Color3.fromRGB(255, 255, 255),
        AccentDark = Color3.fromRGB(44, 34, 103),
        Accent = Color3.fromRGB(91, 68, 209),
        ToggleOffBg = Color3.fromRGB(38, 37, 50),
        ToggleOffKnob = Color3.fromRGB(52, 50, 68),
        DropdownBg = Color3.fromRGB(24, 24, 31),
        DropdownSearch = Color3.fromRGB(35, 35, 44),
        DropdownItem = Color3.fromRGB(45, 45, 56),
        CodeHeader = Color3.fromRGB(44, 42, 60),
        CodeBg = Color3.fromRGB(32, 30, 44)
    }),

    ["Blue"] = createTheme({
        Shadow = Color3.fromRGB(10, 14, 22),
        Background = Color3.fromRGB(18, 26, 38),
        Page = Color3.fromRGB(15, 21, 32),
        Main = Color3.fromRGB(45, 136, 245),
        TextAndIcon = Color3.fromRGB(240, 246, 255),
        ElementBg = Color3.fromRGB(23, 33, 48),
        ValueBg = Color3.fromRGB(16, 23, 34),
        ValueStroke = Color3.fromRGB(180, 210, 255),
        AccentDark = Color3.fromRGB(24, 64, 118),
        Accent = Color3.fromRGB(45, 136, 245),
        ToggleOffBg = Color3.fromRGB(28, 39, 56),
        ToggleOffKnob = Color3.fromRGB(45, 62, 88),
        DropdownBg = Color3.fromRGB(16, 23, 34),
        DropdownSearch = Color3.fromRGB(25, 36, 52),
        DropdownItem = Color3.fromRGB(32, 46, 66),
        CodeHeader = Color3.fromRGB(26, 40, 58),
        CodeBg = Color3.fromRGB(18, 28, 42)
    }),

    ["Red"] = createTheme({
        Shadow = Color3.fromRGB(20, 10, 12),
        Background = Color3.fromRGB(34, 18, 20),
        Page = Color3.fromRGB(27, 14, 16),
        Main = Color3.fromRGB(220, 56, 68),
        TextAndIcon = Color3.fromRGB(255, 240, 242),
        ElementBg = Color3.fromRGB(43, 23, 26),
        ValueBg = Color3.fromRGB(28, 15, 17),
        ValueStroke = Color3.fromRGB(255, 185, 190),
        AccentDark = Color3.fromRGB(110, 26, 34),
        Accent = Color3.fromRGB(220, 56, 68),
        ToggleOffBg = Color3.fromRGB(52, 28, 32),
        ToggleOffKnob = Color3.fromRGB(76, 42, 47),
        DropdownBg = Color3.fromRGB(28, 15, 17),
        DropdownSearch = Color3.fromRGB(45, 24, 27),
        DropdownItem = Color3.fromRGB(58, 30, 34),
        CodeHeader = Color3.fromRGB(52, 26, 30),
        CodeBg = Color3.fromRGB(36, 18, 21)
    }),

    ["Orange"] = createTheme({
        Shadow = Color3.fromRGB(20, 14, 10),
        Background = Color3.fromRGB(35, 25, 18),
        Page = Color3.fromRGB(28, 20, 14),
        Main = Color3.fromRGB(238, 126, 38),
        TextAndIcon = Color3.fromRGB(255, 246, 238),
        ElementBg = Color3.fromRGB(44, 32, 23),
        ValueBg = Color3.fromRGB(30, 21, 15),
        ValueStroke = Color3.fromRGB(255, 210, 175),
        AccentDark = Color3.fromRGB(118, 60, 18),
        Accent = Color3.fromRGB(238, 126, 38),
        ToggleOffBg = Color3.fromRGB(54, 40, 29),
        ToggleOffKnob = Color3.fromRGB(78, 58, 42),
        DropdownBg = Color3.fromRGB(30, 21, 15),
        DropdownSearch = Color3.fromRGB(46, 34, 24),
        DropdownItem = Color3.fromRGB(58, 43, 30),
        CodeHeader = Color3.fromRGB(52, 38, 26),
        CodeBg = Color3.fromRGB(36, 26, 18)
    }),

    ["Emerald"] = createTheme({
        Shadow = Color3.fromRGB(10, 18, 14),
        Background = Color3.fromRGB(17, 33, 26),
        Page = Color3.fromRGB(14, 27, 21),
        Main = Color3.fromRGB(32, 188, 120),
        TextAndIcon = Color3.fromRGB(238, 255, 247),
        ElementBg = Color3.fromRGB(22, 42, 33),
        ValueBg = Color3.fromRGB(15, 28, 22),
        ValueStroke = Color3.fromRGB(180, 250, 215),
        AccentDark = Color3.fromRGB(18, 92, 60),
        Accent = Color3.fromRGB(32, 188, 120),
        ToggleOffBg = Color3.fromRGB(27, 50, 40),
        ToggleOffKnob = Color3.fromRGB(42, 74, 60),
        DropdownBg = Color3.fromRGB(15, 28, 22),
        DropdownSearch = Color3.fromRGB(24, 45, 36),
        DropdownItem = Color3.fromRGB(30, 56, 45),
        CodeHeader = Color3.fromRGB(25, 48, 38),
        CodeBg = Color3.fromRGB(17, 34, 27)
    }),

    ["Rose"] = createTheme({
        Shadow = Color3.fromRGB(20, 10, 16),
        Background = Color3.fromRGB(35, 20, 29),
        Page = Color3.fromRGB(28, 16, 23),
        Main = Color3.fromRGB(232, 72, 148),
        TextAndIcon = Color3.fromRGB(255, 240, 248),
        ElementBg = Color3.fromRGB(44, 25, 37),
        ValueBg = Color3.fromRGB(30, 17, 25),
        ValueStroke = Color3.fromRGB(255, 190, 225),
        AccentDark = Color3.fromRGB(115, 32, 72),
        Accent = Color3.fromRGB(232, 72, 148),
        ToggleOffBg = Color3.fromRGB(54, 31, 45),
        ToggleOffKnob = Color3.fromRGB(78, 45, 65),
        DropdownBg = Color3.fromRGB(30, 17, 25),
        DropdownSearch = Color3.fromRGB(46, 27, 39),
        DropdownItem = Color3.fromRGB(58, 34, 49),
        CodeHeader = Color3.fromRGB(52, 30, 44),
        CodeBg = Color3.fromRGB(36, 20, 30)
    })
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "HydroGii"
ScreenGui.Parent = (not RunService:IsStudio() and CoreGui) or LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function addToTheme(path, instance)
    if not SaveTheme[path] then
        SaveTheme[path] = {}
    end
    table.insert(SaveTheme[path], instance)
end

local function getColorFromPath(themeTable, path)
    local current = themeTable
    for _, key in ipairs(string.split(path, ".")) do
        current = current and current[key]
    end
    return current
end

function Library:setTheme(themeTable)
    for path, objects in pairs(SaveTheme) do
        local colorVal = getColorFromPath(themeTable, path)
        if colorVal then
            for _, obj in pairs(objects) do
                if obj and obj.Parent then
                    if obj:IsA("Frame") or obj:IsA("CanvasGroup") then
                        obj.BackgroundColor3 = colorVal
                    elseif obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
                        obj.TextColor3 = colorVal
                    elseif obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
                        obj.ImageColor3 = colorVal
                    elseif obj:IsA("ScrollingFrame") then
                        obj.ScrollBarImageColor3 = colorVal
                    elseif obj:IsA("UIStroke") then
                        obj.Color = colorVal
                    elseif obj:IsA("UIGradient") then
                        obj.Color = colorVal
                    end
                end
            end
        end
    end
end

local IconModule
pcall(function()
    IconModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dummyrme/Library/refs/heads/main/Icon.lua"))()
end)

local function getIcon(iconInput)
    if IconModule and IconModule.Icons and IconModule.Icons[iconInput] then
        local iconData = IconModule.Icons[iconInput]
        local sheet = IconModule.Spritesheets[tostring(iconData.Image)]
        if sheet then
            return {
                Image = sheet,
                ImageRectSize = iconData.ImageRectSize,
                ImageRectPosition = iconData.ImageRectPosition
            }
        end
    end
    if type(iconInput) == "string" and not iconInput:find("rbxassetid://") then
        return {
            Image = "rbxassetid://" .. iconInput,
            ImageRectSize = Vector2.new(0, 0),
            ImageRectPosition = Vector2.new(0, 0)
        }
    elseif type(iconInput) == "number" then
        return {
            Image = "rbxassetid://" .. tostring(iconInput),
            ImageRectSize = Vector2.new(0, 0),
            ImageRectPosition = Vector2.new(0, 0)
        }
    else
        return {
            Image = tostring(iconInput or ""),
            ImageRectSize = Vector2.new(0, 0),
            ImageRectPosition = Vector2.new(0, 0)
        }
    end
end

local function tween(props)
    local info = TweenInfo.new(
        props.t or 0.15,
        props.s or Enum.EasingStyle.Linear,
        Enum.EasingDirection[props.d or "Out"]
    )
    return TweenService:Create(props.v, info, props.g)
end

local function attachCleanShadow(parent, cornerRadius, spread, shadowColor, transparency)
    local shadow = Instance.new("ImageLabel")
    shadow.Name = "CleanShadow"
    shadow.Parent = parent
    shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    shadow.BackgroundTransparency = 1
    shadow.Position = UDim2.new(0.5, 0, 0.5, 2)
    shadow.Size = UDim2.new(1, spread * 2, 1, spread * 2)
    shadow.ZIndex = 0
    shadow.Image = "rbxassetid://5554236805"
    shadow.ImageColor3 = shadowColor or Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency = transparency or 0.45
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(23, 23, 277, 277)
    addToTheme("Shadow", shadow)
    return shadow
end

local function autoCanvas(scrollingFrame, listLayout, extraPadding)
    listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, (listLayout.AbsoluteContentSize.Y + (extraPadding or 5)))
    end)
end

local function createRipple(hitArea, container)
    local mouse = LocalPlayer:GetMouse()
    local relX = mouse.X - hitArea.AbsolutePosition.X
    local relY = mouse.Y - hitArea.AbsolutePosition.Y

    if relX < 0 or relY < 0 or relX > hitArea.AbsoluteSize.X or relY > hitArea.AbsoluteSize.Y then
        return
    end

    local circle = Instance.new("Frame")
    circle.Parent = container
    circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    circle.BackgroundTransparency = 0.7
    circle.BorderSizePixel = 0
    circle.AnchorPoint = Vector2.new(0.5, 0.5)
    circle.Position = UDim2.new(0, relX, 0, relY)
    circle.Size = UDim2.new(0, 0, 0, 0)
    circle.ZIndex = 10

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = circle

    local maxSize = hitArea.AbsoluteSize.X * 1.5
    local anim = TweenService:Create(
        circle,
        TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {Size = UDim2.new(0, maxSize, 0, maxSize), BackgroundTransparency = 1}
    )
    anim.Completed:Connect(function()
        circle:Destroy()
    end)
    anim:Play()
end

local function makeDraggable(dragHandle, targetFrame)
    local dragging = false
    local dragInput = nil
    local dragStart = nil
    local startPos = nil

    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = targetFrame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    dragHandle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging and dragStart and startPos then
            local delta = input.Position - dragStart
            local newPos = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
            tween({v = targetFrame, t = 0.05, s = Enum.EasingStyle.Linear, d = "InOut", g = {Position = newPos}}):Play()
        end
    end)
end

local function createClickButton(parent)
    local btn = Instance.new("TextButton")
    btn.Name = "Click"
    btn.Parent = parent
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundTransparency = 1
    btn.BorderSizePixel = 0
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.Font = Enum.Font.SourceSans
    btn.Text = ""
    btn.TextColor3 = Color3.fromRGB(0, 0, 0)
    btn.TextSize = 14
    return btn
end

local function createElementCard(parent, titleText, descText, iconName, elementType, initialTheme)
    local wrapper = Instance.new("Frame")
    wrapper.Name = "Real Background"
    wrapper.Parent = parent
    wrapper.BackgroundTransparency = 1
    wrapper.BorderSizePixel = 0
    wrapper.Size = UDim2.new(1, 0, 0, 35)
    wrapper.ClipsDescendants = true

    local bg = Instance.new("Frame")
    bg.Name = "Background"
    bg.Parent = wrapper
    bg.BackgroundColor3 = initialTheme.Function[elementType].Background
    bg.BackgroundTransparency = 0.28
    bg.BorderSizePixel = 0
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.ClipsDescendants = true
    addToTheme("Function." .. elementType .. ".Background", bg)

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = bg

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Thickness = 1
    stroke.Transparency = 0.94
    stroke.Parent = bg

    local textHolder = Instance.new("Frame")
    textHolder.Name = "T"
    textHolder.Parent = bg
    textHolder.AnchorPoint = Vector2.new(0, 0.5)
    textHolder.BackgroundTransparency = 1
    textHolder.BorderSizePixel = 0
    textHolder.Position = UDim2.new(0, 0, 0.5, 0)
    textHolder.Size = UDim2.new(1, 0, 1, 0)

    local listLayout = Instance.new("UIListLayout")
    listLayout.Parent = textHolder
    listLayout.SortOrder = Enum.SortOrder.LayoutOrder
    listLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    local padding = Instance.new("UIPadding")
    padding.Parent = textHolder
    padding.PaddingLeft = UDim.new(0, 13)
    padding.PaddingRight = UDim.new(0, 70)

    local descLabel = Instance.new("TextLabel")
    descLabel.Name = "Desc"
    descLabel.Parent = textHolder
    descLabel.BackgroundTransparency = 1
    descLabel.BorderSizePixel = 0
    descLabel.LayoutOrder = 1
    descLabel.Size = UDim2.new(1, 0, 0, 14)
    descLabel.Font = Enum.Font.GothamBold
    descLabel.RichText = true
    descLabel.Text = tostring(descText or "")
    descLabel.TextColor3 = initialTheme["Text & Icon"]
    descLabel.TextSize = 10
    descLabel.TextTransparency = 0.55
    descLabel.TextWrapped = true
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.Visible = (descText ~= nil and descText ~= "")
    descLabel.AutomaticSize = Enum.AutomaticSize.Y
    addToTheme("Text & Icon", descLabel)

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Parent = textHolder
    titleLabel.BackgroundTransparency = 1
    titleLabel.BorderSizePixel = 0
    titleLabel.Size = UDim2.new(1, 0, 0, 14)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.RichText = true
    titleLabel.Text = tostring(titleText or "null")
    titleLabel.TextColor3 = initialTheme["Text & Icon"]
    titleLabel.TextSize = 12
    titleLabel.TextWrapped = true
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.AutomaticSize = Enum.AutomaticSize.Y
    addToTheme("Text & Icon", titleLabel)

    local iconImage = nil
    if iconName and iconName ~= "" then
        padding.PaddingLeft = UDim.new(0, 50)

        local iconContainer = Instance.new("Frame")
        iconContainer.Name = "Image"
        iconContainer.Parent = bg
        iconContainer.BackgroundTransparency = 1
        iconContainer.BorderSizePixel = 0
        iconContainer.Size = UDim2.new(0, 40, 1, 0)

        iconImage = Instance.new("ImageLabel")
        iconImage.Name = "Icon"
        iconImage.Parent = iconContainer
        iconImage.AnchorPoint = Vector2.new(0.5, 0.5)
        iconImage.BackgroundTransparency = 1
        iconImage.BorderSizePixel = 0
        iconImage.Position = UDim2.new(0.5, 0, 0.5, 0)
        iconImage.Size = UDim2.new(0, 20, 0, 20)
        local iconData = getIcon(iconName)
        iconImage.Image = iconData.Image
        iconImage.ImageRectSize = iconData.ImageRectSize
        iconImage.ImageRectOffset = iconData.ImageRectPosition
        iconImage.ImageColor3 = initialTheme["Text & Icon"]
        iconImage.ImageTransparency = 0.5
        addToTheme("Text & Icon", iconImage)

        local divider = Instance.new("Frame")
        divider.Parent = iconContainer
        divider.AnchorPoint = Vector2.new(1, 0.5)
        divider.BackgroundColor3 = initialTheme["Text & Icon"]
        divider.BackgroundTransparency = 0.88
        divider.BorderSizePixel = 0
        divider.Position = UDim2.new(1, 0, 0.5, 0)
        divider.Size = UDim2.new(0, 1, 0.7, 0)
        addToTheme("Text & Icon", divider)
    end

    local function updateHeight()
        task.defer(function()
            local targetHeight = listLayout.AbsoluteContentSize.Y + 21
            if wrapper.Size.Y.Offset ~= targetHeight then
                wrapper.Size = UDim2.new(1, 0, 0, targetHeight)
            end
        end)
    end
    task.delay(0.1, updateHeight)
    listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateHeight)

    local methods = {}
    function methods:SetTextTransparencyTitle(val)
        tween({v = titleLabel, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {TextTransparency = val}}):Play()
        if iconImage then
            tween({v = iconImage, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {ImageTransparency = val}}):Play()
        end
    end
    function methods:SetSizeT(rightPad)
        padding.PaddingRight = UDim.new(0, rightPad)
    end
    function methods:SetTitle(newTitle)
        titleLabel.Text = tostring(newTitle)
    end
    function methods:SetDesc(newDesc)
        descLabel.Text = tostring(newDesc or "")
        descLabel.Visible = (newDesc ~= nil and newDesc ~= "")
    end
    function methods:SetVisibleDesc(vis)
        titleLabel.Visible = vis
    end

    return bg, methods
end

local function addDropdownSelect(anchorFrame, clickFrame, isMulti, callback, defaultVal, itemsList, initialTheme)
    local holder = Instance.new("Frame")
    holder.Name = "F"
    holder.Parent = anchorFrame
    holder.AnchorPoint = Vector2.new(1, 0.5)
    holder.BackgroundTransparency = 1
    holder.BorderSizePixel = 0
    holder.Position = UDim2.new(1, 0, 0.5, 0)
    holder.Size = UDim2.new(0, 120, 0.8, 0)

    local holderLayout = Instance.new("UIListLayout")
    holderLayout.Parent = holder
    holderLayout.Padding = UDim.new(0, 15)
    holderLayout.FillDirection = Enum.FillDirection.Horizontal
    holderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    holderLayout.SortOrder = Enum.SortOrder.LayoutOrder
    holderLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    local holderPad = Instance.new("UIPadding")
    holderPad.Parent = holder
    holderPad.PaddingRight = UDim.new(0, 13)

    local valueBox = Instance.new("Frame")
    valueBox.Parent = holder
    valueBox.BackgroundColor3 = initialTheme.Function.Dropdown["Value Background"]
    valueBox.BackgroundTransparency = 0.25
    valueBox.BorderSizePixel = 0
    valueBox.Size = UDim2.new(0, 100, 0, 20)
    addToTheme("Function.Dropdown.Value Background", valueBox)

    local valueCorner = Instance.new("UICorner")
    valueCorner.CornerRadius = UDim.new(0, 4)
    valueCorner.Parent = valueBox

    local valueStroke = Instance.new("UIStroke")
    valueStroke.Color = initialTheme.Function.Dropdown["Value Stroke"]
    valueStroke.Thickness = 1
    valueStroke.Transparency = 0.9
    valueStroke.Parent = valueBox
    addToTheme("Function.Dropdown.Value Stroke", valueStroke)

    local valueLabel = Instance.new("TextLabel")
    valueLabel.Parent = valueBox
    valueLabel.BackgroundTransparency = 1
    valueLabel.BorderSizePixel = 0
    valueLabel.Size = UDim2.new(0.8, 0, 1, 0)
    valueLabel.Font = Enum.Font.GothamBold
    valueLabel.RichText = true
    valueLabel.Text = "--"
    valueLabel.TextColor3 = initialTheme["Text & Icon"]
    valueLabel.TextSize = 10
    valueLabel.TextTransparency = 0.2
    valueLabel.TextXAlignment = Enum.TextXAlignment.Left
    valueLabel.TextTruncate = Enum.TextTruncate.AtEnd
    addToTheme("Text & Icon", valueLabel)

    local valuePad = Instance.new("UIPadding")
    valuePad.Parent = valueBox
    valuePad.PaddingLeft = UDim.new(0, 5)
    valuePad.PaddingRight = UDim.new(0, 5)

    local arrowIcon = Instance.new("ImageLabel")
    arrowIcon.Parent = valueBox
    arrowIcon.AnchorPoint = Vector2.new(1, 0.5)
    arrowIcon.BackgroundTransparency = 1
    arrowIcon.BorderSizePixel = 0
    arrowIcon.Position = UDim2.new(1, 0, 0.5, 0)
    arrowIcon.Size = UDim2.new(0, 20, 0, 20)
    arrowIcon.Image = "rbxassetid://14937709869"
    arrowIcon.ImageColor3 = initialTheme["Text & Icon"]
    arrowIcon.ImageTransparency = 0.3
    addToTheme("Text & Icon", arrowIcon)

    local popup = Instance.new("Frame")
    popup.Parent = ScreenGui
    popup.BackgroundColor3 = initialTheme.Function.Dropdown["Dropdown Select"].Background
    popup.BackgroundTransparency = 0.08
    popup.BorderSizePixel = 0
    popup.Size = UDim2.new(0, 150, 0, 0)
    popup.ClipsDescendants = true
    popup.Visible = false
    popup.ZIndex = 20
    addToTheme("Function.Dropdown.Dropdown Select.Background", popup)

    local popupCorner = Instance.new("UICorner")
    popupCorner.CornerRadius = UDim.new(0, 6)
    popupCorner.Parent = popup

    local popupStroke = Instance.new("UIStroke")
    popupStroke.Color = Color3.fromRGB(255, 255, 255)
    popupStroke.Thickness = 1
    popupStroke.Transparency = 1
    popupStroke.Parent = popup

    local popupPad = Instance.new("UIPadding")
    popupPad.Parent = popup
    popupPad.PaddingBottom = UDim.new(0, 5)
    popupPad.PaddingLeft = UDim.new(0, 5)
    popupPad.PaddingRight = UDim.new(0, 5)
    popupPad.PaddingTop = UDim.new(0, 5)

    local searchFrame = Instance.new("Frame")
    searchFrame.Name = "Search"
    searchFrame.Parent = popup
    searchFrame.BackgroundColor3 = initialTheme.Function.Dropdown["Dropdown Select"].Search
    searchFrame.BackgroundTransparency = 0.3
    searchFrame.BorderSizePixel = 0
    searchFrame.Size = UDim2.new(1, 0, 0, 20)
    addToTheme("Function.Dropdown.Dropdown Select.Search", searchFrame)

    local searchCorner = Instance.new("UICorner")
    searchCorner.CornerRadius = UDim.new(0, 4)
    searchCorner.Parent = searchFrame

    local searchBox = Instance.new("TextBox")
    searchBox.Parent = searchFrame
    searchBox.Active = true
    searchBox.BackgroundTransparency = 1
    searchBox.BorderSizePixel = 0
    searchBox.Size = UDim2.new(1, 0, 1, 0)
    searchBox.Font = Enum.Font.Gotham
    searchBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
    searchBox.PlaceholderText = "Search . . ."
    searchBox.Text = ""
    searchBox.TextColor3 = initialTheme["Text & Icon"]
    searchBox.TextSize = 11
    addToTheme("Text & Icon", searchBox)

    local searchLine = Instance.new("Frame")
    searchLine.Parent = searchFrame
    searchLine.AnchorPoint = Vector2.new(0, 1)
    searchLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    searchLine.BackgroundTransparency = 0.9
    searchLine.BorderSizePixel = 0
    searchLine.Position = UDim2.new(0, 0, 1, 0)
    searchLine.Size = UDim2.new(1, 0, 0, 2)

    local listContainer = Instance.new("Frame")
    listContainer.Parent = popup
    listContainer.BackgroundTransparency = 1
    listContainer.BorderSizePixel = 0
    listContainer.Size = UDim2.new(1, 0, 1, 0)

    local listContainerPad = Instance.new("UIPadding")
    listContainerPad.Parent = listContainer
    listContainerPad.PaddingTop = UDim.new(0, 25)

    local listInner = Instance.new("Frame")
    listInner.Parent = listContainer
    listInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    listInner.BackgroundTransparency = 0.96
    listInner.BorderSizePixel = 0
    listInner.Size = UDim2.new(1, 0, 1, 0)

    local listInnerCorner = Instance.new("UICorner")
    listInnerCorner.CornerRadius = UDim.new(0, 4)
    listInnerCorner.Parent = listInner

    local listInnerPad = Instance.new("UIPadding")
    listInnerPad.Parent = listInner
    listInnerPad.PaddingBottom = UDim.new(0, 5)
    listInnerPad.PaddingLeft = UDim.new(0, 5)
    listInnerPad.PaddingRight = UDim.new(0, 3)
    listInnerPad.PaddingTop = UDim.new(0, 5)

    local itemScroll = Instance.new("ScrollingFrame")
    itemScroll.Name = "ScrollingFrame"
    itemScroll.Parent = listInner
    itemScroll.Active = true
    itemScroll.BackgroundTransparency = 1
    itemScroll.BorderSizePixel = 0
    itemScroll.Size = UDim2.new(1, 0, 1, 0)
    itemScroll.ClipsDescendants = true
    itemScroll.ScrollBarImageColor3 = initialTheme.Main
    itemScroll.ScrollBarThickness = 2
    addToTheme("Main", itemScroll)

    local itemLayout = Instance.new("UIListLayout")
    itemLayout.Parent = itemScroll
    itemLayout.SortOrder = Enum.SortOrder.LayoutOrder
    itemLayout.Padding = UDim.new(0, 3)

    local itemScrollPad = Instance.new("UIPadding")
    itemScrollPad.Parent = itemScroll
    itemScrollPad.PaddingRight = UDim.new(0, 5)

    local triggerBtn = createClickButton(clickFrame)
    local isOpen = false

    local function resizePopup()
        if not isOpen then return end
        local targetH = math.min(itemLayout.AbsoluteContentSize.Y + 54, 200)
        tween({v = popup, t = 0.15, s = Enum.EasingStyle.Exponential, d = "Out", g = {Size = UDim2.new(0, 150, 0, targetH)}}):Play()
    end

    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        local query = string.lower(searchBox.Text)
        for _, child in pairs(itemScroll:GetChildren()) do
            if child:IsA("Frame") and child:FindFirstChild("TextLabel") then
                if query ~= "" then
                    child.Visible = string.find(string.lower(child.TextLabel.Text), query, 1, true) ~= nil
                else
                    child.Visible = true
                end
            end
        end
        resizePopup()
    end)

    local function openPopup()
        if isOpen then return end
        popup.Visible = true
        local posX = (valueBox.AbsolutePosition.X - popup.Parent.AbsolutePosition.X) + valueBox.Size.X.Offset - 150
        local posY = (valueBox.AbsolutePosition.Y - popup.Parent.AbsolutePosition.Y) + valueBox.Size.Y.Offset + 4
        local targetH = math.min(itemLayout.AbsoluteContentSize.Y + 54, 200)

        popup.Position = UDim2.new(0, posX, 0, posY)
        tween({
            v = popup,
            t = 0.15,
            s = Enum.EasingStyle.Exponential,
            d = "Out",
            g = {Size = UDim2.new(0, 150, 0, targetH), Position = UDim2.new(0, posX, 0, posY)}
        }):Play()
        tween({v = popupStroke, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {Transparency = 0.9}}):Play()
        isOpen = true
    end

    local function closePopup()
        if not isOpen then return end
        tween({v = popupStroke, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {Transparency = 1}}):Play()
        local anim = tween({v = popup, t = 0.15, s = Enum.EasingStyle.Exponential, d = "Out", g = {Size = UDim2.new(0, 150, 0, 0)}})
        anim:Play()
        anim.Completed:Connect(function()
            popup.Visible = false
            isOpen = false
        end)
    end

    UserInputService.InputBegan:Connect(function(input)
        if not isOpen then return end
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            local mouse = LocalPlayer:GetMouse()
            local pPos = popup.AbsolutePosition
            local pSize = popup.AbsoluteSize
            if mouse.X < pPos.X or mouse.X > pPos.X + pSize.X or mouse.Y < pPos.Y - 25 or mouse.Y > pPos.Y + pSize.Y then
                closePopup()
            end
        end
    end)

    triggerBtn.MouseButton1Click:Connect(function()
        if not isOpen then
            openPopup()
        else
            closePopup()
        end
    end)

    local dropdownMethods = {}
    local multiSelected = {}
    local singleSelected = nil

    function dropdownMethods:Clear(targetItem)
        if isMulti then
            multiSelected = {}
            valueLabel.Text = "--"
            pcall(callback, multiSelected)
        end
        for _, child in ipairs(itemScroll:GetChildren()) do
            if child:IsA("Frame") and child:FindFirstChild("TextLabel") then
                local match = false
                if targetItem == nil then
                    match = true
                elseif type(targetItem) == "string" and child.TextLabel.Text == targetItem then
                    match = true
                elseif type(targetItem) == "table" then
                    for _, v in ipairs(targetItem) do
                        if child.TextLabel.Text == v then
                            match = true
                            break
                        end
                    end
                end

                if match then
                    if singleSelected == child.TextLabel.Text then
                        singleSelected = nil
                        valueLabel.Text = "--"
                        pcall(callback, valueLabel.Text)
                    end
                    child:Destroy()
                end
            end
        end
        if targetItem == nil or singleSelected == targetItem or valueLabel.Text == targetItem then
            valueLabel.Text = "--"
        end
        defaultVal = nil
    end

    function dropdownMethods:SetList(newList)
        if type(newList) ~= "table" then return end
        dropdownMethods:Clear()
        for _, item in ipairs(newList) do
            dropdownMethods:Add(item)
        end
    end

    function dropdownMethods:Add(itemText)
        local itemFrame = Instance.new("Frame")
        itemFrame.Name = "Item"
        itemFrame.Parent = itemScroll
        itemFrame.BackgroundColor3 = initialTheme.Function.Dropdown["Dropdown Select"]["Item Background"]
        itemFrame.BackgroundTransparency = 0.65
        itemFrame.BorderSizePixel = 0
        itemFrame.Size = UDim2.new(1, 0, 0, 20)
        addToTheme("Function.Dropdown.Dropdown Select.Item Background", itemFrame)

        local itemCorner = Instance.new("UICorner")
        itemCorner.CornerRadius = UDim.new(0, 4)
        itemCorner.Parent = itemFrame

        local itemPad = Instance.new("UIPadding")
        itemPad.PaddingLeft = UDim.new(0, 6)
        itemPad.Parent = itemFrame

        local itemLabel = Instance.new("TextLabel")
        itemLabel.Parent = itemFrame
        itemLabel.BackgroundTransparency = 1
        itemLabel.BorderSizePixel = 0
        itemLabel.Size = UDim2.new(1, 0, 1, 0)
        itemLabel.Font = Enum.Font.GothamBold
        itemLabel.Text = tostring(itemText)
        itemLabel.TextColor3 = initialTheme["Text & Icon"]
        itemLabel.TextSize = 11
        itemLabel.TextXAlignment = Enum.TextXAlignment.Left
        itemLabel.TextTransparency = 0.65
        addToTheme("Text & Icon", itemLabel)

        local itemBtn = createClickButton(itemFrame)

        local function setInactive()
            tween({v = itemLabel, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {TextTransparency = 0.65}}):Play()
        end
        local function setActive()
            tween({v = itemLabel, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {TextTransparency = 0}}):Play()
        end

        itemBtn.MouseButton1Click:Connect(function()
            if isMulti then
                if multiSelected[itemText] then
                    multiSelected[itemText] = nil
                    setInactive()
                else
                    multiSelected[itemText] = true
                    setActive()
                end
                local selectedArr = {}
                for k in pairs(multiSelected) do
                    table.insert(selectedArr, k)
                end
                valueLabel.Text = (#selectedArr > 0) and table.concat(selectedArr, ", ") or "--"
                pcall(callback, selectedArr)
            else
                for _, child in pairs(itemScroll:GetChildren()) do
                    if child:IsA("Frame") and child:FindFirstChild("TextLabel") then
                        tween({v = child.TextLabel, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {TextTransparency = 0.65}}):Play()
                    end
                end
                setActive()
                singleSelected = itemText
                valueLabel.Text = tostring(itemText)
                pcall(callback, valueLabel.Text)
                closePopup()
            end
        end)

        task.delay(0, function()
            if isMulti and type(defaultVal) == "table" then
                for _, v in ipairs(defaultVal) do
                    if v == itemText then
                        setActive()
                        multiSelected[itemText] = true
                    end
                end
                local selectedArr = {}
                for k in pairs(multiSelected) do
                    table.insert(selectedArr, k)
                end
                if #selectedArr > 0 then
                    valueLabel.Text = table.concat(selectedArr, ", ")
                    pcall(callback, selectedArr)
                end
            elseif not isMulti and itemText == defaultVal then
                setActive()
                singleSelected = itemText
                valueLabel.Text = tostring(itemText)
                pcall(callback, valueLabel.Text)
            end
        end)
    end

    function dropdownMethods:SetValue(val)
        if isMulti then
            multiSelected = {}
            if type(val) == "table" then
                for _, v in ipairs(val) do
                    multiSelected[v] = true
                end
                valueLabel.Text = (#val > 0) and table.concat(val, ", ") or "--"
            else
                multiSelected[val] = true
                valueLabel.Text = tostring(val)
            end
            for _, child in ipairs(itemScroll:GetChildren()) do
                if child:IsA("Frame") and child:FindFirstChild("TextLabel") then
                    local active = multiSelected[child.TextLabel.Text]
                    tween({v = child.TextLabel, t = 0.05, s = Enum.EasingStyle.Exponential, d = "Out", g = {TextTransparency = active and 0 or 0.65}}):Play()
                end
            end
            pcall(callback, multiSelected)
        else
            singleSelected = val
            valueLabel.Text = tostring(val)
            for _, child in ipairs(itemScroll:GetChildren()) do
                if child:IsA("Frame") and child:FindFirstChild("TextLabel") then
                    local active = (child.TextLabel.Text == tostring(val))
                    tween({v = child.TextLabel, t = 0.05, s = Enum.EasingStyle.Exponential, d = "Out", g = {TextTransparency = active and 0 or 0.65}}):Play()
                end
            end
            pcall(callback, val)
        end
    end

    for _, item in ipairs(itemsList or {}) do
        dropdownMethods:Add(item)
    end
    autoCanvas(itemScroll, itemLayout, 5)

    return dropdownMethods
end

function Library:Window(options)
    options = options or {}
    local winTitle = options.Title or "EgiHub"
    local winDesc = options.Desc or "Owner: HydroGii"
    local winIcon = options.Icon or "door-open"
    local currentThemeName = Themes[options.Theme] and options.Theme or "Dark"
    local activeTheme = Themes[currentThemeName]

    local config = options.Config or {}
    local toggleKeybind = config.Keybind or Enum.KeyCode.LeftControl
    local winSize = config.Size or UDim2.new(0, 530, 0, 400)
    local closeBtnCfg = options.CloseUIButton or {Enabled = false, Text = "Near Hub"}

    local isResizing = false
    local isMinimized = false

    local windowHolder = Instance.new("Frame")
    windowHolder.Name = "WindowHolder"
    windowHolder.Parent = ScreenGui
    windowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
    windowHolder.BackgroundTransparency = 1
    windowHolder.BorderSizePixel = 0
    windowHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
    windowHolder.Size = winSize
    windowHolder.Visible = true

    local windowShadow = attachCleanShadow(windowHolder, 17, 18, activeTheme.Shadow, 0.4)

    local mainBg = Instance.new("CanvasGroup")
    mainBg.Name = "Background"
    mainBg.Parent = windowHolder
    mainBg.AnchorPoint = Vector2.new(0.5, 0.5)
    mainBg.BackgroundColor3 = activeTheme.Background
    mainBg.BackgroundTransparency = 0.16
    mainBg.BorderSizePixel = 0
    mainBg.Position = UDim2.new(0.5, 0, 0.5, 0)
    mainBg.Size = UDim2.new(1, 0, 1, 0)
    mainBg.ZIndex = 1
    mainBg.ClipsDescendants = true
    mainBg.GroupTransparency = 1
    addToTheme("Background", mainBg)

    local mainCorner = Instance.new("UICorner")
    mainCorner.CornerRadius = UDim.new(0, 17)
    mainCorner.Parent = mainBg

    local mainStroke = Instance.new("UIStroke")
    mainStroke.Color = Color3.fromRGB(255, 255, 255)
    mainStroke.Thickness = 1
    mainStroke.Transparency = 0.9
    mainStroke.Parent = mainBg

    local origSize = mainBg.Size
    mainBg.Size = origSize - UDim2.fromOffset(5, 5)
    windowShadow.ImageTransparency = 1
    tween({v = mainBg, t = 0.18, s = Enum.EasingStyle.Linear, d = "InOut", g = {GroupTransparency = 0, Size = origSize}}):Play()
    tween({v = windowShadow, t = 0.22, s = Enum.EasingStyle.Linear, d = "InOut", g = {ImageTransparency = 0.4}}):Play()

    local pageContainer = Instance.new("Frame")
    pageContainer.Name = "Page"
    pageContainer.Parent = mainBg
    pageContainer.BackgroundTransparency = 1
    pageContainer.BorderSizePixel = 0
    pageContainer.Size = UDim2.new(1, 0, 1, 0)

    local pagePad = Instance.new("UIPadding")
    pagePad.Parent = pageContainer
    pagePad.PaddingBottom = UDim.new(0, 5)
    pagePad.PaddingLeft = UDim.new(0, 120)
    pagePad.PaddingRight = UDim.new(0, 5)
    pagePad.PaddingTop = UDim.new(0, 45)

    local topbar = Instance.new("Frame")
    topbar.Name = "Topbar"
    topbar.Parent = mainBg
    topbar.BackgroundTransparency = 1
    topbar.BorderSizePixel = 0
    topbar.Size = UDim2.new(1, 0, 0, 42)

    local topDivider = Instance.new("Frame")
    topDivider.Parent = topbar
    topDivider.AnchorPoint = Vector2.new(0, 1)
    topDivider.BackgroundColor3 = activeTheme.Page
    topDivider.BackgroundTransparency = 0.35
    topDivider.BorderSizePixel = 0
    topDivider.Position = UDim2.new(0, 0, 1, 0)
    topDivider.Size = UDim2.new(1, 0, 0, 2)
    addToTheme("Page", topDivider)

    local controlsFrame = Instance.new("Frame")
    controlsFrame.Name = "Ct"
    controlsFrame.Parent = topbar
    controlsFrame.BackgroundTransparency = 1
    controlsFrame.BorderSizePixel = 0
    controlsFrame.Size = UDim2.new(1, 0, 1, 0)

    local controlsPad = Instance.new("UIPadding")
    controlsPad.Parent = controlsFrame
    controlsPad.PaddingBottom = UDim.new(0, 5)
    controlsPad.PaddingLeft = UDim.new(0, 10)
    controlsPad.PaddingRight = UDim.new(0, 10)
    controlsPad.PaddingTop = UDim.new(0, 5)

    local controlsLayout = Instance.new("UIListLayout")
    controlsLayout.Parent = controlsFrame
    controlsLayout.Padding = UDim.new(0, 10)
    controlsLayout.FillDirection = Enum.FillDirection.Horizontal
    controlsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    controlsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    controlsLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    local hideBtn = Instance.new("ImageButton")
    hideBtn.Name = "Size"
    hideBtn.Parent = controlsFrame
    hideBtn.Active = true
    hideBtn.BackgroundTransparency = 1
    hideBtn.BorderSizePixel = 0
    hideBtn.LayoutOrder = 1
    hideBtn.Size = UDim2.new(0, 16, 0, 16)
    hideBtn.Image = "rbxassetid://15082210525"
    hideBtn.ImageColor3 = activeTheme["Text & Icon"]
    hideBtn.ImageTransparency = 0.4
    addToTheme("Text & Icon", hideBtn)

    local maximizeBtn = Instance.new("ImageButton")
    maximizeBtn.Name = "Minisize"
    maximizeBtn.Parent = controlsFrame
    maximizeBtn.Active = true
    maximizeBtn.BackgroundTransparency = 1
    maximizeBtn.BorderSizePixel = 0
    maximizeBtn.LayoutOrder = 2
    maximizeBtn.Size = UDim2.new(0, 16, 0, 16)
    maximizeBtn.Image = "rbxassetid://13857987062"
    maximizeBtn.ImageColor3 = activeTheme["Text & Icon"]
    maximizeBtn.ImageTransparency = 0.4
    addToTheme("Text & Icon", maximizeBtn)

    local closeBtn = Instance.new("ImageButton")
    closeBtn.Name = "Close"
    closeBtn.Parent = controlsFrame
    closeBtn.Active = true
    closeBtn.BackgroundTransparency = 1
    closeBtn.BorderSizePixel = 0
    closeBtn.LayoutOrder = 3
    closeBtn.Size = UDim2.new(0, 16, 0, 16)
    closeBtn.Image = "rbxassetid://15082305656"

    local themeSelectorAnchor = Instance.new("Frame")
    themeSelectorAnchor.Name = "DropdownValue"
    themeSelectorAnchor.Parent = controlsFrame
    themeSelectorAnchor.AnchorPoint = Vector2.new(1, 0.5)
    themeSelectorAnchor.BackgroundTransparency = 1
    themeSelectorAnchor.BorderSizePixel = 0
    themeSelectorAnchor.Size = UDim2.new(0, 120, 0, 20)

    local titleArea = Instance.new("Frame")
    titleArea.Name = "Td"
    titleArea.Parent = topbar
    titleArea.BackgroundTransparency = 1
    titleArea.BorderSizePixel = 0
    titleArea.Size = UDim2.new(1, 0, 1, 0)

    local titlePad = Instance.new("UIPadding")
    titlePad.Parent = titleArea
    titlePad.PaddingBottom = UDim.new(0, 5)
    titlePad.PaddingLeft = UDim.new(0, 10)
    titlePad.PaddingRight = UDim.new(0, 10)
    titlePad.PaddingTop = UDim.new(0, 5)

    local titleAreaLayout = Instance.new("UIListLayout")
    titleAreaLayout.Parent = titleArea
    titleAreaLayout.Padding = UDim.new(0, 8)
    titleAreaLayout.FillDirection = Enum.FillDirection.Horizontal
    titleAreaLayout.SortOrder = Enum.SortOrder.LayoutOrder
    titleAreaLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    local logoImg = Instance.new("ImageLabel")
    logoImg.Name = "Icon"
    logoImg.Parent = titleArea
    logoImg.BackgroundTransparency = 1
    logoImg.BorderSizePixel = 0
    logoImg.Size = UDim2.new(0, 28, 0, 28)
    local logoData = getIcon(winIcon)
    logoImg.Image = logoData.Image
    logoImg.ImageRectSize = logoData.ImageRectSize
    logoImg.ImageRectOffset = logoData.ImageRectPosition
    logoImg.ImageColor3 = activeTheme["Text & Icon"]
    addToTheme("Text & Icon", logoImg)

    local titleTextHolder = Instance.new("Frame")
    titleTextHolder.Name = "Title"
    titleTextHolder.Parent = titleArea
    titleTextHolder.BackgroundTransparency = 1
    titleTextHolder.BorderSizePixel = 0
    titleTextHolder.LayoutOrder = 1
    titleTextHolder.Size = UDim2.new(0, 160, 1, 0)

    local titleTextLayout = Instance.new("UIListLayout")
    titleTextLayout.Parent = titleTextHolder
    titleTextLayout.SortOrder = Enum.SortOrder.LayoutOrder
    titleTextLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    local mainTitleLbl = Instance.new("TextLabel")
    mainTitleLbl.Name = "Title"
    mainTitleLbl.Parent = titleTextHolder
    mainTitleLbl.BackgroundTransparency = 1
    mainTitleLbl.BorderSizePixel = 0
    mainTitleLbl.Size = UDim2.new(1, 0, 0, 13)
    mainTitleLbl.Font = Enum.Font.GothamBold
    mainTitleLbl.Text = winTitle
    mainTitleLbl.TextColor3 = activeTheme["Text & Icon"]
    mainTitleLbl.TextSize = 12
    mainTitleLbl.TextXAlignment = Enum.TextXAlignment.Left
    addToTheme("Text & Icon", mainTitleLbl)

    local mainDescLbl = Instance.new("TextLabel")
    mainDescLbl.Name = "Desc"
    mainDescLbl.Parent = titleTextHolder
    mainDescLbl.BackgroundTransparency = 1
    mainDescLbl.BorderSizePixel = 0
    mainDescLbl.LayoutOrder = 1
    mainDescLbl.Size = UDim2.new(1, 0, 0, 13)
    mainDescLbl.Font = Enum.Font.GothamBold
    mainDescLbl.Text = winDesc
    mainDescLbl.TextColor3 = activeTheme["Text & Icon"]
    mainDescLbl.TextSize = 10
    mainDescLbl.TextTransparency = 0.45
    mainDescLbl.TextXAlignment = Enum.TextXAlignment.Left
    mainDescLbl.Visible = (winDesc ~= "")
    addToTheme("Text & Icon", mainDescLbl)

    local tabWrapper = Instance.new("Frame")
    tabWrapper.Name = "TabP"
    tabWrapper.Parent = mainBg
    tabWrapper.BackgroundTransparency = 1
    tabWrapper.BorderSizePixel = 0
    tabWrapper.Size = UDim2.new(1, 0, 1, 0)

    local tabWrapperPad = Instance.new("UIPadding")
    tabWrapperPad.Parent = tabWrapper
    tabWrapperPad.PaddingBottom = UDim.new(0, 5)
    tabWrapperPad.PaddingLeft = UDim.new(0, 3)
    tabWrapperPad.PaddingTop = UDim.new(0, 45)

    local tabSidebar = Instance.new("Frame")
    tabSidebar.Parent = tabWrapper
    tabSidebar.BackgroundTransparency = 1
    tabSidebar.BorderSizePixel = 0
    tabSidebar.Size = UDim2.new(0, 110, 1, 0)

    local tabScroll = Instance.new("ScrollingFrame")
    tabScroll.Name = "ScrollingFrame"
    tabScroll.Parent = tabSidebar
    tabScroll.Active = true
    tabScroll.BackgroundTransparency = 1
    tabScroll.BorderSizePixel = 0
    tabScroll.Size = UDim2.new(1, 0, 1, 0)
    tabScroll.ClipsDescendants = true
    tabScroll.ScrollBarImageColor3 = activeTheme.Main
    tabScroll.ScrollBarThickness = 2
    addToTheme("Main", tabScroll)

    local tabScrollPad = Instance.new("UIPadding")
    tabScrollPad.Parent = tabScroll
    tabScrollPad.PaddingBottom = UDim.new(0, 1)
    tabScrollPad.PaddingLeft = UDim.new(0, 1)
    tabScrollPad.PaddingRight = UDim.new(0, 1)
    tabScrollPad.PaddingTop = UDim.new(0, 1)

    local tabListFrame = Instance.new("Frame")
    tabListFrame.Name = "TabList"
    tabListFrame.Parent = tabScroll
    tabListFrame.BackgroundTransparency = 1
    tabListFrame.BorderSizePixel = 0
    tabListFrame.Size = UDim2.new(1, 0, 1, 0)

    local tabListLayout = Instance.new("UIListLayout")
    tabListLayout.Parent = tabListFrame
    tabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    local tabIndicator = Instance.new("Frame")
    tabIndicator.Name = "Select"
    tabIndicator.Parent = tabScroll
    tabIndicator.BackgroundColor3 = activeTheme.Main
    tabIndicator.BorderSizePixel = 0
    tabIndicator.Position = UDim2.new(0, 0, 0, 5)
    tabIndicator.Size = UDim2.new(0, 3, 0, 18)
    addToTheme("Main", tabIndicator)

    local indicatorCorner = Instance.new("UICorner")
    indicatorCorner.CornerRadius = UDim.new(1, 0)
    indicatorCorner.Parent = tabIndicator

    autoCanvas(tabScroll, tabListLayout, 5)

    local WindowObj = {
        Value = false,
        List = {},
        DefaultIndex = 1
    }

    function WindowObj:SelectTab(idx)
        WindowObj.DefaultIndex = idx or 1
    end

    function WindowObj:Line()
        local lineWrap = Instance.new("Frame")
        lineWrap.Name = "Line"
        lineWrap.Parent = tabListFrame
        lineWrap.BackgroundTransparency = 1
        lineWrap.BorderSizePixel = 0
        lineWrap.Size = UDim2.new(1, 0, 0, 5)

        local lineBar = Instance.new("Frame")
        lineBar.Name = "Line"
        lineBar.Parent = lineWrap
        lineBar.AnchorPoint = Vector2.new(0.5, 0.5)
        lineBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        lineBar.BackgroundTransparency = 0.88
        lineBar.BorderSizePixel = 0
        lineBar.Position = UDim2.new(0.5, 0, 0.5, 0)
        lineBar.Size = UDim2.new(0.85, 0, 0, 1)
    end

    function WindowObj:Tab(tabOpts)
        tabOpts = tabOpts or {}
        local tabTitle = tabOpts.Title or "Tab"
        local tabIcon = tabOpts.Icon or "house"

        local tabBtnFrame = Instance.new("Frame")
        tabBtnFrame.Name = "Tab"
        tabBtnFrame.Parent = tabListFrame
        tabBtnFrame.BackgroundTransparency = 1
        tabBtnFrame.BorderSizePixel = 0
        tabBtnFrame.Size = UDim2.new(1, 0, 0, 30)

        local tabFuncFrame = Instance.new("Frame")
        tabFuncFrame.Name = "Func"
        tabFuncFrame.Parent = tabBtnFrame
        tabFuncFrame.BackgroundTransparency = 1
        tabFuncFrame.BorderSizePixel = 0
        tabFuncFrame.Size = UDim2.new(1, 0, 1, 0)

        local tabFuncPad = Instance.new("UIPadding")
        tabFuncPad.Parent = tabFuncFrame
        tabFuncPad.PaddingLeft = UDim.new(0, 8)

        local tabFuncLayout = Instance.new("UIListLayout")
        tabFuncLayout.Parent = tabFuncFrame
        tabFuncLayout.Padding = UDim.new(0, 8)
        tabFuncLayout.FillDirection = Enum.FillDirection.Horizontal
        tabFuncLayout.SortOrder = Enum.SortOrder.LayoutOrder
        tabFuncLayout.VerticalAlignment = Enum.VerticalAlignment.Center

        local tabIconImg = Instance.new("ImageLabel")
        tabIconImg.Parent = tabFuncFrame
        tabIconImg.BackgroundTransparency = 1
        tabIconImg.BorderSizePixel = 0
        tabIconImg.Size = UDim2.new(0, 18, 0, 18)
        local tIconData = getIcon(tabIcon)
        tabIconImg.Image = tIconData.Image
        tabIconImg.ImageColor3 = activeTheme["Text & Icon"]
        tabIconImg.ImageTransparency = 0.65
        tabIconImg.ImageRectSize = tIconData.ImageRectSize
        tabIconImg.ImageRectOffset = tIconData.ImageRectPosition
        addToTheme("Text & Icon", tabIconImg)

        local tabTitleLbl = Instance.new("TextLabel")
        tabTitleLbl.Name = "Title"
        tabTitleLbl.Parent = tabFuncFrame
        tabTitleLbl.BackgroundTransparency = 1
        tabTitleLbl.BorderSizePixel = 0
        tabTitleLbl.LayoutOrder = 1
        tabTitleLbl.Size = UDim2.new(1, 0, 1, 0)
        tabTitleLbl.Font = Enum.Font.GothamBold
        tabTitleLbl.Text = tostring(tabTitle)
        tabTitleLbl.TextColor3 = activeTheme["Text & Icon"]
        tabTitleLbl.TextSize = 11
        tabTitleLbl.TextTransparency = 0.65
        tabTitleLbl.TextWrapped = true
        tabTitleLbl.TextXAlignment = Enum.TextXAlignment.Left
        addToTheme("Text & Icon", tabTitleLbl)

        local pageFrame = Instance.new("Frame")
        pageFrame.Name = "InPage"
        pageFrame.Parent = pageContainer
        pageFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        pageFrame.BackgroundColor3 = activeTheme.Page
        pageFrame.BackgroundTransparency = 0.32
        pageFrame.BorderSizePixel = 0
        pageFrame.Size = UDim2.new(1, 0, 1, 0)
        pageFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        pageFrame.Visible = false
        addToTheme("Page", pageFrame)

        local pageCorner = Instance.new("UICorner")
        pageCorner.CornerRadius = UDim.new(0, 14)
        pageCorner.Parent = pageFrame

        local pagePadInner = Instance.new("UIPadding")
        pagePadInner.Parent = pageFrame
        pagePadInner.PaddingBottom = UDim.new(0, 10)
        pagePadInner.PaddingLeft = UDim.new(0, 10)
        pagePadInner.PaddingRight = UDim.new(0, 10)
        pagePadInner.PaddingTop = UDim.new(0, 10)

        local pageScroll = Instance.new("ScrollingFrame")
        pageScroll.Name = "ScrollingFrame"
        pageScroll.Parent = pageFrame
        pageScroll.Active = true
        pageScroll.BackgroundTransparency = 1
        pageScroll.BorderSizePixel = 0
        pageScroll.Size = UDim2.new(1, 0, 1, 0)
        pageScroll.ClipsDescendants = true
        pageScroll.ScrollBarThickness = 0

        local pageLayout = Instance.new("UIListLayout")
        pageLayout.Parent = pageScroll
        pageLayout.Padding = UDim.new(0, 5)
        pageLayout.SortOrder = Enum.SortOrder.LayoutOrder

        local tabClickBtn = createClickButton(tabBtnFrame)
        table.insert(WindowObj.List, {Page = pageFrame, Button = tabBtnFrame})
        local tabIndex = #WindowObj.List

        local function moveIndicator()
            local targetY = (tabBtnFrame.AbsolutePosition.Y + (tabBtnFrame.AbsoluteSize.Y / 2))
                - tabBtnFrame.Parent.AbsolutePosition.Y
                - (tabIndicator.AbsoluteSize.Y / 2)
            tween({
                v = tabIndicator,
                t = 0.35,
                s = Enum.EasingStyle.Exponential,
                d = "Out",
                g = {Position = UDim2.new(0, tabIndicator.Position.X.Offset, 0, targetY)}
            }):Play()
        end

        local function activateTab()
            for _, entry in pairs(WindowObj.List) do
                entry.Page.Visible = false
            end

            for _, child in pairs(pageScroll:GetChildren()) do
                if child:IsA("Frame") and child:FindFirstChild("Background") then
                    child.Background.Position = UDim2.new(0, 0, 0, 0)
                    child.Background.AnchorPoint = Vector2.new(1, 0)
                end
            end

            task.spawn(function()
                for _, child in pairs(pageScroll:GetChildren()) do
                    if child:IsA("Frame") and child:FindFirstChild("Background") then
                        tween({
                            v = child.Background,
                            t = 0.25,
                            s = Enum.EasingStyle.Exponential,
                            d = "InOut",
                            g = {AnchorPoint = Vector2.new(0, 0)}
                        }):Play()
                        task.wait(0.03)
                    end
                end
            end)

            pageFrame.Visible = true

            for _, child in pairs(tabListFrame:GetChildren()) do
                if child:IsA("Frame") and child.Name ~= "Line" and child:FindFirstChild("Func") then
                    tween({v = child.Func.Title, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = {TextTransparency = 0.65}}):Play()
                    tween({v = child.Func.ImageLabel, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = {ImageTransparency = 0.65}}):Play()
                end
            end

            tween({v = tabTitleLbl, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = {TextTransparency = 0}}):Play()
            tween({v = tabIconImg, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = {ImageTransparency = 0}}):Play()
            pageContainer.Visible = true
            moveIndicator()
        end

        tabClickBtn.MouseButton1Click:Connect(activateTab)
        autoCanvas(pageScroll, pageLayout, 5)

        task.delay(0.1, function()
            if not WindowObj.Value then
                local totalTabs = #WindowObj.List
                local defIdx = WindowObj.DefaultIndex
                if type(defIdx) ~= "number" or defIdx < 1 or defIdx > totalTabs then
                    defIdx = 1
                end
                if tabIndex == defIdx then
                    activateTab()
                    WindowObj.Value = true
                end
            end
        end)

        local TabElements = {}

        function TabElements:PlayerProfile(profOpts)
            profOpts = profOpts or {}
            local ownerName = profOpts.Owner or "HydroGii"

            local wrapper = Instance.new("Frame")
            wrapper.Name = "Real Background"
            wrapper.Parent = pageScroll
            wrapper.BackgroundTransparency = 1
            wrapper.BorderSizePixel = 0
            wrapper.Size = UDim2.new(1, 0, 0, 145)
            wrapper.ClipsDescendants = true

            local bg = Instance.new("Frame")
            bg.Name = "Background"
            bg.Parent = wrapper
            bg.BackgroundColor3 = activeTheme.Function.Label.Background
            bg.BackgroundTransparency = 0.28
            bg.BorderSizePixel = 0
            bg.Size = UDim2.new(1, 0, 1, 0)
            bg.ClipsDescendants = true
            addToTheme("Function.Label.Background", bg)

            local bgCorner = Instance.new("UICorner")
            bgCorner.CornerRadius = UDim.new(0, 10)
            bgCorner.Parent = bg

            local bgStroke = Instance.new("UIStroke")
            bgStroke.Color = activeTheme.Main
            bgStroke.Thickness = 1
            bgStroke.Transparency = 0.75
            bgStroke.Parent = bg
            addToTheme("Main", bgStroke)

            local topSection = Instance.new("Frame")
            topSection.Name = "TopProfile"
            topSection.Parent = bg
            topSection.BackgroundTransparency = 1
            topSection.Position = UDim2.new(0, 12, 0, 10)
            topSection.Size = UDim2.new(1, -24, 0, 56)

            local avatarFrame = Instance.new("Frame")
            avatarFrame.Parent = topSection
            avatarFrame.AnchorPoint = Vector2.new(0, 0.5)
            avatarFrame.BackgroundColor3 = activeTheme.Page
            avatarFrame.Position = UDim2.new(0, 0, 0.5, 0)
            avatarFrame.Size = UDim2.new(0, 52, 0, 52)
            addToTheme("Page", avatarFrame)

            local avCorner = Instance.new("UICorner")
            avCorner.CornerRadius = UDim.new(1, 0)
            avCorner.Parent = avatarFrame

            local avStroke = Instance.new("UIStroke")
            avStroke.Color = activeTheme.Main
            avStroke.Thickness = 1.5
            avStroke.Parent = avatarFrame
            addToTheme("Main", avStroke)

            local avatarImg = Instance.new("ImageLabel")
            avatarImg.Parent = avatarFrame
            avatarImg.AnchorPoint = Vector2.new(0.5, 0.5)
            avatarImg.BackgroundTransparency = 1
            avatarImg.Position = UDim2.new(0.5, 0, 0.5, 0)
            avatarImg.Size = UDim2.new(1, -4, 1, -4)
            avatarImg.Image = "rbxassetid://111362591084511"

            local avImgCorner = Instance.new("UICorner")
            avImgCorner.CornerRadius = UDim.new(1, 0)
            avImgCorner.Parent = avatarImg

            task.spawn(function()
                local ok, content = pcall(function()
                    return Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
                end)
                if ok and content then
                    avatarImg.Image = content
                end
            end)

            local infoCol = Instance.new("Frame")
            infoCol.Parent = topSection
            infoCol.BackgroundTransparency = 1
            infoCol.Position = UDim2.new(0, 64, 0, 0)
            infoCol.Size = UDim2.new(1, -64, 1, 0)

            local infoList = Instance.new("UIListLayout")
            infoList.Parent = infoCol
            infoList.Padding = UDim.new(0, 2)
            infoList.SortOrder = Enum.SortOrder.LayoutOrder
            infoList.VerticalAlignment = Enum.VerticalAlignment.Center

            local dispLbl = Instance.new("TextLabel")
            dispLbl.Parent = infoCol
            dispLbl.BackgroundTransparency = 1
            dispLbl.Size = UDim2.new(1, 0, 0, 16)
            dispLbl.Font = Enum.Font.GothamBold
            dispLbl.RichText = true
            dispLbl.Text = LocalPlayer.DisplayName .. ' <font size="10" transparency="0.45">(@' .. LocalPlayer.Name .. ")</font>"
            dispLbl.TextColor3 = activeTheme["Text & Icon"]
            dispLbl.TextSize = 13
            dispLbl.TextXAlignment = Enum.TextXAlignment.Left
            addToTheme("Text & Icon", dispLbl)

            local idLbl = Instance.new("TextLabel")
            idLbl.Parent = infoCol
            idLbl.BackgroundTransparency = 1
            idLbl.LayoutOrder = 1
            idLbl.Size = UDim2.new(1, 0, 0, 13)
            idLbl.Font = Enum.Font.Gotham
            idLbl.Text = "UserId: " .. tostring(LocalPlayer.UserId) .. "  |  Account Age: " .. tostring(LocalPlayer.AccountAge) .. "d"
            idLbl.TextColor3 = activeTheme["Text & Icon"]
            idLbl.TextSize = 10
            idLbl.TextTransparency = 0.4
            idLbl.TextXAlignment = Enum.TextXAlignment.Left
            addToTheme("Text & Icon", idLbl)

            local ownerLbl = Instance.new("TextLabel")
            ownerLbl.Parent = infoCol
            ownerLbl.BackgroundTransparency = 1
            ownerLbl.LayoutOrder = 2
            ownerLbl.Size = UDim2.new(1, 0, 0, 14)
            ownerLbl.Font = Enum.Font.GothamBold
            ownerLbl.RichText = true
            ownerLbl.Text = "HydroGii Owner: " .. tostring(ownerName)
            ownerLbl.TextColor3 = activeTheme.Main
            ownerLbl.TextSize = 11
            ownerLbl.TextXAlignment = Enum.TextXAlignment.Left
            addToTheme("Main", ownerLbl)

            local dividerLine = Instance.new("Frame")
            dividerLine.Parent = bg
            dividerLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            dividerLine.BackgroundTransparency = 0.9
            dividerLine.BorderSizePixel = 0
            dividerLine.Position = UDim2.new(0, 12, 0, 74)
            dividerLine.Size = UDim2.new(1, -24, 0, 1)

            local statsGrid = Instance.new("Frame")
            statsGrid.Name = "StatsGrid"
            statsGrid.Parent = bg
            statsGrid.BackgroundTransparency = 1
            statsGrid.Position = UDim2.new(0, 12, 0, 82)
            statsGrid.Size = UDim2.new(1, -24, 0, 52)

            local gridLayout = Instance.new("UIGridLayout")
            gridLayout.Parent = statsGrid
            gridLayout.CellPadding = UDim2.new(0, 6, 0, 6)
            gridLayout.CellSize = UDim2.new(0.5, -3, 0, 23)
            gridLayout.SortOrder = Enum.SortOrder.LayoutOrder

            local function createStatPill(labelTitle, initialVal, order)
                local pill = Instance.new("Frame")
                pill.Parent = statsGrid
                pill.BackgroundColor3 = activeTheme.Page
                pill.BackgroundTransparency = 0.35
                pill.BorderSizePixel = 0
                pill.LayoutOrder = order
                addToTheme("Page", pill)

                local pCorner = Instance.new("UICorner")
                pCorner.CornerRadius = UDim.new(0, 6)
                pCorner.Parent = pill

                local pPad = Instance.new("UIPadding")
                pPad.Parent = pill
                pPad.PaddingLeft = UDim.new(0, 8)
                pPad.PaddingRight = UDim.new(0, 8)

                local keyLbl = Instance.new("TextLabel")
                keyLbl.Parent = pill
                keyLbl.BackgroundTransparency = 1
                keyLbl.Size = UDim2.new(0.5, 0, 1, 0)
                keyLbl.Font = Enum.Font.GothamBold
                keyLbl.Text = labelTitle
                keyLbl.TextColor3 = activeTheme["Text & Icon"]
                keyLbl.TextSize = 10
                keyLbl.TextTransparency = 0.45
                keyLbl.TextXAlignment = Enum.TextXAlignment.Left
                addToTheme("Text & Icon", keyLbl)

                local valLbl = Instance.new("TextLabel")
                valLbl.Parent = pill
                valLbl.AnchorPoint = Vector2.new(1, 0)
                valLbl.BackgroundTransparency = 1
                valLbl.Position = UDim2.new(1, 0, 0, 0)
                valLbl.Size = UDim2.new(0.5, 0, 1, 0)
                valLbl.Font = Enum.Font.GothamBold
                valLbl.Text = initialVal
                valLbl.TextColor3 = activeTheme["Text & Icon"]
                valLbl.TextSize = 10
                valLbl.TextXAlignment = Enum.TextXAlignment.Right
                addToTheme("Text & Icon", valLbl)

                return valLbl
            end

            local fpsVal = createStatPill("FPS", "60", 1)
            local pingVal = createStatPill("Ping", "0 ms", 2)
            local playersVal = createStatPill("Players", tostring(#Players:GetPlayers()) .. "/" .. tostring(Players.MaxPlayers), 3)
            local timeVal = createStatPill("Session", "00:00", 4)

            local startTime = os.clock()
            local frameCount = 0
            local lastFpsTick = os.clock()

            RunService.RenderStepped:Connect(function()
                frameCount = frameCount + 1
                local now = os.clock()
                if now - lastFpsTick >= 0.5 then
                    local fps = math.floor(frameCount / (now - lastFpsTick) + 0.5)
                    frameCount = 0
                    lastFpsTick = now

                    if fpsVal and fpsVal.Parent then
                        fpsVal.Text = tostring(fps)
                    end

                    local pingMs = 0
                    pcall(function()
                        pingMs = math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                    end)
                    if pingVal and pingVal.Parent then
                        pingVal.Text = tostring(pingMs) .. " ms"
                    end

                    if playersVal and playersVal.Parent then
                        playersVal.Text = tostring(#Players:GetPlayers()) .. "/" .. tostring(Players.MaxPlayers)
                    end

                    local elapsed = math.floor(now - startTime)
                    local mins = math.floor(elapsed / 60)
                    local secs = elapsed % 60
                    if timeVal and timeVal.Parent then
                        timeVal.Text = string.format("%02d:%02d", mins, secs)
                    end
                end
            end)
        end

        function TabElements:Section(secOpts)
            secOpts = secOpts or {}
            local secWrapper = Instance.new("Frame")
            secWrapper.Name = "Real Background"
            secWrapper.Parent = pageScroll
            secWrapper.BackgroundTransparency = 1
            secWrapper.BorderSizePixel = 0
            secWrapper.Size = UDim2.new(1, 0, 0, 22)
            secWrapper.ClipsDescendants = true

            local secBg = Instance.new("Frame")
            secBg.Name = "Background"
            secBg.Parent = secWrapper
            secBg.BackgroundTransparency = 1
            secBg.BorderSizePixel = 0
            secBg.Size = UDim2.new(1, 0, 0, 22)

            local secPad = Instance.new("UIPadding")
            secPad.Parent = secBg
            secPad.PaddingLeft = UDim.new(0, 5)
            secPad.PaddingRight = UDim.new(0, 5)

            local secLabel = Instance.new("TextLabel")
            secLabel.Name = "Section"
            secLabel.Parent = secBg
            secLabel.BackgroundTransparency = 1
            secLabel.BorderSizePixel = 0
            secLabel.Size = UDim2.new(1, 0, 0, 22)
            secLabel.Font = Enum.Font.GothamBold
            secLabel.Text = secOpts.Title or "Section"
            secLabel.TextColor3 = activeTheme["Text & Icon"]
            secLabel.TextSize = 12
            secLabel.TextXAlignment = Enum.TextXAlignment.Left
            addToTheme("Text & Icon", secLabel)

            return {
                SetTitle = function(_, newTitle)
                    secLabel.Text = tostring(newTitle)
                end
            }
        end

        function TabElements:Label(lblOpts)
            lblOpts = lblOpts or {}
            local cardBg, cardCtrl = createElementCard(pageScroll, lblOpts.Title or "Label", lblOpts.Desc or "", lblOpts.Image or "", "Label", activeTheme)
            cardCtrl:SetTextTransparencyTitle(0)
            cardCtrl:SetSizeT(10)

            return {
                SetTitle = function(_, t) cardCtrl:SetTitle(t) end,
                SetDesc = function(_, d) cardCtrl:SetDesc(d) end,
                SetVisible = function(_, v) cardBg.Parent.Visible = v end
            }
        end

        function TabElements:Button(btnOpts)
            btnOpts = btnOpts or {}
            local cb = btnOpts.Callback or function() end
            local cardBg, cardCtrl = createElementCard(pageScroll, btnOpts.Title or "Button", btnOpts.Desc or "", btnOpts.Image or "", "Button", activeTheme)
            cardCtrl:SetTextTransparencyTitle(0)
            cardCtrl:SetSizeT(50)
            cardBg.ClipsDescendants = true

            local rightHolder = Instance.new("Frame")
            rightHolder.Name = "F"
            rightHolder.Parent = cardBg
            rightHolder.AnchorPoint = Vector2.new(1, 0.5)
            rightHolder.BackgroundTransparency = 1
            rightHolder.BorderSizePixel = 0
            rightHolder.Position = UDim2.new(1, 0, 0.5, 0)
            rightHolder.Size = UDim2.new(0, 50, 0.8, 0)

            local rightPad = Instance.new("UIPadding")
            rightPad.Parent = rightHolder
            rightPad.PaddingRight = UDim.new(0, 13)

            local clickIcon = Instance.new("ImageLabel")
            clickIcon.Name = "Image"
            clickIcon.Parent = rightHolder
            clickIcon.AnchorPoint = Vector2.new(1, 0.5)
            clickIcon.BackgroundTransparency = 1
            clickIcon.BorderSizePixel = 0
            clickIcon.Position = UDim2.new(1, 0, 0.5, 0)
            clickIcon.Size = UDim2.new(0, 20, 0, 20)
            clickIcon.Image = "rbxassetid://14923748517"
            clickIcon.ImageColor3 = activeTheme["Text & Icon"]
            clickIcon.ImageTransparency = 0.3
            addToTheme("Text & Icon", clickIcon)

            local hitBtn = createClickButton(cardBg)
            hitBtn.MouseButton1Click:Connect(function()
                cardBg.AnchorPoint = Vector2.new(0.5, 0.5)
                cardBg.Position = UDim2.new(0.5, 0, 0.5, 0)
                createRipple(hitBtn, cardBg)
                tween({v = cardBg, t = 0.12, s = Enum.EasingStyle.Back, d = "Out", g = {Size = UDim2.new(0.96, 0, 0.92, 0)}}):Play()
                task.delay(0.06, function()
                    tween({v = cardBg, t = 0.12, s = Enum.EasingStyle.Back, d = "Out", g = {Size = UDim2.new(1, 0, 1, 0)}}):Play()
                end)
                pcall(cb)
            end)
        end

        function TabElements:Toggle(togOpts)
            togOpts = togOpts or {}
            local state = togOpts.Value or false
            local cb = togOpts.Callback or function() end
            local cardBg, cardCtrl = createElementCard(pageScroll, togOpts.Title or "Toggle", togOpts.Desc or "", togOpts.Image or "", "Toggle", activeTheme)

            local rightHolder = Instance.new("Frame")
            rightHolder.Name = "F"
            rightHolder.Parent = cardBg
            rightHolder.AnchorPoint = Vector2.new(1, 0.5)
            rightHolder.BackgroundTransparency = 1
            rightHolder.BorderSizePixel = 0
            rightHolder.Position = UDim2.new(1, 0, 0.5, 0)
            rightHolder.Size = UDim2.new(0, 100, 0.8, 0)

            local rightLayout = Instance.new("UIListLayout")
            rightLayout.Parent = rightHolder
            rightLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            rightLayout.SortOrder = Enum.SortOrder.LayoutOrder
            rightLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            local rightPad = Instance.new("UIPadding")
            rightPad.Parent = rightHolder
            rightPad.PaddingRight = UDim.new(0, 13)

            local pill = Instance.new("Frame")
            pill.Parent = rightHolder
            pill.BorderSizePixel = 0
            pill.Size = UDim2.new(0, 34, 0, 17)

            local pillCorner = Instance.new("UICorner")
            pillCorner.CornerRadius = UDim.new(1, 0)
            pillCorner.Parent = pill

            local pillPad = Instance.new("UIPadding")
            pillPad.Parent = pill
            pillPad.PaddingLeft = UDim.new(0, 2)
            pillPad.PaddingRight = UDim.new(0, 2)

            local knob = Instance.new("Frame")
            knob.Parent = pill
            knob.AnchorPoint = Vector2.new(0, 0.5)
            knob.BorderSizePixel = 0
            knob.Position = UDim2.new(0, 0, 0.5, 0)
            knob.Size = UDim2.new(0, 13, 0, 13)

            local knobCorner = Instance.new("UICorner")
            knobCorner.CornerRadius = UDim.new(1, 0)
            knobCorner.Parent = knob

            local function applyVisual(instant)
                local tData = activeTheme.Function.Toggle[state and "True" or "False"]
                cardCtrl:SetTextTransparencyTitle(state and 0 or 0.55)
                if instant then
                    pill.BackgroundColor3 = tData["Toggle Background"]
                    knob.BackgroundColor3 = tData["Toggle Value"]
                    knob.AnchorPoint = state and Vector2.new(1, 0.5) or Vector2.new(0, 0.5)
                    knob.Position = state and UDim2.new(1, 0, 0.5, 0) or UDim2.new(0, 0, 0.5, 0)
                else
                    tween({v = pill, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {BackgroundColor3 = tData["Toggle Background"]}}):Play()
                    tween({
                        v = knob,
                        t = 0.15,
                        s = Enum.EasingStyle.Linear,
                        d = "Out",
                        g = {
                            BackgroundColor3 = tData["Toggle Value"],
                            AnchorPoint = state and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
                            Position = state and UDim2.new(1, 0, 0.5, 0) or UDim2.new(0, 0, 0.5, 0)
                        }
                    }):Play()
                end
            end

            applyVisual(true)
            task.delay(0.1, function()
                pcall(cb, state)
            end)

            cardBg:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
                applyVisual(true)
            end)

            local hitBtn = createClickButton(cardBg)
            hitBtn.MouseButton1Click:Connect(function()
                state = not state
                applyVisual(false)
                pcall(cb, state)
            end)

            return {
                SetTitle = function(_, t) cardCtrl:SetTitle(t) end,
                SetDesc = function(_, d) cardCtrl:SetDesc(d) end,
                SetVisible = function(_, v) cardBg.Parent.Visible = v end,
                SetValue = function(_, val)
                    state = val and true or false
                    applyVisual(false)
                    pcall(cb, state)
                end
            }
        end

        function TabElements:Slider(sldOpts)
            sldOpts = sldOpts or {}
            local minVal = sldOpts.Min or 0
            local maxVal = sldOpts.Max or 100
            local currentVal = sldOpts.Value or minVal
            local rounding = sldOpts.Rounding or 2
            local cb = sldOpts.Callback or function() end

            local cardBg, cardCtrl = createElementCard(pageScroll, sldOpts.Title or "Slider", sldOpts.Desc or "", sldOpts.Image or "", "Slider", activeTheme)
            cardCtrl:SetTextTransparencyTitle(0)
            cardCtrl:SetSizeT(200)

            local rightHolder = Instance.new("Frame")
            rightHolder.Name = "F"
            rightHolder.Parent = cardBg
            rightHolder.AnchorPoint = Vector2.new(1, 0.5)
            rightHolder.BackgroundTransparency = 1
            rightHolder.BorderSizePixel = 0
            rightHolder.Position = UDim2.new(1, 0, 0.5, 0)
            rightHolder.Size = UDim2.new(0, 195, 0.8, 0)

            local rightLayout = Instance.new("UIListLayout")
            rightLayout.Parent = rightHolder
            rightLayout.Padding = UDim.new(0, 8)
            rightLayout.FillDirection = Enum.FillDirection.Horizontal
            rightLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            rightLayout.SortOrder = Enum.SortOrder.LayoutOrder
            rightLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            local rightPad = Instance.new("UIPadding")
            rightPad.Parent = rightHolder
            rightPad.PaddingRight = UDim.new(0, 13)

            local numBoxFrame = Instance.new("Frame")
            numBoxFrame.Active = true
            numBoxFrame.Parent = rightHolder
            numBoxFrame.BackgroundColor3 = activeTheme.Function.Slider["Value Background"]
            numBoxFrame.BackgroundTransparency = 0.25
            numBoxFrame.BorderSizePixel = 0
            numBoxFrame.Size = UDim2.new(0, 50, 0, 20)
            numBoxFrame.LayoutOrder = 1
            addToTheme("Function.Slider.Value Background", numBoxFrame)

            local numCorner = Instance.new("UICorner")
            numCorner.CornerRadius = UDim.new(0, 4)
            numCorner.Parent = numBoxFrame

            local numStroke = Instance.new("UIStroke")
            numStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            numStroke.Color = activeTheme.Function.Slider["Value Stroke"]
            numStroke.Thickness = 1
            numStroke.Transparency = 0.9
            numStroke.Parent = numBoxFrame
            addToTheme("Function.Slider.Value Stroke", numStroke)

            local numInput = Instance.new("TextBox")
            numInput.Parent = numBoxFrame
            numInput.Active = true
            numInput.BackgroundTransparency = 1
            numInput.BorderSizePixel = 0
            numInput.Size = UDim2.new(1, 0, 1, 0)
            numInput.Font = Enum.Font.GothamBold
            numInput.Text = tostring(currentVal)
            numInput.TextColor3 = activeTheme["Text & Icon"]
            numInput.TextSize = 11
            addToTheme("Text & Icon", numInput)

            local barHitArea = Instance.new("Frame")
            barHitArea.Parent = rightHolder
            barHitArea.BackgroundTransparency = 1
            barHitArea.BorderSizePixel = 0
            barHitArea.Size = UDim2.new(0, 120, 0, 20)

            local barBg = Instance.new("Frame")
            barBg.Parent = barHitArea
            barBg.AnchorPoint = Vector2.new(0.5, 0.5)
            barBg.BackgroundColor3 = activeTheme.Function.Slider["Slider Bar"]
            barBg.BorderSizePixel = 0
            barBg.Position = UDim2.new(0.5, 0, 0.5, 0)
            barBg.Size = UDim2.new(1, 0, 0, 10)
            addToTheme("Function.Slider.Slider Bar", barBg)

            local barBgCorner = Instance.new("UICorner")
            barBgCorner.CornerRadius = UDim.new(1, 0)
            barBgCorner.Parent = barBg

            local barFill = Instance.new("Frame")
            barFill.Parent = barBg
            barFill.AnchorPoint = Vector2.new(0, 0.5)
            barFill.BackgroundColor3 = activeTheme.Function.Slider["Slider Bar Value"]
            barFill.BorderSizePixel = 0
            barFill.Position = UDim2.new(0, 0, 0.5, 0)
            barFill.Size = UDim2.new(0, 0, 1, 0)
            addToTheme("Function.Slider.Slider Bar Value", barFill)

            local barFillCorner = Instance.new("UICorner")
            barFillCorner.CornerRadius = UDim.new(1, 0)
            barFillCorner.Parent = barFill

            local circleKnob = Instance.new("Frame")
            circleKnob.Parent = barFill
            circleKnob.AnchorPoint = Vector2.new(1, 0.5)
            circleKnob.BackgroundColor3 = activeTheme.Function.Slider["Circle Value"]
            circleKnob.BorderSizePixel = 0
            circleKnob.Position = UDim2.new(1, 0, 0.5, 0)
            circleKnob.Size = UDim2.new(0, 13, 0, 13)
            addToTheme("Function.Slider.Circle Value", circleKnob)

            local circleCorner = Instance.new("UICorner")
            circleCorner.CornerRadius = UDim.new(1, 0)
            circleCorner.Parent = circleKnob

            local function roundNumber(num, dec)
                local mult = 10 ^ dec
                return math.floor(num * mult + 0.5) / mult
            end

            local function setValue(val)
                local clamped = math.clamp(val, minVal, maxVal)
                local rounded = roundNumber(clamped, rounding)
                currentVal = rounded
                local pct = (maxVal - minVal) ~= 0 and ((rounded - minVal) / (maxVal - minVal)) or 0
                tween({
                    v = barFill,
                    t = 0.12,
                    s = Enum.EasingStyle.Exponential,
                    d = "Out",
                    g = {Size = UDim2.new(math.clamp(pct, 0.12, 1), 0, 1, 0)}
                }):Play()
                numInput.Text = tostring(rounded)
                pcall(cb, rounded)
            end

            setValue(currentVal)

            numInput.FocusLost:Connect(function()
                setValue(tonumber(numInput.Text) or minVal)
            end)

            local barBtn = createClickButton(barHitArea)
            local draggingSlider = false

            local function updateFromInput(input)
                local pct = math.clamp((input.Position.X - barBg.AbsolutePosition.X) / barBg.AbsoluteSize.X, 0, 1)
                setValue(minVal + pct * (maxVal - minVal))
            end

            barBtn.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    draggingSlider = true
                    updateFromInput(input)
                end
            end)

            barBtn.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    draggingSlider = false
                end
            end)

            UserInputService.InputChanged:Connect(function(input)
                if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    updateFromInput(input)
                end
            end)

            return {
                SetTitle = function(_, t) cardCtrl:SetTitle(t) end,
                SetDesc = function(_, d) cardCtrl:SetDesc(d) end,
                SetVisible = function(_, v) cardBg.Parent.Visible = v end,
                SetValue = function(_, v) setValue(v) end,
                SetMin = function(_, m)
                    minVal = m
                    if currentVal < minVal then setValue(minVal) end
                end,
                SetMax = function(_, m)
                    maxVal = m
                    if currentVal > maxVal then setValue(maxVal) end
                end
            }
        end

        function TabElements:Dropdown(drpOpts)
            drpOpts = drpOpts or {}
            local list = drpOpts.List or {}
            local defaultVal = drpOpts.Value or list[1]
            local isMulti = drpOpts.Multi or false
            local cb = drpOpts.Callback or function() end

            local cardBg, cardCtrl = createElementCard(pageScroll, drpOpts.Title or "Dropdown", drpOpts.Desc or "", drpOpts.Image or "", "Dropdown", activeTheme)
            cardCtrl:SetTextTransparencyTitle(0)
            cardCtrl:SetSizeT(125)

            local drpCtrl = addDropdownSelect(cardBg, cardBg, isMulti, cb, defaultVal, list, activeTheme)

            return {
                SetTitle = function(_, t) cardCtrl:SetTitle(t) end,
                SetDesc = function(_, d) cardCtrl:SetDesc(d) end,
                SetVisible = function(_, v) cardBg.Parent.Visible = v end,
                SetValue = function(_, v) drpCtrl:SetValue(v) end,
                Add = function(_, item) drpCtrl:Add(item) end,
                Clear = function(_, item) drpCtrl:Clear(item) end,
                SetList = function(_, newList) drpCtrl:SetList(newList) end
            }
        end

        function TabElements:Textbox(txtOpts)
            txtOpts = txtOpts or {}
            local cb = txtOpts.Callback or function() end
            local clearOnFocus = txtOpts.ClearText or txtOpts.ClearTextOnFocus or false

            local cardBg, cardCtrl = createElementCard(pageScroll, txtOpts.Title or "Textbox", txtOpts.Desc or "", txtOpts.Image or "", "Textbox", activeTheme)
            cardCtrl:SetTextTransparencyTitle(0)
            cardCtrl:SetSizeT(145)

            local rightHolder = Instance.new("Frame")
            rightHolder.Name = "F"
            rightHolder.Parent = cardBg
            rightHolder.AnchorPoint = Vector2.new(1, 0.5)
            rightHolder.BackgroundTransparency = 1
            rightHolder.BorderSizePixel = 0
            rightHolder.Position = UDim2.new(1, 0, 0.5, 0)
            rightHolder.Size = UDim2.new(0, 150, 0.8, 0)

            local rightLayout = Instance.new("UIListLayout")
            rightLayout.Parent = rightHolder
            rightLayout.Padding = UDim.new(0, 15)
            rightLayout.FillDirection = Enum.FillDirection.Horizontal
            rightLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            rightLayout.SortOrder = Enum.SortOrder.LayoutOrder
            rightLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            local rightPad = Instance.new("UIPadding")
            rightPad.Parent = rightHolder
            rightPad.PaddingRight = UDim.new(0, 13)

            local boxFrame = Instance.new("Frame")
            boxFrame.Parent = rightHolder
            boxFrame.BackgroundColor3 = activeTheme.Function.Textbox["Value Background"]
            boxFrame.BackgroundTransparency = 0.25
            boxFrame.BorderSizePixel = 0
            boxFrame.Size = UDim2.new(0, 130, 0, 25)
            addToTheme("Function.Textbox.Value Background", boxFrame)

            local boxCorner = Instance.new("UICorner")
            boxCorner.CornerRadius = UDim.new(0, 4)
            boxCorner.Parent = boxFrame

            local boxStroke = Instance.new("UIStroke")
            boxStroke.Color = activeTheme.Function.Textbox["Value Stroke"]
            boxStroke.Thickness = 1
            boxStroke.Transparency = 0.9
            boxStroke.Parent = boxFrame
            addToTheme("Function.Textbox.Value Stroke", boxStroke)

            local boxPad = Instance.new("UIPadding")
            boxPad.Parent = boxFrame
            boxPad.PaddingLeft = UDim.new(0, 5)
            boxPad.PaddingRight = UDim.new(0, 5)

            local editIcon = Instance.new("ImageLabel")
            editIcon.Parent = boxFrame
            editIcon.AnchorPoint = Vector2.new(1, 0.5)
            editIcon.BackgroundTransparency = 1
            editIcon.BorderSizePixel = 0
            editIcon.Position = UDim2.new(1, 0, 0.5, 0)
            editIcon.Size = UDim2.new(0, 15, 0, 15)
            editIcon.Image = "rbxassetid://13868675087"
            editIcon.ImageColor3 = activeTheme["Text & Icon"]
            editIcon.ImageTransparency = 0.3
            addToTheme("Text & Icon", editIcon)

            local textInput = Instance.new("TextBox")
            textInput.Name = "TextLabel"
            textInput.Parent = boxFrame
            textInput.BackgroundTransparency = 1
            textInput.BorderSizePixel = 0
            textInput.Size = UDim2.new(0.8, 0, 1, 0)
            textInput.Font = Enum.Font.GothamBold
            textInput.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
            textInput.PlaceholderText = txtOpts.Placeholder or "Paste Your Text"
            textInput.RichText = true
            textInput.Text = txtOpts.Value or ""
            textInput.TextColor3 = activeTheme["Text & Icon"]
            textInput.TextSize = 10
            textInput.TextTransparency = 0.2
            textInput.TextWrapped = true
            textInput.TextXAlignment = Enum.TextXAlignment.Left
            textInput.ClearTextOnFocus = clearOnFocus
            addToTheme("Text & Icon", textInput)

            local function submitText()
                if #textInput.Text > 0 then
                    pcall(cb, textInput.Text)
                end
            end

            textInput.FocusLost:Connect(submitText)
            task.delay(0, submitText)

            return {
                SetTitle = function(_, t) cardCtrl:SetTitle(t) end,
                SetDesc = function(_, d) cardCtrl:SetDesc(d) end,
                SetVisible = function(_, v) cardBg.Parent.Visible = v end,
                SetValue = function(_, v) textInput.Text = tostring(v) end,
                SetClearTextOnFocus = function(_, c) textInput.ClearTextOnFocus = c end,
                SetPlaceholderText = function(_, p) textInput.PlaceholderText = tostring(p) end
            }
        end

        function TabElements:Keybind(keyOpts)
            keyOpts = keyOpts or {}
            local state = keyOpts.Value or false
            local boundKey = keyOpts.Key or Enum.KeyCode.E
            local cb = keyOpts.Callback or function() end

            local cardBg, cardCtrl = createElementCard(pageScroll, keyOpts.Title or "Keybind", keyOpts.Desc or "", keyOpts.Image or "", "Keybind", activeTheme)
            cardCtrl:SetSizeT(100)

            local rightBtn = Instance.new("TextButton")
            rightBtn.Name = "F"
            rightBtn.Parent = cardBg
            rightBtn.AnchorPoint = Vector2.new(1, 0.5)
            rightBtn.BackgroundTransparency = 1
            rightBtn.BorderSizePixel = 0
            rightBtn.Position = UDim2.new(1, 0, 0.5, 0)
            rightBtn.Size = UDim2.new(0, 100, 0.8, 0)
            rightBtn.Text = ""
            rightBtn.ZIndex = 2

            local rightLayout = Instance.new("UIListLayout")
            rightLayout.Parent = rightBtn
            rightLayout.Padding = UDim.new(0, 8)
            rightLayout.FillDirection = Enum.FillDirection.Horizontal
            rightLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            rightLayout.SortOrder = Enum.SortOrder.LayoutOrder
            rightLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            local rightPad = Instance.new("UIPadding")
            rightPad.Parent = rightBtn
            rightPad.PaddingRight = UDim.new(0, 13)

            local pill = Instance.new("Frame")
            pill.Name = "ToggleValue"
            pill.Parent = rightBtn
            pill.BorderSizePixel = 0
            pill.LayoutOrder = 1
            pill.Size = UDim2.new(0, 34, 0, 17)

            local pillCorner = Instance.new("UICorner")
            pillCorner.CornerRadius = UDim.new(1, 0)
            pillCorner.Parent = pill

            local pillPad = Instance.new("UIPadding")
            pillPad.Parent = pill
            pillPad.PaddingLeft = UDim.new(0, 2)
            pillPad.PaddingRight = UDim.new(0, 2)

            local knob = Instance.new("Frame")
            knob.Parent = pill
            knob.AnchorPoint = Vector2.new(0, 0.5)
            knob.BorderSizePixel = 0
            knob.Position = UDim2.new(0, 0, 0.5, 0)
            knob.Size = UDim2.new(0, 13, 0, 13)

            local knobCorner = Instance.new("UICorner")
            knobCorner.CornerRadius = UDim.new(1, 0)
            knobCorner.Parent = knob

            local keyBox = Instance.new("Frame")
            keyBox.Name = "KeybindValue"
            keyBox.Parent = rightBtn
            keyBox.BackgroundColor3 = activeTheme.Function.Keybind["Value Background"]
            keyBox.BackgroundTransparency = 0.25
            keyBox.BorderSizePixel = 0
            keyBox.Size = UDim2.new(0, 30, 0, 20)
            keyBox.ZIndex = 2
            addToTheme("Function.Keybind.Value Background", keyBox)

            local keyCorner = Instance.new("UICorner")
            keyCorner.CornerRadius = UDim.new(0, 4)
            keyCorner.Parent = keyBox

            local keyStroke = Instance.new("UIStroke")
            keyStroke.Color = activeTheme.Function.Keybind["Value Stroke"]
            keyStroke.Thickness = 1
            keyStroke.Transparency = 0.9
            keyStroke.Parent = keyBox
            addToTheme("Function.Keybind.Value Stroke", keyStroke)

            local keyLabel = Instance.new("TextLabel")
            keyLabel.Parent = keyBox
            keyLabel.BackgroundTransparency = 1
            keyLabel.BorderSizePixel = 0
            keyLabel.Size = UDim2.new(1, 0, 1, 0)
            keyLabel.Font = Enum.Font.GothamBold
            keyLabel.RichText = true
            keyLabel.Text = tostring(boundKey):gsub("Enum.KeyCode.", "")
            keyLabel.TextColor3 = activeTheme["Text & Icon"]
            keyLabel.TextSize = 10
            keyLabel.TextTransparency = 0.2
            addToTheme("Text & Icon", keyLabel)

            local function updateKeyBoxSize()
                local sz = TextService:GetTextSize(keyLabel.Text, keyLabel.TextSize, keyLabel.Font, Vector2.new(1000, 1000))
                tween({v = keyBox, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {Size = UDim2.new(0, sz.X + 20, 0, 20)}}):Play()
            end
            updateKeyBoxSize()

            local function applyVisual(instant)
                local tData = activeTheme.Function.Keybind[state and "True" or "False"]
                cardCtrl:SetTextTransparencyTitle(state and 0 or 0.55)
                if instant then
                    pill.BackgroundColor3 = tData["Toggle Background"]
                    knob.BackgroundColor3 = tData["Toggle Value"]
                    knob.AnchorPoint = state and Vector2.new(1, 0.5) or Vector2.new(0, 0.5)
                    knob.Position = state and UDim2.new(1, 0, 0.5, 0) or UDim2.new(0, 0, 0.5, 0)
                else
                    tween({v = pill, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {BackgroundColor3 = tData["Toggle Background"]}}):Play()
                    tween({
                        v = knob,
                        t = 0.15,
                        s = Enum.EasingStyle.Linear,
                        d = "Out",
                        g = {
                            BackgroundColor3 = tData["Toggle Value"],
                            AnchorPoint = state and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
                            Position = state and UDim2.new(1, 0, 0.5, 0) or UDim2.new(0, 0, 0.5, 0)
                        }
                    }):Play()
                end
            end

            applyVisual(true)
            cardBg:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
                applyVisual(true)
            end)

            local cardBtn = createClickButton(cardBg)
            cardBtn.MouseButton1Click:Connect(function()
                state = not state
                applyVisual(false)
                pcall(cb, boundKey, state)
            end)

            local isBinding = false
            rightBtn.MouseButton1Click:Connect(function()
                isBinding = true
                keyLabel.Text = "..."
                local conn
                conn = UserInputService.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Keyboard then
                        boundKey = input.KeyCode
                        keyLabel.Text = tostring(boundKey):gsub("Enum.KeyCode.", "")
                        updateKeyBoxSize()
                        conn:Disconnect()
                        pcall(cb, boundKey, state)
                        task.wait(0.1)
                        isBinding = false
                    end
                end)
            end)

            UserInputService.InputBegan:Connect(function(input, gpe)
                if not gpe and input.KeyCode == boundKey and not isBinding then
                    state = not state
                    applyVisual(false)
                    pcall(cb, boundKey, state)
                end
            end)

            task.delay(0, function()
                pcall(cb, boundKey, state)
            end)

            return {
                SetTitle = function(_, t) cardCtrl:SetTitle(t) end,
                SetDesc = function(_, d) cardCtrl:SetDesc(d) end,
                SetVisible = function(_, v) cardBg.Parent.Visible = v end,
                SetValue = function(_, v)
                    state = v and true or false
                    applyVisual(false)
                end,
                SetKey = function(_, k)
                    boundKey = k
                    keyLabel.Text = tostring(boundKey):gsub("Enum.KeyCode.", "")
                    updateKeyBoxSize()
                    pcall(cb, boundKey, state)
                end
            }
        end

        function TabElements:ColorPicker(cpOpts)
            cpOpts = cpOpts or {}
            local defaultColor = cpOpts.Value or Color3.fromRGB(255, 255, 255)
            local cb = cpOpts.Callback or function() end

            local cardBg, cardCtrl = createElementCard(pageScroll, cpOpts.Title or "Color Picker", cpOpts.Desc or "", cpOpts.Image or "", "Color Picker", activeTheme)
            cardCtrl:SetTextTransparencyTitle(0)
            cardCtrl:SetSizeT(50)

            local rightHolder = Instance.new("Frame")
            rightHolder.Name = "ListFunctionColorPicker"
            rightHolder.Parent = cardBg
            rightHolder.BackgroundTransparency = 1
            rightHolder.BorderSizePixel = 0
            rightHolder.Size = UDim2.new(1, 0, 1, 0)

            local rightPad = Instance.new("UIPadding")
            rightPad.Parent = rightHolder
            rightPad.PaddingRight = UDim.new(0, 10)

            local colorDot = Instance.new("Frame")
            colorDot.Name = "Picker"
            colorDot.Parent = rightHolder
            colorDot.AnchorPoint = Vector2.new(1, 0.5)
            colorDot.BackgroundColor3 = defaultColor
            colorDot.BorderSizePixel = 0
            colorDot.Position = UDim2.new(1, 0, 0.5, 0)
            colorDot.Size = UDim2.new(0, 20, 0, 20)

            local dotCorner = Instance.new("UICorner")
            dotCorner.CornerRadius = UDim.new(1, 0)
            dotCorner.Parent = colorDot

            local glowDot = Instance.new("ImageLabel")
            glowDot.Name = "GlowDot"
            glowDot.Parent = colorDot
            glowDot.AnchorPoint = Vector2.new(0.5, 0.5)
            glowDot.BackgroundTransparency = 1
            glowDot.BorderSizePixel = 0
            glowDot.Position = UDim2.new(0.5, 0, 0.5, 0)
            glowDot.Size = UDim2.new(1.5, 0, 1.5, 0)
            glowDot.Image = "rbxassetid://105506802034513"
            glowDot.ImageColor3 = defaultColor
            glowDot.ImageTransparency = 0.2

            local cpPopup = Instance.new("Frame")
            cpPopup.Name = "ColorpickBar"
            cpPopup.Parent = ScreenGui
            cpPopup.BackgroundColor3 = activeTheme.Function["Color Picker"]["Color Select"].Background
            cpPopup.BackgroundTransparency = 0.08
            cpPopup.BorderSizePixel = 0
            cpPopup.Size = UDim2.new(0, 200, 0, 0)
            cpPopup.ClipsDescendants = true
            cpPopup.ZIndex = 25
            makeDraggable(cpPopup, cpPopup)
            addToTheme("Function.Color Picker.Color Select.Background", cpPopup)

            local cpCorner = Instance.new("UICorner")
            cpCorner.CornerRadius = UDim.new(0, 6)
            cpCorner.Parent = cpPopup

            local cpStroke = Instance.new("UIStroke")
            cpStroke.Color = activeTheme.Function["Color Picker"]["Color Select"].UIStroke
            cpStroke.Thickness = 1
            cpStroke.Transparency = 1
            cpStroke.Parent = cpPopup
            addToTheme("Function.Color Picker.Color Select.UIStroke", cpStroke)

            local cpPad = Instance.new("UIPadding")
            cpPad.Parent = cpPopup
            cpPad.PaddingBottom = UDim.new(0, 5)
            cpPad.PaddingLeft = UDim.new(0, 10)
            cpPad.PaddingRight = UDim.new(0, 10)
            cpPad.PaddingTop = UDim.new(0, 5)

            local cpTitle = Instance.new("TextLabel")
            cpTitle.Name = "TitleColorPicker"
            cpTitle.Parent = cpPopup
            cpTitle.BackgroundTransparency = 1
            cpTitle.BorderSizePixel = 0
            cpTitle.Size = UDim2.new(1, 0, 0, 25)
            cpTitle.Font = Enum.Font.GothamBold
            cpTitle.Text = cpOpts.Title or "Color Picker"
            cpTitle.TextColor3 = activeTheme["Text & Icon"]
            cpTitle.TextSize = 11
            cpTitle.TextXAlignment = Enum.TextXAlignment.Left
            addToTheme("Text & Icon", cpTitle)

            local svMap = Instance.new("ImageLabel")
            svMap.Name = "Color"
            svMap.Parent = cpPopup
            svMap.BackgroundColor3 = defaultColor
            svMap.Position = UDim2.new(0, 0, 0, 25)
            svMap.Size = UDim2.new(0, 80, 0, 80)
            svMap.ZIndex = 26
            svMap.Image = "rbxassetid://4155801252"

            local svCorner = Instance.new("UICorner")
            svCorner.CornerRadius = UDim.new(0, 3)
            svCorner.Parent = svMap

            local svCursor = Instance.new("ImageLabel")
            svCursor.Name = "ColorSelection"
            svCursor.Parent = svMap
            svCursor.AnchorPoint = Vector2.new(0.5, 0.5)
            svCursor.BackgroundTransparency = 1
            svCursor.Size = UDim2.new(0, 12, 0, 12)
            svCursor.Image = "http://www.roblox.com/asset/?id=4805639000"
            svCursor.ScaleType = Enum.ScaleType.Fit

            local hueBar = Instance.new("ImageLabel")
            hueBar.Name = "Hue"
            hueBar.Parent = cpPopup
            hueBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            hueBar.Position = UDim2.new(0.47, 0, 0, 25)
            hueBar.Size = UDim2.new(0, 10, 0, 80)
            hueBar.ZIndex = 26

            local hueCorner = Instance.new("UICorner")
            hueCorner.CornerRadius = UDim.new(1, 0)
            hueCorner.Parent = hueBar

            local hueGrad = Instance.new("UIGradient")
            hueGrad.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)),
                ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)),
                ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)),
                ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)),
                ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
            })
            hueGrad.Rotation = 270
            hueGrad.Parent = hueBar

            local hueCursor = Instance.new("ImageLabel")
            hueCursor.Name = "HueSelection"
            hueCursor.Parent = hueBar
            hueCursor.AnchorPoint = Vector2.new(0.5, 0.5)
            hueCursor.BackgroundTransparency = 1
            hueCursor.Position = UDim2.new(0.5, 0, 1, 0)
            hueCursor.Size = UDim2.new(0, 12, 0, 12)
            hueCursor.Image = "http://www.roblox.com/asset/?id=4805639000"

            local inputsContainer = Instance.new("Frame")
            inputsContainer.Name = "BoxColor"
            inputsContainer.Parent = cpPopup
            inputsContainer.AnchorPoint = Vector2.new(1, 0)
            inputsContainer.BackgroundTransparency = 1
            inputsContainer.Position = UDim2.new(1, 0, 0, 25)
            inputsContainer.Size = UDim2.new(0, 80, 0, 80)

            local inputsLayout = Instance.new("UIListLayout")
            inputsLayout.Parent = inputsContainer
            inputsLayout.SortOrder = Enum.SortOrder.LayoutOrder
            inputsLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            local function createColorField(labelText, placeholder, order)
                local row = Instance.new("Frame")
                row.Parent = inputsContainer
                row.BackgroundTransparency = 1
                row.LayoutOrder = order
                row.Size = UDim2.new(1, 0, 0, 20)

                local box = Instance.new("Frame")
                box.Parent = row
                box.AnchorPoint = Vector2.new(0, 0.5)
                box.BackgroundTransparency = 1
                box.Position = UDim2.new(0, 0, 0.5, 0)
                box.Size = UDim2.new(0.6, 0, 0, 15)

                local bCorner = Instance.new("UICorner")
                bCorner.CornerRadius = UDim.new(1, 0)
                bCorner.Parent = box

                local bStroke = Instance.new("UIStroke")
                bStroke.Thickness = 1
                bStroke.Color = activeTheme.Function["Color Picker"]["Color Select"].UIStroke
                bStroke.Transparency = 0.9
                bStroke.Parent = box
                addToTheme("Function.Color Picker.Color Select.UIStroke", bStroke)

                local tb = Instance.new("TextBox")
                tb.Parent = box
                tb.BackgroundTransparency = 1
                tb.Size = UDim2.new(1, 0, 1, 0)
                tb.Font = Enum.Font.Gotham
                tb.PlaceholderText = placeholder
                tb.Text = placeholder
                tb.TextSize = 9
                tb.TextColor3 = activeTheme["Text & Icon"]
                addToTheme("Text & Icon", tb)

                local lbl = Instance.new("TextLabel")
                lbl.Parent = row
                lbl.AnchorPoint = Vector2.new(1, 0.5)
                lbl.BackgroundTransparency = 1
                lbl.Position = UDim2.new(0.98, 0, 0.5, 0)
                lbl.Size = UDim2.new(0, 22, 0, 20)
                lbl.Font = Enum.Font.Gotham
                lbl.Text = labelText
                lbl.TextSize = 9
                lbl.TextXAlignment = Enum.TextXAlignment.Left
                lbl.TextColor3 = activeTheme["Text & Icon"]
                addToTheme("Text & Icon", lbl)

                return tb
            end

            local hexInput = createColorField("Hex", "#FFFFFF", 0)
            local redInput = createColorField("Red", "255", 1)
            local greenInput = createColorField("Green", "255", 2)
            local blueInput = createColorField("Blue", "255", 3)

            local h, s, v = Color3.toHSV(defaultColor)
            local isOpen = false

            local function syncColor()
                local col = Color3.fromHSV(h, s, v)
                colorDot.BackgroundColor3 = col
                glowDot.ImageColor3 = col
                svMap.BackgroundColor3 = Color3.fromHSV(h, 1, 1)

                local r = math.floor(col.R * 255)
                local g = math.floor(col.G * 255)
                local b = math.floor(col.B * 255)

                redInput.Text = tostring(r)
                greenInput.Text = tostring(g)
                blueInput.Text = tostring(b)
                hexInput.Text = string.format("#%02X%02X%02X", r, g, b)

                svCursor.Position = UDim2.new(s, 0, 1 - v, 0)
                hueCursor.Position = UDim2.new(0.5, 0, 1 - h, 0)

                pcall(cb, r, g, b)
            end

            syncColor()

            local function onBoxEdit()
                local hexMatch = hexInput.Text:match("^#?([%x][%x][%x][%x][%x][%x])$")
                if hexMatch then
                    local r = tonumber(hexMatch:sub(1, 2), 16) / 255
                    local g = tonumber(hexMatch:sub(3, 4), 16) / 255
                    local b = tonumber(hexMatch:sub(5, 6), 16) / 255
                    h, s, v = Color3.toHSV(Color3.new(r, g, b))
                else
                    local r = math.clamp(tonumber(redInput.Text) or 0, 0, 255) / 255
                    local g = math.clamp(tonumber(greenInput.Text) or 0, 0, 255) / 255
                    local b = math.clamp(tonumber(blueInput.Text) or 0, 0, 255) / 255
                    h, s, v = Color3.toHSV(Color3.new(r, g, b))
                end
                syncColor()
            end

            hexInput.FocusLost:Connect(onBoxEdit)
            redInput.FocusLost:Connect(onBoxEdit)
            greenInput.FocusLost:Connect(onBoxEdit)
            blueInput.FocusLost:Connect(onBoxEdit)

            local svBtn = createClickButton(svMap)
            local hueBtn = createClickButton(hueBar)
            local draggingSV, draggingHue = false, false

            svBtn.InputBegan:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    draggingSV = true
                end
            end)
            svBtn.InputEnded:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    draggingSV = false
                end
            end)

            hueBtn.InputBegan:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    draggingHue = true
                end
            end)
            hueBtn.InputEnded:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    draggingHue = false
                end
            end)

            RunService.RenderStepped:Connect(function()
                local mouse = LocalPlayer:GetMouse()
                if draggingSV then
                    s = math.clamp((mouse.X - svMap.AbsolutePosition.X) / svMap.AbsoluteSize.X, 0, 1)
                    v = 1 - math.clamp((mouse.Y - svMap.AbsolutePosition.Y) / svMap.AbsoluteSize.Y, 0, 1)
                    syncColor()
                elseif draggingHue then
                    h = 1 - math.clamp((mouse.Y - hueBar.AbsolutePosition.Y) / hueBar.AbsoluteSize.Y, 0, 1)
                    syncColor()
                end
            end)

            local cardBtn = createClickButton(cardBg)
            cardBtn.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                if isOpen then
                    local posX = (colorDot.AbsolutePosition.X - cpPopup.Parent.AbsolutePosition.X) + colorDot.Size.X.Offset - 200
                    local posY = (colorDot.AbsolutePosition.Y - cpPopup.Parent.AbsolutePosition.Y) + colorDot.Size.Y.Offset + 6
                    cpPopup.Position = UDim2.new(0, posX, 0, posY)
                    tween({v = cpPopup, t = 0.15, s = Enum.EasingStyle.Exponential, d = "Out", g = {Size = UDim2.new(0, 200, 0, 120)}}):Play()
                    tween({v = cpStroke, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {Transparency = 0.9}}):Play()
                else
                    tween({v = cpPopup, t = 0.15, s = Enum.EasingStyle.Exponential, d = "Out", g = {Size = UDim2.new(0, 200, 0, 0)}}):Play()
                    tween({v = cpStroke, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {Transparency = 1}}):Play()
                end
            end)

            return {
                SetTitle = function(_, t) cardCtrl:SetTitle(t) cpTitle.Text = tostring(t) end,
                SetDesc = function(_, d) cardCtrl:SetDesc(d) end,
                SetVisible = function(_, vis) cardBg.Parent.Visible = vis end,
                SetValue = function(_, rgbTbl)
                    if type(rgbTbl) == "table" then
                        local col = Color3.fromRGB(rgbTbl.R or 255, rgbTbl.G or 255, rgbTbl.B or 255)
                        h, s, v = Color3.toHSV(col)
                        syncColor()
                    end
                end
            }
        end

        function TabElements:Code(codeOpts)
            codeOpts = codeOpts or {}
            local codeTitle = codeOpts.Title or "Code"
            local rawCode = codeOpts.Code or 'print("Hello World")'

            local wrapper = Instance.new("Frame")
            wrapper.Name = "Real Background"
            wrapper.Parent = pageScroll
            wrapper.BackgroundTransparency = 1
            wrapper.BorderSizePixel = 0
            wrapper.Size = UDim2.new(1, 0, 0, 110)
            wrapper.ClipsDescendants = true

            local bg = Instance.new("Frame")
            bg.Name = "Background"
            bg.Parent = wrapper
            bg.BackgroundColor3 = activeTheme.Function.Code["Background Code"]
            bg.BackgroundTransparency = 0.25
            bg.BorderSizePixel = 0
            bg.Size = UDim2.new(1, 0, 1, 0)
            bg.ClipsDescendants = true
            addToTheme("Function.Code.Background Code", bg)

            local bgCorner = Instance.new("UICorner")
            bgCorner.CornerRadius = UDim.new(0, 8)
            bgCorner.Parent = bg

            local topBar = Instance.new("Frame")
            topBar.Name = "Top"
            topBar.Parent = bg
            topBar.BackgroundTransparency = 1
            topBar.Size = UDim2.new(1, 0, 0, 28)

            local titleLbl = Instance.new("TextLabel")
            titleLbl.Parent = topBar
            titleLbl.BackgroundTransparency = 1
            titleLbl.Position = UDim2.new(0, 10, 0, 0)
            titleLbl.Size = UDim2.new(0.6, 0, 1, 0)
            titleLbl.Font = Enum.Font.GothamBold
            titleLbl.Text = tostring(codeTitle)
            titleLbl.TextColor3 = activeTheme["Text & Icon"]
            titleLbl.TextSize = 11
            titleLbl.TextXAlignment = Enum.TextXAlignment.Left
            addToTheme("Text & Icon", titleLbl)

            local copyBtn = Instance.new("TextButton")
            copyBtn.Parent = topBar
            copyBtn.AnchorPoint = Vector2.new(1, 0.5)
            copyBtn.BackgroundTransparency = 1
            copyBtn.Position = UDim2.new(1, -10, 0.5, 0)
            copyBtn.Size = UDim2.new(0, 55, 0, 22)
            copyBtn.Font = Enum.Font.GothamBold
            copyBtn.Text = "Copy"
            copyBtn.TextColor3 = activeTheme["Text & Icon"]
            copyBtn.TextSize = 11
            copyBtn.TextTransparency = 0.35
            copyBtn.TextXAlignment = Enum.TextXAlignment.Right
            addToTheme("Text & Icon", copyBtn)

            local bodyHolder = Instance.new("Frame")
            bodyHolder.Parent = bg
            bodyHolder.BackgroundColor3 = activeTheme.Function.Code["Background Code Value"]
            bodyHolder.BackgroundTransparency = 0.2
            bodyHolder.Position = UDim2.new(0, 6, 0, 28)
            bodyHolder.Size = UDim2.new(1, -12, 1, -34)
            addToTheme("Function.Code.Background Code Value", bodyHolder)

            local bodyCorner = Instance.new("UICorner")
            bodyCorner.CornerRadius = UDim.new(0, 6)
            bodyCorner.Parent = bodyHolder

            local codeScroll = Instance.new("ScrollingFrame")
            codeScroll.Parent = bodyHolder
            codeScroll.BackgroundTransparency = 1
            codeScroll.BorderSizePixel = 0
            codeScroll.Position = UDim2.new(0, 6, 0, 6)
            codeScroll.Size = UDim2.new(1, -12, 1, -12)
            codeScroll.ScrollBarThickness = 3
            codeScroll.ScrollBarImageColor3 = activeTheme.Main
            addToTheme("Main", codeScroll)

            local codeText = Instance.new("TextLabel")
            codeText.Parent = codeScroll
            codeText.BackgroundTransparency = 1
            codeText.AutomaticSize = Enum.AutomaticSize.XY
            codeText.Font = Enum.Font.RobotoMono
            codeText.Text = rawCode
            codeText.TextColor3 = activeTheme["Text & Icon"]
            codeText.TextSize = 11
            codeText.TextXAlignment = Enum.TextXAlignment.Left
            codeText.TextYAlignment = Enum.TextYAlignment.Top
            addToTheme("Text & Icon", codeText)

            local function updateCodeLayout()
                codeScroll.CanvasSize = UDim2.new(0, codeText.AbsoluteSize.X + 10, 0, codeText.AbsoluteSize.Y + 10)
                wrapper.Size = UDim2.new(1, 0, 0, math.clamp(codeText.TextBounds.Y + 52, 75, 220))
            end
            updateCodeLayout()
            codeText:GetPropertyChangedSignal("TextBounds"):Connect(updateCodeLayout)

            copyBtn.MouseButton1Click:Connect(function()
                if setclipboard then
                    setclipboard(rawCode)
                end
                copyBtn.Text = "Copied!"
                task.delay(1.2, function()
                    copyBtn.Text = "Copy"
                end)
            end)

            return {
                SetTitle = function(_, t) titleLbl.Text = tostring(t) end,
                SetCode = function(_, c)
                    rawCode = tostring(c)
                    codeText.Text = rawCode
                end
            }
        end

        function TabElements:Image(imgId)
            local img = Instance.new("ImageLabel")
            img.Name = "Im"
            img.Parent = pageScroll
            img.BackgroundTransparency = 1
            img.Size = UDim2.new(1, 0, 0, 180)
            img.Image = imgId or "rbxassetid://111362591084511"
            img.ScaleType = Enum.ScaleType.Crop

            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 6)
            corner.Parent = img
        end

        return TabElements
    end

    local notifContainer = Instance.new("Frame")
    notifContainer.Name = "Notification"
    notifContainer.Parent = ScreenGui
    notifContainer.AnchorPoint = Vector2.new(1, 1)
    notifContainer.BackgroundTransparency = 1
    notifContainer.BorderSizePixel = 0
    notifContainer.Position = UDim2.new(1, 0, 1, 0)
    notifContainer.Size = UDim2.new(0, 210, 0, 300)

    local notifPad = Instance.new("UIPadding")
    notifPad.Parent = notifContainer
    notifPad.PaddingBottom = UDim.new(0, 20)
    notifPad.PaddingRight = UDim.new(0, 14)

    local notifLayout = Instance.new("UIListLayout")
    notifLayout.Parent = notifContainer
    notifLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    notifLayout.SortOrder = Enum.SortOrder.LayoutOrder
    notifLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    notifLayout.Padding = UDim.new(0, 8)

    function WindowObj:Notify(nOpts)
        nOpts = nOpts or {}
        local nTitle = nOpts.Title or "Notification"
        local nDesc = nOpts.Desc or ""
        local duration = nOpts.Time or 5

        local nHolder = Instance.new("Frame")
        nHolder.Name = "NotifHolder"
        nHolder.Parent = notifContainer
        nHolder.BackgroundTransparency = 1
        nHolder.Size = UDim2.new(0, 190, 0, 0)

        local nShadow = attachCleanShadow(nHolder, 8, 10, activeTheme.Shadow, 0.5)
        nShadow.ImageTransparency = 1

        local nBg = Instance.new("CanvasGroup")
        nBg.Name = "Background"
        nBg.Parent = nHolder
        nBg.AnchorPoint = Vector2.new(0.5, 0.5)
        nBg.BackgroundColor3 = activeTheme.Background
        nBg.BackgroundTransparency = 0.14
        nBg.BorderSizePixel = 0
        nBg.Position = UDim2.new(0.5, 0, 0.5, 0)
        nBg.Size = UDim2.new(1, 0, 1, 0)
        nBg.ZIndex = 1
        nBg.GroupTransparency = 1
        addToTheme("Background", nBg)

        local nCorner = Instance.new("UICorner")
        nCorner.CornerRadius = UDim.new(0, 8)
        nCorner.Parent = nBg

        local nStroke = Instance.new("UIStroke")
        nStroke.Color = Color3.fromRGB(255, 255, 255)
        nStroke.Thickness = 1
        nStroke.Transparency = 0.9
        nStroke.Parent = nBg

        local progress = Instance.new("Frame")
        progress.Parent = nBg
        progress.AnchorPoint = Vector2.new(0, 1)
        progress.BackgroundColor3 = activeTheme.Main
        progress.BackgroundTransparency = 0.2
        progress.BorderSizePixel = 0
        progress.Position = UDim2.new(0, 0, 1, 0)
        progress.Size = UDim2.new(1, 0, 0, 3)

        local textBox = Instance.new("Frame")
        textBox.Parent = nBg
        textBox.BackgroundTransparency = 1
        textBox.Size = UDim2.new(1, 0, 1, 0)

        local tbPad = Instance.new("UIPadding")
        tbPad.Parent = textBox
        tbPad.PaddingBottom = UDim.new(0, 8)
        tbPad.PaddingLeft = UDim.new(0, 8)
        tbPad.PaddingRight = UDim.new(0, 8)
        tbPad.PaddingTop = UDim.new(0, 6)

        local tbLayout = Instance.new("UIListLayout")
        tbLayout.Parent = textBox
        tbLayout.Padding = UDim.new(0, 3)
        tbLayout.SortOrder = Enum.SortOrder.LayoutOrder

        local tLbl = Instance.new("TextLabel")
        tLbl.Parent = textBox
        tLbl.AutomaticSize = Enum.AutomaticSize.Y
        tLbl.BackgroundTransparency = 1
        tLbl.Size = UDim2.new(1, 0, 0, 0)
        tLbl.Font = Enum.Font.GothamBold
        tLbl.Text = tostring(nTitle)
        tLbl.TextColor3 = activeTheme["Text & Icon"]
        tLbl.TextSize = 12
        tLbl.TextWrapped = true
        tLbl.RichText = true
        tLbl.TextXAlignment = Enum.TextXAlignment.Left

        local dLbl = Instance.new("TextLabel")
        dLbl.Parent = textBox
        dLbl.AutomaticSize = Enum.AutomaticSize.Y
        dLbl.BackgroundTransparency = 1
        dLbl.LayoutOrder = 1
        dLbl.Size = UDim2.new(1, 0, 0, 0)
        dLbl.Font = Enum.Font.Gotham
        dLbl.Text = tostring(nDesc)
        dLbl.TextColor3 = activeTheme["Text & Icon"]
        dLbl.TextSize = 10
        dLbl.TextTransparency = 0.35
        dLbl.TextWrapped = true
        dLbl.RichText = true
        dLbl.TextXAlignment = Enum.TextXAlignment.Left
        dLbl.Visible = (nDesc ~= "")

        task.defer(function()
            local h = math.max(tbLayout.AbsoluteContentSize.Y + 20, 44)
            tween({v = nHolder, t = 0.18, s = Enum.EasingStyle.Exponential, d = "Out", g = {Size = UDim2.new(0, 190, 0, h)}}):Play()
            tween({v = nBg, t = 0.18, s = Enum.EasingStyle.Linear, d = "Out", g = {GroupTransparency = 0.05}}):Play()
            tween({v = nShadow, t = 0.18, s = Enum.EasingStyle.Linear, d = "Out", g = {ImageTransparency = 0.5}}):Play()
        end)

        task.spawn(function()
            tween({v = progress, t = duration, s = Enum.EasingStyle.Linear, d = "Out", g = {Size = UDim2.new(0, 0, 0, 3)}}):Play()
            task.wait(duration)
            tween({v = nShadow, t = 0.18, s = Enum.EasingStyle.Linear, d = "InOut", g = {ImageTransparency = 1}}):Play()
            local outAnim = tween({v = nBg, t = 0.18, s = Enum.EasingStyle.Linear, d = "InOut", g = {GroupTransparency = 1}})
            outAnim:Play()
            outAnim.Completed:Wait()
            nHolder:Destroy()
        end)
    end

    function WindowObj:Dialog(dOpts)
        if mainBg:FindFirstChild("Dialog") then return end
        dOpts = dOpts or {}
        local b1 = dOpts.Button1 or {Title = "Confirm"}
        local b2 = dOpts.Button2 or {Title = "Cancel"}

        local overlay = Instance.new("CanvasGroup")
        overlay.Name = "Dialog"
        overlay.Parent = mainBg
        overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        overlay.BackgroundTransparency = 0.35
        overlay.BorderSizePixel = 0
        overlay.Size = UDim2.new(1, 0, 1, 0)
        overlay.GroupTransparency = 1
        overlay.ZIndex = 10

        local ovCorner = Instance.new("UICorner")
        ovCorner.CornerRadius = UDim.new(0, 17)
        ovCorner.Parent = overlay

        local center = Instance.new("Frame")
        center.Parent = overlay
        center.AnchorPoint = Vector2.new(0.5, 0.5)
        center.BackgroundTransparency = 1
        center.Position = UDim2.new(0.5, 0, 0.5, 0)
        center.Size = UDim2.new(0, 300, 0, 110)

        local cLayout = Instance.new("UIListLayout")
        cLayout.Parent = center
        cLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        cLayout.SortOrder = Enum.SortOrder.LayoutOrder
        cLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        cLayout.Padding = UDim.new(0, 12)

        local qLbl = Instance.new("TextLabel")
        qLbl.Parent = center
        qLbl.BackgroundTransparency = 1
        qLbl.Size = UDim2.new(1, 0, 0, 30)
        qLbl.Font = Enum.Font.GothamBold
        qLbl.RichText = true
        qLbl.Text = dOpts.Title or "Confirm?"
        qLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
        qLbl.TextSize = 18

        local btnRow = Instance.new("Frame")
        btnRow.Parent = center
        btnRow.BackgroundTransparency = 1
        btnRow.LayoutOrder = 1
        btnRow.Size = UDim2.new(1, 0, 0, 42)

        local rowLayout = Instance.new("UIListLayout")
        rowLayout.Parent = btnRow
        rowLayout.Padding = UDim.new(0, 12)
        rowLayout.FillDirection = Enum.FillDirection.Horizontal
        rowLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        rowLayout.VerticalAlignment = Enum.VerticalAlignment.Center

        local function makeDialogBtn(btnCfg, defaultColor)
            local frame = Instance.new("Frame")
            frame.Parent = btnRow
            frame.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
            frame.BackgroundTransparency = 0.2
            frame.Size = UDim2.new(0, 120, 0, 36)

            local cr = Instance.new("UICorner")
            cr.CornerRadius = UDim.new(1, 0)
            cr.Parent = frame

            local st = Instance.new("UIStroke")
            st.Color = btnCfg.Color or defaultColor
            st.Thickness = 1.5
            st.Parent = frame

            local lbl = Instance.new("TextLabel")
            lbl.Parent = frame
            lbl.BackgroundTransparency = 1
            lbl.Size = UDim2.new(1, 0, 1, 0)
            lbl.Font = Enum.Font.GothamBold
            lbl.Text = btnCfg.Title or "OK"
            lbl.TextColor3 = btnCfg.Color or defaultColor
            lbl.TextSize = 14

            local btn = createClickButton(frame)
            btn.MouseButton1Click:Connect(function()
                if btnCfg.Callback then pcall(btnCfg.Callback) end
                local closeAnim = tween({v = overlay, t = 0.2, s = Enum.EasingStyle.Linear, d = "Out", g = {GroupTransparency = 1}})
                closeAnim:Play()
                closeAnim.Completed:Wait()
                overlay:Destroy()
            end)
        end

        makeDialogBtn(b1, Color3.fromRGB(0, 200, 90))
        makeDialogBtn(b2, Color3.fromRGB(235, 60, 60))

        tween({v = overlay, t = 0.2, s = Enum.EasingStyle.Linear, d = "Out", g = {GroupTransparency = 0}}):Play()
    end

    local resizeBtn = Instance.new("TextButton")
    resizeBtn.Name = "Size"
    resizeBtn.Parent = mainBg
    resizeBtn.Active = true
    resizeBtn.AnchorPoint = Vector2.new(1, 1)
    resizeBtn.BackgroundTransparency = 1
    resizeBtn.Position = UDim2.new(1, 0, 1, 0)
    resizeBtn.Size = UDim2.new(0, 20, 0, 20)
    resizeBtn.Text = ""

    resizeBtn.MouseButton1Down:Connect(function()
        isResizing = true
    end)

    local isMaximized = false
    local savedSize, savedPos
    maximizeBtn.MouseButton1Click:Connect(function()
        if not isMaximized then
            savedSize = windowHolder.Size
            savedPos = windowHolder.Position
            tween({v = windowHolder, t = 0.18, s = Enum.EasingStyle.Exponential, d = "Out", g = {Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0)}}):Play()
            maximizeBtn.Image = "rbxassetid://13857981896"
        else
            maximizeBtn.Image = "rbxassetid://13857987062"
            tween({v = windowHolder, t = 0.18, s = Enum.EasingStyle.Exponential, d = "Out", g = {Size = savedSize, Position = savedPos}}):Play()
        end
        isMaximized = not isMaximized
    end)

    local absPos = windowHolder.AbsolutePosition
    local parentAbs = windowHolder.Parent.AbsoluteSize
    windowHolder.AnchorPoint = Vector2.new(0, 0)
    windowHolder.Position = UDim2.new(absPos.X / parentAbs.X, 0, absPos.Y / parentAbs.Y, 0)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            isResizing = false
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if not isMaximized and isResizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local newW = math.max(450, input.Position.X - windowHolder.AbsolutePosition.X)
            local newH = math.max(220, input.Position.Y - windowHolder.AbsolutePosition.Y)
            tween({v = windowHolder, t = 0.05, s = Enum.EasingStyle.Exponential, d = "Out", g = {Size = UDim2.new(0, newW, 0, newH)}}):Play()
        end
    end)

    makeDraggable(topbar, windowHolder)

    local savedMainSize
    local function toggleUIVisibility()
        isMinimized = not isMinimized
        if isMinimized then
            savedMainSize = mainBg.Size
            tween({v = windowShadow, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = {ImageTransparency = 1}}):Play()
            local anim = tween({v = mainBg, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = {GroupTransparency = 1, Size = savedMainSize - UDim2.fromOffset(5, 5)}})
            anim:Play()
            anim.Completed:Wait()
            windowHolder.Visible = false
            WindowObj:Notify({
                Title = winTitle,
                Desc = 'Press <font color="#FF77A5" size="13">(' .. tostring(toggleKeybind):gsub("Enum.KeyCode.", "") .. ")</font> to hide/show UI",
                Time = 5
            })
        else
            windowHolder.Visible = true
            tween({v = windowShadow, t = 0.18, s = Enum.EasingStyle.Linear, d = "InOut", g = {ImageTransparency = 0.4}}):Play()
            tween({v = mainBg, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = {GroupTransparency = 0, Size = savedMainSize or UDim2.new(1, 0, 1, 0)}}):Play()
        end
    end

    hideBtn.MouseButton1Click:Connect(toggleUIVisibility)

    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == toggleKeybind and not UserInputService:GetFocusedTextBox() then
            toggleUIVisibility()
        end
    end)

    addDropdownSelect(themeSelectorAnchor, themeSelectorAnchor, false, function(selectedThemeName)
        if Themes[selectedThemeName] then
            currentThemeName = selectedThemeName
            activeTheme = Themes[selectedThemeName]
            Library:setTheme(activeTheme)
        end
    end, currentThemeName, Themes.index, activeTheme)

    closeBtn.MouseButton1Click:Connect(function()
        WindowObj:Dialog({
            Title = "Do you want to <font color='#FF4444'>close</font> the UI?",
            Button1 = {
                Title = "Confirm",
                Color = Color3.fromRGB(0, 200, 90),
                Callback = function()
                    ScreenGui:Destroy()
                end
            },
            Button2 = {
                Title = "Cancel",
                Color = Color3.fromRGB(235, 60, 60)
            }
        })
    end)

    if closeBtnCfg and closeBtnCfg.Enabled then
        local floatHolder = Instance.new("Frame")
        floatHolder.Name = "CloseUIHolder"
        floatHolder.Parent = ScreenGui
        floatHolder.BackgroundTransparency = 1
        floatHolder.Position = UDim2.new(0, 15, 0.2, 0)
        floatHolder.Size = UDim2.new(0, 85, 0, 32)

        attachCleanShadow(floatHolder, 8, 10, activeTheme.Shadow, 0.45)

        local floatBg = Instance.new("Frame")
        floatBg.Name = "BackgroundCloseUI"
        floatBg.Parent = floatHolder
        floatBg.AnchorPoint = Vector2.new(0.5, 0.5)
        floatBg.BackgroundColor3 = activeTheme.Background
        floatBg.BackgroundTransparency = 0.16
        floatBg.BorderSizePixel = 0
        floatBg.Position = UDim2.new(0.5, 0, 0.5, 0)
        floatBg.Size = UDim2.new(1, 0, 1, 0)
        floatBg.ZIndex = 1
        floatBg.ClipsDescendants = true
        addToTheme("Background", floatBg)

        local fCorner = Instance.new("UICorner")
        fCorner.CornerRadius = UDim.new(0, 8)
        fCorner.Parent = floatBg

        local fStroke = Instance.new("UIStroke")
        fStroke.Color = activeTheme.Main
        fStroke.Thickness = 1
        fStroke.Transparency = 0.5
        fStroke.Parent = floatBg
        addToTheme("Main", fStroke)

        local fLabel = Instance.new("TextLabel")
        fLabel.Name = "Title"
        fLabel.Parent = floatBg
        fLabel.BackgroundTransparency = 1
        fLabel.Size = UDim2.new(1, 0, 1, 0)
        fLabel.Font = Enum.Font.GothamBold
        fLabel.Text = closeBtnCfg.Text or "Near Hub"
        fLabel.TextColor3 = activeTheme["Text & Icon"]
        fLabel.TextSize = 12
        addToTheme("Text & Icon", fLabel)

        floatHolder.Size = UDim2.new(0, fLabel.TextBounds.X + 30, 0, 32)
        local floatBtn = createClickButton(floatHolder)
        makeDraggable(floatBtn, floatHolder)

        floatBtn.MouseButton1Click:Connect(function()
            toggleUIVisibility()
        end)
    end

    return WindowObj
end

return Library
