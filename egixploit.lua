local players = game:GetService("Players")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")
local tweenService = game:GetService("TweenService")
local textService = game:GetService("TextService")
local userInputService = game:GetService("UserInputService")
Library = {}
SaveTheme = {}

local v1 = {
  index = { "Dark", "Amethyst", "Red", "Green", "Blue", "Orange", "Purple" },
  Amethyst = {
    Shadow = Color3.fromRGB(24, 24, 31),
    Background = Color3.fromRGB(29, 28, 38),
    Page = Color3.fromRGB(24, 24, 31),
    Main = Color3.fromRGB(91, 68, 209),
    ["Text & Icon"] = Color3.fromRGB(255, 255, 255),
    Function = {
      Toggle = {
        Background = Color3.fromRGB(29, 28, 38),
        True = {
          ["Toggle Background"] = Color3.fromRGB(44, 34, 103),
          ["Toggle Value"] = Color3.fromRGB(91, 68, 209),
        },
        False = {
          ["Toggle Background"] = Color3.fromRGB(36, 35, 48),
          ["Toggle Value"] = Color3.fromRGB(44, 42, 62),
        },
      },
      Label = { Background = Color3.fromRGB(29, 28, 38) },
      Dropdown = {
        Background = Color3.fromRGB(29, 28, 38),
        ["Value Background"] = Color3.fromRGB(24, 24, 31),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Dropdown Select"] = {
          Background = Color3.fromRGB(24, 24, 31),
          Search = Color3.fromRGB(35, 35, 42),
          ["Item Background"] = Color3.fromRGB(45, 45, 52),
        },
      },
      Slider = {
        Background = Color3.fromRGB(29, 28, 38),
        ["Value Background"] = Color3.fromRGB(24, 24, 31),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Slider Bar"] = Color3.fromRGB(44, 34, 103),
        ["Slider Bar Value"] = Color3.fromRGB(91, 68, 209),
        ["Circle Value"] = Color3.fromRGB(255, 255, 255),
      },
      Code = {
        Background = ColorSequence.new({
          ColorSequenceKeypoint.new(0, Color3.fromRGB(29, 28, 38)),
          ColorSequenceKeypoint.new(1, Color3.fromRGB(29, 28, 38)),
        }),
        ["Background Code"] = Color3.fromRGB(51, 62, 68),
        ["Background Code Value"] = Color3.fromRGB(38, 50, 56),
        ["ScrollingFrame Code"] = Color3.fromRGB(216, 150, 179),
      },
      Button = {
        Background = Color3.fromRGB(29, 28, 38),
        Click = Color3.fromRGB(255, 255, 255),
      },
      Textbox = {
        Background = Color3.fromRGB(29, 28, 38),
        ["Value Background"] = Color3.fromRGB(24, 24, 31),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
      },
      Keybind = {
        Background = Color3.fromRGB(29, 28, 38),
        ["Value Background"] = Color3.fromRGB(24, 24, 31),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        True = {
          ["Toggle Background"] = Color3.fromRGB(44, 34, 103),
          ["Toggle Value"] = Color3.fromRGB(91, 68, 209),
        },
        False = {
          ["Toggle Background"] = Color3.fromRGB(36, 35, 48),
          ["Toggle Value"] = Color3.fromRGB(44, 42, 62),
        },
      },
      ["Color Picker"] = {
        Background = Color3.fromRGB(29, 28, 38),
        ["Color Select"] = {
          Background = Color3.fromRGB(24, 24, 31),
          UIStroke = Color3.fromRGB(255, 255, 255),
        },
      },
    },
  },
  Dark = {
    Shadow = Color3.fromRGB(15, 15, 15),
    Background = Color3.fromRGB(20, 20, 20),
    Page = Color3.fromRGB(18, 18, 18),
    Main = Color3.fromRGB(50, 50, 50),
    ["Text & Icon"] = Color3.fromRGB(230, 230, 230),
    Function = {
      Toggle = {
        Background = Color3.fromRGB(25, 25, 25),
        True = {
          ["Toggle Background"] = Color3.fromRGB(40, 40, 40),
          ["Toggle Value"] = Color3.fromRGB(70, 130, 180),
        },
        False = {
          ["Toggle Background"] = Color3.fromRGB(30, 30, 30),
          ["Toggle Value"] = Color3.fromRGB(40, 40, 40),
        },
      },
      Label = { Background = Color3.fromRGB(25, 25, 25) },
      Dropdown = {
        Background = Color3.fromRGB(25, 25, 25),
        ["Value Background"] = Color3.fromRGB(20, 20, 20),
        ["Value Stroke"] = Color3.fromRGB(230, 230, 230),
        ["Dropdown Select"] = {
          Background = Color3.fromRGB(20, 20, 20),
          Search = Color3.fromRGB(30, 30, 30),
          ["Item Background"] = Color3.fromRGB(30, 30, 30),
        },
      },
      Slider = {
        Background = Color3.fromRGB(25, 25, 25),
        ["Value Background"] = Color3.fromRGB(20, 20, 20),
        ["Value Stroke"] = Color3.fromRGB(230, 230, 230),
        ["Slider Bar"] = Color3.fromRGB(40, 40, 40),
        ["Slider Bar Value"] = Color3.fromRGB(70, 130, 180),
        ["Circle Value"] = Color3.fromRGB(255, 255, 255),
      },
      Code = {
        Background = ColorSequence.new({
          ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 25)),
          ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 25)),
        }),
        ["Background Code"] = Color3.fromRGB(35, 35, 35),
        ["Background Code Value"] = Color3.fromRGB(28, 28, 28),
        ["ScrollingFrame Code"] = Color3.fromRGB(150, 150, 150),
      },
      Button = {
        Background = Color3.fromRGB(25, 25, 25),
        Click = Color3.fromRGB(230, 230, 230),
      },
      Textbox = {
        Background = Color3.fromRGB(25, 25, 25),
        ["Value Background"] = Color3.fromRGB(20, 20, 20),
        ["Value Stroke"] = Color3.fromRGB(230, 230, 230),
      },
      Keybind = {
        Background = Color3.fromRGB(25, 25, 25),
        ["Value Background"] = Color3.fromRGB(20, 20, 20),
        ["Value Stroke"] = Color3.fromRGB(230, 230, 230),
        True = {
          ["Toggle Background"] = Color3.fromRGB(40, 40, 40),
          ["Toggle Value"] = Color3.fromRGB(70, 130, 180),
        },
        False = {
          ["Toggle Background"] = Color3.fromRGB(30, 30, 30),
          ["Toggle Value"] = Color3.fromRGB(40, 40, 40),
        },
      },
      ["Color Picker"] = {
        Background = Color3.fromRGB(25, 25, 25),
        ["Color Select"] = {
          Background = Color3.fromRGB(20, 20, 20),
          UIStroke = Color3.fromRGB(230, 230, 230),
        },
      },
    },
  },
  Red = {
    Shadow = Color3.fromRGB(20, 15, 15),
    Background = Color3.fromRGB(25, 20, 20),
    Page = Color3.fromRGB(20, 16, 16),
    Main = Color3.fromRGB(209, 68, 68),
    ["Text & Icon"] = Color3.fromRGB(255, 255, 255),
    Function = {
      Toggle = {
        Background = Color3.fromRGB(25, 20, 20),
        True = { ["Toggle Background"] = Color3.fromRGB(103, 34, 34), ["Toggle Value"] = Color3.fromRGB(209, 68, 68) },
        False = { ["Toggle Background"] = Color3.fromRGB(48, 35, 35), ["Toggle Value"] = Color3.fromRGB(62, 42, 42) },
      },
      Label = { Background = Color3.fromRGB(25, 20, 20) },
      Dropdown = {
        Background = Color3.fromRGB(25, 20, 20),
        ["Value Background"] = Color3.fromRGB(20, 16, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Dropdown Select"] = { Background = Color3.fromRGB(20, 16, 16), Search = Color3.fromRGB(35, 28, 28), ["Item Background"] = Color3.fromRGB(45, 35, 35) },
      },
      Slider = {
        Background = Color3.fromRGB(25, 20, 20),
        ["Value Background"] = Color3.fromRGB(20, 16, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Slider Bar"] = Color3.fromRGB(103, 34, 34),
        ["Slider Bar Value"] = Color3.fromRGB(209, 68, 68),
        ["Circle Value"] = Color3.fromRGB(255, 255, 255),
      },
      Code = {
        Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 20, 20)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 20, 20)) }),
        ["Background Code"] = Color3.fromRGB(68, 51, 51),
        ["Background Code Value"] = Color3.fromRGB(50, 38, 38),
        ["ScrollingFrame Code"] = Color3.fromRGB(216, 150, 150),
      },
      Button = { Background = Color3.fromRGB(25, 20, 20), Click = Color3.fromRGB(255, 255, 255) },
      Textbox = { Background = Color3.fromRGB(25, 20, 20), ["Value Background"] = Color3.fromRGB(20, 16, 16), ["Value Stroke"] = Color3.fromRGB(255, 255, 255) },
      Keybind = {
        Background = Color3.fromRGB(25, 20, 20),
        ["Value Background"] = Color3.fromRGB(20, 16, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        True = { ["Toggle Background"] = Color3.fromRGB(103, 34, 34), ["Toggle Value"] = Color3.fromRGB(209, 68, 68) },
        False = { ["Toggle Background"] = Color3.fromRGB(36, 35, 48), ["Toggle Value"] = Color3.fromRGB(44, 42, 62) },
      },
      ["Color Picker"] = { Background = Color3.fromRGB(25, 20, 20), ["Color Select"] = { Background = Color3.fromRGB(20, 16, 16), UIStroke = Color3.fromRGB(255, 255, 255) } },
    },
  },
  Green = {
    Shadow = Color3.fromRGB(15, 20, 15),
    Background = Color3.fromRGB(20, 25, 20),
    Page = Color3.fromRGB(16, 20, 16),
    Main = Color3.fromRGB(68, 209, 105),
    ["Text & Icon"] = Color3.fromRGB(255, 255, 255),
    Function = {
      Toggle = {
        Background = Color3.fromRGB(20, 25, 20),
        True = { ["Toggle Background"] = Color3.fromRGB(34, 103, 53), ["Toggle Value"] = Color3.fromRGB(68, 209, 105) },
        False = { ["Toggle Background"] = Color3.fromRGB(35, 48, 38), ["Toggle Value"] = Color3.fromRGB(42, 62, 47) },
      },
      Label = { Background = Color3.fromRGB(20, 25, 20) },
      Dropdown = {
        Background = Color3.fromRGB(20, 25, 20),
        ["Value Background"] = Color3.fromRGB(16, 20, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Dropdown Select"] = { Background = Color3.fromRGB(16, 20, 16), Search = Color3.fromRGB(28, 35, 28), ["Item Background"] = Color3.fromRGB(35, 45, 35) },
      },
      Slider = {
        Background = Color3.fromRGB(20, 25, 20),
        ["Value Background"] = Color3.fromRGB(16, 20, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Slider Bar"] = Color3.fromRGB(34, 103, 53),
        ["Slider Bar Value"] = Color3.fromRGB(68, 209, 105),
        ["Circle Value"] = Color3.fromRGB(255, 255, 255),
      },
      Code = {
        Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 25, 20)), ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 25, 20)) }),
        ["Background Code"] = Color3.fromRGB(51, 68, 55),
        ["Background Code Value"] = Color3.fromRGB(38, 50, 41),
        ["ScrollingFrame Code"] = Color3.fromRGB(150, 216, 170),
      },
      Button = { Background = Color3.fromRGB(20, 25, 20), Click = Color3.fromRGB(255, 255, 255) },
      Textbox = { Background = Color3.fromRGB(20, 25, 20), ["Value Background"] = Color3.fromRGB(16, 20, 16), ["Value Stroke"] = Color3.fromRGB(255, 255, 255) },
      Keybind = {
        Background = Color3.fromRGB(20, 25, 20),
        ["Value Background"] = Color3.fromRGB(16, 20, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        True = { ["Toggle Background"] = Color3.fromRGB(34, 103, 53), ["Toggle Value"] = Color3.fromRGB(68, 209, 105) },
        False = { ["Toggle Background"] = Color3.fromRGB(35, 48, 38), ["Toggle Value"] = Color3.fromRGB(42, 62, 47) },
      },
      ["Color Picker"] = { Background = Color3.fromRGB(20, 25, 20), ["Color Select"] = { Background = Color3.fromRGB(16, 20, 16), UIStroke = Color3.fromRGB(255, 255, 255) } },
    },
  },
  Blue = {
    Shadow = Color3.fromRGB(15, 18, 24),
    Background = Color3.fromRGB(20, 24, 30),
    Page = Color3.fromRGB(16, 20, 25),
    Main = Color3.fromRGB(68, 130, 209),
    ["Text & Icon"] = Color3.fromRGB(255, 255, 255),
    Function = {
      Toggle = {
        Background = Color3.fromRGB(20, 24, 30),
        True = { ["Toggle Background"] = Color3.fromRGB(34, 75, 103), ["Toggle Value"] = Color3.fromRGB(68, 130, 209) },
        False = { ["Toggle Background"] = Color3.fromRGB(35, 42, 48), ["Toggle Value"] = Color3.fromRGB(42, 51, 62) },
      },
      Label = { Background = Color3.fromRGB(20, 24, 30) },
      Dropdown = {
        Background = Color3.fromRGB(20, 24, 30),
        ["Value Background"] = Color3.fromRGB(16, 20, 25),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Dropdown Select"] = { Background = Color3.fromRGB(16, 20, 25), Search = Color3.fromRGB(28, 33, 42), ["Item Background"] = Color3.fromRGB(35, 43, 55) },
      },
      Slider = {
        Background = Color3.fromRGB(20, 24, 30),
        ["Value Background"] = Color3.fromRGB(16, 20, 25),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Slider Bar"] = Color3.fromRGB(34, 75, 103),
        ["Slider Bar Value"] = Color3.fromRGB(68, 130, 209),
        ["Circle Value"] = Color3.fromRGB(255, 255, 255),
      },
      Code = {
        Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 24, 30)), ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 24, 30)) }),
        ["Background Code"] = Color3.fromRGB(51, 60, 68),
        ["Background Code Value"] = Color3.fromRGB(38, 45, 50),
        ["ScrollingFrame Code"] = Color3.fromRGB(150, 190, 216),
      },
      Button = { Background = Color3.fromRGB(20, 24, 30), Click = Color3.fromRGB(255, 255, 255) },
      Textbox = { Background = Color3.fromRGB(20, 24, 30), ["Value Background"] = Color3.fromRGB(16, 20, 25), ["Value Stroke"] = Color3.fromRGB(255, 255, 255) },
      Keybind = {
        Background = Color3.fromRGB(20, 24, 30),
        ["Value Background"] = Color3.fromRGB(16, 20, 25),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        True = { ["Toggle Background"] = Color3.fromRGB(34, 75, 103), ["Toggle Value"] = Color3.fromRGB(68, 130, 209) },
        False = { ["Toggle Background"] = Color3.fromRGB(35, 42, 48), ["Toggle Value"] = Color3.fromRGB(42, 51, 62) },
      },
      ["Color Picker"] = { Background = Color3.fromRGB(20, 24, 30), ["Color Select"] = { Background = Color3.fromRGB(16, 20, 25), UIStroke = Color3.fromRGB(255, 255, 255) } },
    },
  },
  Orange = {
    Shadow = Color3.fromRGB(24, 20, 15),
    Background = Color3.fromRGB(30, 25, 20),
    Page = Color3.fromRGB(25, 20, 16),
    Main = Color3.fromRGB(209, 130, 68),
    ["Text & Icon"] = Color3.fromRGB(255, 255, 255),
    Function = {
      Toggle = {
        Background = Color3.fromRGB(30, 25, 20),
        True = { ["Toggle Background"] = Color3.fromRGB(103, 65, 34), ["Toggle Value"] = Color3.fromRGB(209, 130, 68) },
        False = { ["Toggle Background"] = Color3.fromRGB(48, 40, 35), ["Toggle Value"] = Color3.fromRGB(62, 52, 42) },
      },
      Label = { Background = Color3.fromRGB(30, 25, 20) },
      Dropdown = {
        Background = Color3.fromRGB(30, 25, 20),
        ["Value Background"] = Color3.fromRGB(25, 20, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Dropdown Select"] = { Background = Color3.fromRGB(25, 20, 16), Search = Color3.fromRGB(42, 33, 28), ["Item Background"] = Color3.fromRGB(55, 43, 35) },
      },
      Slider = {
        Background = Color3.fromRGB(30, 25, 20),
        ["Value Background"] = Color3.fromRGB(25, 20, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Slider Bar"] = Color3.fromRGB(103, 65, 34),
        ["Slider Bar Value"] = Color3.fromRGB(209, 130, 68),
        ["Circle Value"] = Color3.fromRGB(255, 255, 255),
      },
      Code = {
        Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 20)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 25, 20)) }),
        ["Background Code"] = Color3.fromRGB(68, 55, 51),
        ["Background Code Value"] = Color3.fromRGB(50, 40, 38),
        ["ScrollingFrame Code"] = Color3.fromRGB(216, 190, 150),
      },
      Button = { Background = Color3.fromRGB(30, 25, 20), Click = Color3.fromRGB(255, 255, 255) },
      Textbox = { Background = Color3.fromRGB(30, 25, 20), ["Value Background"] = Color3.fromRGB(25, 20, 16), ["Value Stroke"] = Color3.fromRGB(255, 255, 255) },
      Keybind = {
        Background = Color3.fromRGB(30, 25, 20),
        ["Value Background"] = Color3.fromRGB(25, 20, 16),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        True = { ["Toggle Background"] = Color3.fromRGB(103, 65, 34), ["Toggle Value"] = Color3.fromRGB(209, 130, 68) },
        False = { ["Toggle Background"] = Color3.fromRGB(48, 40, 35), ["Toggle Value"] = Color3.fromRGB(62, 52, 42) },
      },
      ["Color Picker"] = { Background = Color3.fromRGB(30, 25, 20), ["Color Select"] = { Background = Color3.fromRGB(25, 20, 16), UIStroke = Color3.fromRGB(255, 255, 255) } },
    },
  },
  Purple = {
    Shadow = Color3.fromRGB(20, 15, 24),
    Background = Color3.fromRGB(26, 20, 31),
    Page = Color3.fromRGB(21, 16, 25),
    Main = Color3.fromRGB(150, 68, 209),
    ["Text & Icon"] = Color3.fromRGB(255, 255, 255),
    Function = {
      Toggle = {
        Background = Color3.fromRGB(26, 20, 31),
        True = { ["Toggle Background"] = Color3.fromRGB(75, 34, 103), ["Toggle Value"] = Color3.fromRGB(150, 68, 209) },
        False = { ["Toggle Background"] = Color3.fromRGB(42, 35, 48), ["Toggle Value"] = Color3.fromRGB(53, 42, 62) },
      },
      Label = { Background = Color3.fromRGB(26, 20, 31) },
      Dropdown = {
        Background = Color3.fromRGB(26, 20, 31),
        ["Value Background"] = Color3.fromRGB(21, 16, 25),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Dropdown Select"] = { Background = Color3.fromRGB(21, 16, 25), Search = Color3.fromRGB(33, 28, 42), ["Item Background"] = Color3.fromRGB(43, 35, 55) },
      },
      Slider = {
        Background = Color3.fromRGB(26, 20, 31),
        ["Value Background"] = Color3.fromRGB(21, 16, 25),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        ["Slider Bar"] = Color3.fromRGB(75, 34, 103),
        ["Slider Bar Value"] = Color3.fromRGB(150, 68, 209),
        ["Circle Value"] = Color3.fromRGB(255, 255, 255),
      },
      Code = {
        Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(26, 20, 31)), ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 20, 31)) }),
        ["Background Code"] = Color3.fromRGB(60, 51, 68),
        ["Background Code Value"] = Color3.fromRGB(45, 38, 50),
        ["ScrollingFrame Code"] = Color3.fromRGB(190, 150, 216),
      },
      Button = { Background = Color3.fromRGB(26, 20, 31), Click = Color3.fromRGB(255, 255, 255) },
      Textbox = { Background = Color3.fromRGB(26, 20, 31), ["Value Background"] = Color3.fromRGB(21, 16, 25), ["Value Stroke"] = Color3.fromRGB(255, 255, 255) },
      Keybind = {
        Background = Color3.fromRGB(26, 20, 31),
        ["Value Background"] = Color3.fromRGB(21, 16, 25),
        ["Value Stroke"] = Color3.fromRGB(255, 255, 255),
        True = { ["Toggle Background"] = Color3.fromRGB(75, 34, 103), ["Toggle Value"] = Color3.fromRGB(150, 68, 209) },
        False = { ["Toggle Background"] = Color3.fromRGB(42, 35, 48), ["Toggle Value"] = Color3.fromRGB(53, 42, 62) },
      },
      ["Color Picker"] = { Background = Color3.fromRGB(26, 20, 31), ["Color Select"] = { Background = Color3.fromRGB(21, 16, 25), UIStroke = Color3.fromRGB(255, 255, 255) } },
    },
  },
}

local Languages = {
  index = { "English", "Indonesian", "Filipino" },
  English = {
    NotifyTitle = "EgiXploit",
    NotifyDesc = "Tap the <font color='#FF77A5' size='14'>(Minimize)</font> button in the topbar to hide and show the UI",
    CloseTitle = "Do you want to <font color='#FF0000'>close</font> the ui?",
    Confirm = "Confirm",
    Cancel = "Cancel",
    SearchPlaceholder = "Search . . .",
    Copy = "Copy",
    Copied = "Copied"
  },
  Indonesian = {
    NotifyTitle = "EgiXploit",
    NotifyDesc = "Ketuk tombol <font color='#FF77A5' size='14'>(Minimize)</font> di atas untuk menyembunyikan/menampilkan UI",
    CloseTitle = "Apakah kamu ingin <font color='#FF0000'>menutup</font> UI?",
    Confirm = "Konfirmasi",
    Cancel = "Batal",
    SearchPlaceholder = "Cari . . .",
    Copy = "Salin",
    Copied = "Disalin"
  },
  Filipino = {
    NotifyTitle = "EgiXploit",
    NotifyDesc = "I-tap ang <font color='#FF77A5' size='14'>(Minimize)</font> button sa itaas para itago at ipakita ang UI",
    CloseTitle = "Gusto mo bang <font color='#FF0000'>isara</font> ang UI?",
    Confirm = "Kumpirmahin",
    Cancel = "Kanselahin",
    SearchPlaceholder = "Maghanap . . .",
    Copy = "Kopyahin",
    Nakopya = "Nakopya"
  }
}

local localPlayer = players.LocalPlayer
local playerLocale = localPlayer and localPlayer.LocaleId or "en-US"
local currentLanguage = "English"

if playerLocale:match("^id") then
  currentLanguage = "Indonesian"
elseif playerLocale:match("^fil") or playerLocale:match("^tl") then
  currentLanguage = "Filipino"
else
  currentLanguage = "English"
end

function getLangText(key, ...)
  local langTable = Languages[currentLanguage] or Languages.English
  local text = langTable[key] or Languages.English[key] or key
  return string.format(text, ...)
end

local egiXploitGui = Instance.new("ScreenGui")
egiXploitGui.Name = "EgiXploitHub"
egiXploitGui.Parent = not runService:IsStudio() and coreGui or localPlayer.PlayerGui
egiXploitGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function addToTheme(key, p1)
  if not SaveTheme[key] then
    SaveTheme[key] = {}
  end
  table.insert(SaveTheme[key], p1)
end

function getColorFromPath(p2, p3)
  local v2 = p2
  for _, value in ipairs(string.split(p3, ".")) do
    v2 = v2 and v2[value]
  end
  return v2
end

function Library:setTheme(p4)
  for key2, value2 in pairs(SaveTheme) do
    local v3 = getColorFromPath(p4, key2)
    if v3 then
      for _, value3 in pairs(value2) do
        if value3:IsA("Frame") or value3:IsA("CanvasGroup") then
          value3.BackgroundColor3 = v3
        elseif value3:IsA("TextLabel") or value3:IsA("TextButton") or value3:IsA("TextBox") then
          value3.TextColor3 = v3
        elseif value3:IsA("ImageLabel") or value3:IsA("ImageButton") then
          value3.ImageColor3 = v3
        elseif value3:IsA("ScrollingFrame") then
          value3.ScrollBarImageColor3 = v3
        elseif value3:IsA("UIStroke") then
          value3.Color = v3
        elseif value3:IsA("UIGradient") then
          value3.Color = v3
        end
      end
    end
  end
end

local icon = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dummyrme/Library/refs/heads/main/Icon.lua"))()

function gl(key3)
  local v4 = icon.Icons[key3]
  if v4 then
    local image = icon.Spritesheets[tostring(v4.Image)]
    if image then
      return {
        Image = image,
        ImageRectSize = v4.ImageRectSize,
        ImageRectPosition = v4.ImageRectPosition,
      }
    end
  end
  if type(key3) == "string" and not key3:find("rbxassetid://") then
    return {
      Image = "rbxassetid://" .. key3,
      ImageRectSize = Vector2.new(0, 0),
      ImageRectPosition = Vector2.new(0, 0),
    }
  end
  if type(key3) == "number" then
    return {
      Image = "rbxassetid://" .. key3,
      ImageRectSize = Vector2.new(0, 0),
      ImageRectPosition = Vector2.new(0, 0),
    }
  end
  return key3
end

function tw(p5)
  return tweenService:Create(p5.v, TweenInfo.new(p5.t, p5.s, Enum.EasingDirection[p5.d]), p5.g)
end

function changecanvas(p6, p7, p8)
  p7:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    p6.CanvasSize = UDim2.new(0, 0, 0, p7.AbsoluteContentSize.Y + p8 or 5)
  end)
end

function jc(p12, parent)
  local getMouse = localPlayer:GetMouse()
  local v5 = getMouse.X - p12.AbsolutePosition.X
  local v6 = getMouse.Y - p12.AbsolutePosition.Y
  if v5 < 0 or v6 < 0 or v5 > p12.AbsoluteSize.X or v6 > p12.AbsoluteSize.Y then
    return
  end
  local frame = Instance.new("Frame")
  frame.Parent = parent
  frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  frame.BackgroundTransparency = 0.7
  frame.BorderSizePixel = 0
  frame.AnchorPoint = Vector2.new(0.5, 0.5)
  frame.Position = UDim2.new(0, v5, 0, v6)
  frame.Size = UDim2.new(0, 0, 0, 0)
  frame.ZIndex = 10
  local uiCorner = Instance.new("UICorner")
  uiCorner.CornerRadius = UDim.new(1, 0)
  uiCorner.Parent = frame
  local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
  local create = tweenService:Create(frame, tweenInfo, {
    Size = UDim2.new(0, p12.AbsoluteSize.X * 1.5, 0, p12.AbsoluteSize.X * 1.5),
    BackgroundTransparency = 1,
  })
  create.Completed:Connect(function() frame:Destroy() end)
  create:Play()
end

function lak(p15, v)
  local position, position2
  local function f1(input)
    local v7 = input.Position - position
    tw({
      v = v,
      t = 0.05,
      s = Enum.EasingStyle.Linear,
      d = "InOut",
      g = {
        Position = UDim2.new(
          position2.X.Scale, position2.X.Offset + v7.X, position2.Y.Scale,
          position2.Y.Offset + v7.Y
        ),
      },
    }):Play()
  end
  local v8
  p15.InputBegan:Connect(function(input2)
    if input2.UserInputType == Enum.UserInputType.MouseButton1 or input2.UserInputType == Enum.UserInputType.Touch then
      v8 = true
      position = input2.Position
      position2 = v.Position
      input2.Changed:Connect(function()
        if input2.UserInputState == Enum.UserInputState.End then
          v8 = false
        end
      end)
    end
  end)
  local v9
  p15.InputChanged:Connect(function(input3)
    if input3.UserInputType == Enum.UserInputType.MouseMovement or input3.UserInputType == Enum.UserInputType.Touch then
      v9 = input3
    end
  end)
  userInputService.InputChanged:Connect(function(input4)
    if input4 == v9 and v8 then
      f1(input4)
    end
  end)
end

function click(parent2)
  local v10 = Instance.new("TextButton")
  v10.Name = "Click"
  v10.Parent = parent2
  v10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  v10.BackgroundTransparency = 1
  v10.BorderSizePixel = 0
  v10.Size = UDim2.new(1, 0, 1, 0)
  v10.Font = Enum.Font.SourceSans
  v10.Text = ""
  v10.TextColor3 = Color3.fromRGB(0, 0, 0)
  v10.TextSize = 14
  return v10
end

function background(parent3, text, text2, p16, p17)
  local realBackground = Instance.new("Frame")
  local v11 = Instance.new("Frame")
  local uiCorner3 = Instance.new("UICorner")
  local t = Instance.new("Frame")
  local uiListLayout = Instance.new("UIListLayout")
  local uiPadding = Instance.new("UIPadding")
  local desc = Instance.new("TextLabel")
  local title = Instance.new("TextLabel")

  realBackground.Name = "Real Background"
  realBackground.Parent = parent3
  realBackground.BackgroundTransparency = 1
  realBackground.BorderSizePixel = 0
  realBackground.Size = UDim2.new(1, 0, 0, 35)
  realBackground.ClipsDescendants = true

  v11.Name = "Background"
  v11.Parent = realBackground
  v11.BackgroundColor3 = Color3.fromRGB(29, 28, 38)
  v11.BorderSizePixel = 0
  v11.Size = UDim2.new(1, 0, 1, 0)
  v11.ClipsDescendants = true

  addToTheme("Function." .. p17 .. ".Background", v11)
  uiCorner3.Parent = v11

  t.Name = "T"
  t.Parent = v11
  t.AnchorPoint = Vector2.new(0, 0.5)
  t.BackgroundTransparency = 1
  t.BorderSizePixel = 0
  t.Position = UDim2.new(0, 0, 0.5, 0)
  t.Size = UDim2.new(1, 0, 1, 0)

  uiListLayout.Parent = t
  uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

  uiPadding.Parent = t
  uiPadding.PaddingLeft = UDim.new(0, 13)
  uiPadding.PaddingRight = UDim.new(0, 70)

  desc.Parent = t
  desc.BackgroundTransparency = 1
  desc.BorderSizePixel = 0
  desc.LayoutOrder = 1
  desc.Size = UDim2.new(1, 0, 0, 14)
  desc.Font = Enum.Font.GothamBold
  desc.RichText = true
  desc.Text = tostring(text2)
  desc.TextColor3 = Color3.fromRGB(255, 255, 255)
  desc.TextSize = 10
  desc.TextTransparency = 0.7
  desc.TextWrapped = true
  desc.TextXAlignment = Enum.TextXAlignment.Left
  desc.Visible = false
  desc.AutomaticSize = Enum.AutomaticSize.Y
  desc.Name = "Desc"
  addToTheme("Text & Icon", desc)

  title.Parent = t
  title.BackgroundTransparency = 1
  title.BorderSizePixel = 0
  title.Size = UDim2.new(1, 0, 0, 14)
  title.Font = Enum.Font.GothamBold
  title.RichText = true
  title.Text = tostring(text)
  title.TextColor3 = Color3.fromRGB(255, 255, 255)
  title.TextSize = 12
  title.TextWrapped = true
  title.TextXAlignment = Enum.TextXAlignment.Left
  title.AutomaticSize = Enum.AutomaticSize.Y
  title.Name = "Title"
  addToTheme("Text & Icon", title)

  if text2 and text2 ~= "" then
    desc.Visible = true
  end

  if p16 and p16 ~= "" then
    uiPadding.PaddingLeft = UDim.new(0, 50)
    local image2 = Instance.new("Frame")
    local icon2 = Instance.new("ImageLabel")
    local frame3 = Instance.new("Frame")

    image2.Name = "Image"
    image2.Parent = v11
    image2.BackgroundTransparency = 1
    image2.BorderSizePixel = 0
    image2.Size = UDim2.new(0, 40, 1, 0)

    icon2.Name = "Icon"
    icon2.Parent = image2
    icon2.AnchorPoint = Vector2.new(0.5, 0.5)
    icon2.BackgroundTransparency = 1
    icon2.BorderSizePixel = 0
    icon2.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon2.Size = UDim2.new(0, 20, 0, 20)
    icon2.Image = gl(p16).Image
    icon2.ImageRectSize = gl(p16).ImageRectSize
    icon2.ImageRectOffset = gl(p16).ImageRectPosition
    icon2.ImageTransparency = 0.7

    frame3.Parent = image2
    frame3.AnchorPoint = Vector2.new(1, 0.5)
    frame3.BackgroundTransparency = 0.9
    frame3.BorderSizePixel = 0
    frame3.Position = UDim2.new(1, 0, 0.5, 0)
    frame3.Size = UDim2.new(0, 1, 0.7, 0)

    addToTheme("Text & Icon", icon2)
    addToTheme("Text & Icon", frame3)
  end

  local function f2()
    task.defer(function()
      local v12 = uiListLayout.AbsoluteContentSize.Y + 21
      if realBackground.Size.Y.Offset ~= v12 then
        realBackground.Size = UDim2.new(1, 0, 0, v12)
      end
    end)
  end

  task.delay(0.1, f2)
  uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(f2)

  local v13 = {}
  function v13:SetTextTransparencyTitle(p18)
    tw({ v = title, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { TextTransparency = p18 } }):Play()
    if p16 and p16 ~= "" then
      tw({ v = v11.Image.Icon, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { ImageTransparency = p18 } }):Play()
    end
  end
  function v13:SetSizeT(p19)
    uiPadding.PaddingRight = UDim.new(0, p19)
  end
  function v13:SetTitle(text3)
    title.Text = tostring(text3)
  end
  function v13:SetDesc(text4)
    desc.Text = tostring(text4)
    desc.Visible = (text4 and text4 ~= "")
  end
  return v11, v13
end

function addDropdownSelect(parent4, p20, p21, p22, p23, list)
  local v14 = p23
  local f = Instance.new("Frame")
  local uiListLayout2 = Instance.new("UIListLayout")
  local uiPadding2 = Instance.new("UIPadding")
  local frame4 = Instance.new("Frame")
  local uiCorner4 = Instance.new("UICorner")
  local uiStroke = Instance.new("UIStroke")
  local textLabel = Instance.new("TextLabel")
  local uiPadding3 = Instance.new("UIPadding")
  local imageLabel = Instance.new("ImageLabel")

  f.Name = "F"
  f.Parent = parent4
  f.AnchorPoint = Vector2.new(1, 0.5)
  f.BackgroundTransparency = 1
  f.BorderSizePixel = 0
  f.Position = UDim2.new(1, 0, 0.5, 0)
  f.Size = UDim2.new(0, 120, 0.8, 0)

  uiListLayout2.Parent = f
  uiListLayout2.Padding = UDim.new(0, 15)
  uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
  uiListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Right
  uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center

  uiPadding2.Parent = f
  uiPadding2.PaddingRight = UDim.new(0, 13)

  frame4.Parent = f
  frame4.BackgroundColor3 = Color3.fromRGB(24, 24, 31)
  frame4.BorderSizePixel = 0
  frame4.Size = UDim2.new(0, 100, 0, 20)
  addToTheme("Function.Dropdown.Value Background", frame4)

  uiCorner4.Parent = frame4
  uiCorner4.CornerRadius = UDim.new(0, 4)

  uiStroke.Parent = frame4
  uiStroke.Color = Color3.fromRGB(255, 255, 255)
  uiStroke.Thickness = 1
  uiStroke.Transparency = 0.95
  addToTheme("Function.Dropdown.Value Stroke", uiStroke)

  textLabel.Parent = frame4
  textLabel.BackgroundTransparency = 1
  textLabel.BorderSizePixel = 0
  textLabel.Size = UDim2.new(0.8, 0, 1, 0)
  textLabel.Font = Enum.Font.GothamBold
  textLabel.RichText = true
  textLabel.Text = "--"
  textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  textLabel.TextSize = 10
  textLabel.TextTransparency = 0.3
  textLabel.TextXAlignment = Enum.TextXAlignment.Left
  textLabel.TextTruncate = Enum.TextTruncate.AtEnd
  addToTheme("Text & Icon", textLabel)

  uiPadding3.Parent = frame4
  uiPadding3.PaddingLeft = UDim.new(0, 5)
  uiPadding3.PaddingRight = UDim.new(0, 5)

  imageLabel.Parent = frame4
  imageLabel.AnchorPoint = Vector2.new(1, 0.5)
  imageLabel.BackgroundTransparency = 1
  imageLabel.BorderSizePixel = 0
  imageLabel.Position = UDim2.new(1, 0, 0.5, 0)
  imageLabel.Size = UDim2.new(0, 20, 0, 20)
  imageLabel.Image = "rbxassetid://14937709869"
  imageLabel.ImageTransparency = 0.3
  addToTheme("Text & Icon", imageLabel)

  local frame5 = Instance.new("Frame")
  local uiCorner5 = Instance.new("UICorner")
  local uiStroke2 = Instance.new("UIStroke")
  local uiPadding4 = Instance.new("UIPadding")
  local search = Instance.new("Frame")
  local uiCorner6 = Instance.new("UICorner")
  local textBox = Instance.new("TextBox")
  local frame6 = Instance.new("Frame")
  local frame7 = Instance.new("Frame")
  local frame8 = Instance.new("Frame")
  local uiCorner7 = Instance.new("UICorner")
  local scrollingFrame = Instance.new("ScrollingFrame")
  local uiListLayout3 = Instance.new("UIListLayout")
  local uiPadding5 = Instance.new("UIPadding")
  local uiPadding6 = Instance.new("UIPadding")
  local uiPadding7 = Instance.new("UIPadding")

  frame5.Parent = egiXploitGui
  frame5.BackgroundColor3 = Color3.fromRGB(24, 24, 31)
  frame5.BorderSizePixel = 0
  frame5.Size = UDim2.new(0, 150, 0, 0)
  frame5.ClipsDescendants = true
  frame5.Visible = false
  addToTheme("Function.Dropdown.Dropdown Select.Background", frame5)

  frame5.Position = UDim2.new(0, frame4.AbsolutePosition.X - frame5.Parent.AbsolutePosition.X + frame4.Size.X.Offset - 119, 0, frame4.AbsolutePosition.Y - frame5.Parent.AbsolutePosition.Y + frame4.Size.Y.Offset - 25)

  uiCorner5.Parent = frame5
  uiCorner5.CornerRadius = UDim.new(0, 4)

  uiStroke2.Parent = frame5
  uiStroke2.Color = Color3.fromRGB(255, 255, 255)
  uiStroke2.Thickness = 1
  uiStroke2.Transparency = 1

  uiPadding4.Parent = frame5
  uiPadding4.PaddingBottom = UDim.new(0, 5)
  uiPadding4.PaddingLeft = UDim.new(0, 5)
  uiPadding4.PaddingRight = UDim.new(0, 5)
  uiPadding4.PaddingTop = UDim.new(0, 5)

  search.Name = "Search"
  search.Parent = frame5
  search.BackgroundTransparency = 0.95
  search.BorderSizePixel = 0
  search.Size = UDim2.new(1, 0, 0, 20)
  addToTheme("Function.Dropdown.Dropdown Select.Search", search)

  uiCorner6.Parent = search
  uiCorner6.CornerRadius = UDim.new(0, 4)

  textBox.Parent = search
  textBox.Active = true
  textBox.BackgroundTransparency = 1
  textBox.BorderSizePixel = 0
  textBox.Size = UDim2.new(1, 0, 1, 0)
  textBox.Font = Enum.Font.Gotham
  textBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
  textBox.PlaceholderText = getLangText("SearchPlaceholder")
  textBox.Text = ""
  textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
  textBox.TextSize = 11
  addToTheme("Text & Icon", search)
  addToTheme("Text & Icon", textBox)

  frame6.Parent = search
  frame6.AnchorPoint = Vector2.new(0, 1)
  frame6.BackgroundTransparency = 0.9
  frame6.BorderSizePixel = 0
  frame6.Position = UDim2.new(0, 0, 1, 0)
  frame6.Size = UDim2.new(1, 0, 0, 2)

  frame7.Parent = frame5
  frame7.BackgroundTransparency = 1
  frame7.BorderSizePixel = 0
  frame7.Size = UDim2.new(1, 0, 1, 0)

  frame8.Parent = frame7
  frame8.BackgroundTransparency = 0.95
  frame8.BorderSizePixel = 0
  frame8.Size = UDim2.new(1, 0, 1, 0)

  uiCorner7.Parent = frame8
  uiCorner7.CornerRadius = UDim.new(0, 4)

  scrollingFrame.Name = "ScrollingFrame"
  scrollingFrame.Parent = frame8
  scrollingFrame.Active = true
  scrollingFrame.BackgroundTransparency = 1
  scrollingFrame.BorderSizePixel = 0
  scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
  scrollingFrame.ClipsDescendants = true
  scrollingFrame.ScrollBarThickness = 2
  scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(107, 84, 255)

  uiListLayout3.Parent = scrollingFrame
  uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout3.Padding = UDim.new(0, 3)

  uiPadding5.Parent = scrollingFrame
  uiPadding5.PaddingRight = UDim.new(0, 5)

  uiPadding6.Parent = frame8
  uiPadding6.PaddingBottom = UDim.new(0, 5)
  uiPadding6.PaddingLeft = UDim.new(0, 5)
  uiPadding6.PaddingRight = UDim.new(0, 3)
  uiPadding6.PaddingTop = UDim.new(0, 5)

  uiPadding7.Parent = frame7
  uiPadding7.PaddingTop = UDim.new(0, 25)

  local v15 = click(p20)
  local flag = false

  local function f3()
    if not flag then return end
    local v16 = uiListLayout3.AbsoluteContentSize.Y + 54
    if v16 > 200 then v16 = 200 end
    tw({ v = frame5, t = 0.15, s = Enum.EasingStyle.Exponential, d = "Out", g = { Size = UDim2.new(0, 150, 0, v16) } }):Play()
  end

  textBox.Changed:Connect(function()
    local lower2 = string.lower(textBox.Text)
    for _, value5 in pairs(scrollingFrame:GetChildren()) do
      if value5:IsA("Frame") then
        if lower2 ~= "" and value5:FindFirstChild("TextLabel") then
          value5.Visible = string.find(string.lower(value5.TextLabel.Text), lower2) ~= nil
        else
          value5.Visible = true
        end
      end
    end
    f3()
  end)

  local function f4()
    if flag then return end
    frame5.Visible = true
    local v17 = frame4.AbsolutePosition.X - frame5.Parent.AbsolutePosition.X + frame4.Size.X.Offset - 119
    local v18 = frame4.AbsolutePosition.Y - frame5.Parent.AbsolutePosition.Y + frame4.Size.Y.Offset - 25
    local v19 = uiListLayout3.AbsoluteContentSize.Y + 54
    if v19 <= 200 then
      tw({ v = frame5, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { Size = UDim2.new(0, 150, 0, v19), Position = UDim2.new(0, v17, 0, v18) } }):Play()
    else
      tw({ v = frame5, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { Size = UDim2.new(0, 150, 0, 200), Position = UDim2.new(0, v17, 0, v18) } }):Play()
    end
    tw({ v = uiStroke2, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { Transparency = 0.95 } }):Play()
    flag = true
  end

  local function f5()
    if not flag then return end
    tw({ v = uiStroke2, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { Transparency = 1 } }):Play()
    local v20 = tw({ v = frame5, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { Size = UDim2.new(0, 150, 0, 0) } })
    v20:Play()
    v20.Completed:Connect(function()
      frame5.Visible = false
      flag = false
    end)
  end

  userInputService.InputBegan:Connect(function(input5)
    if input5.UserInputType == Enum.UserInputType.MouseButton1 or input5.UserInputType == Enum.UserInputType.Touch then
      local absolutePosition = frame5.AbsolutePosition
      local absoluteSize = frame5.AbsoluteSize
      local mouseX = localPlayer:GetMouse().X
      local mouseY = localPlayer:GetMouse().Y
      if mouseX < absolutePosition.X or mouseX > absolutePosition.X + absoluteSize.X or mouseY < absolutePosition.Y - 21 or mouseY > absolutePosition.Y + absoluteSize.Y then
        f5()
      end
    end
  end)

  v15.MouseButton1Click:Connect(function()
    if not flag then f4() else f5() end
  end)

  local v21 = {}
  local seen = {}
  local v22

  function v21:Clear(list2)
    local function f6(instance)
      if list2 == nil then return true end
      if type(list2) == "string" then
        return instance:FindFirstChild("TextLabel") and instance.TextLabel.Text == list2
      end
      if type(list2) == "table" then
        for _, value6 in ipairs(list2) do
          if instance:FindFirstChild("TextLabel") and instance.TextLabel.Text == value6 then return true end
        end
      end
      return false
    end

    if p21 then
      seen = {}
      textLabel.Text = "--"
      pcall(p22, seen)
    end

    for _, value7 in ipairs(scrollingFrame:GetChildren()) do
      if value7:IsA("Frame") and f6(value7) then
        if v22 and value7:FindFirstChild("TextLabel") and value7.TextLabel.Text == v22 then
          v22 = nil
          textLabel.Text = "--"
          pcall(p22, textLabel.Text)
        end
        value7:Destroy()
      end
    end
    if v22 == list2 or textLabel.Text == list2 then
      v22 = nil
      textLabel.Text = "--"
    end
    if list2 == nil then
      v22 = nil
      textLabel.Text = "--"
    end
    v14 = nil
  end

  function v21:SetList(list3)
    if type(list3) ~= "table" then return end
    v21:Clear()
    for _, value8 in ipairs(list3) do
      v21:Add(value8)
    end
  end

  function v21:Add(key4)
    local item = Instance.new("Frame")
    local textLabel2 = Instance.new("TextLabel")

    item.Name = "Item"
    item.Parent = scrollingFrame
    item.BackgroundTransparency = 0.95
    item.BorderSizePixel = 0
    item.Size = UDim2.new(1, 0, 0, 18)

    textLabel2.Parent = item
    textLabel2.BackgroundTransparency = 1
    textLabel2.BorderSizePixel = 0
    textLabel2.Size = UDim2.new(1, 0, 1, 0)
    textLabel2.Font = Enum.Font.GothamBold
    textLabel2.Text = key4
    textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel2.TextSize = 12
    textLabel2.TextXAlignment = Enum.TextXAlignment.Left
    textLabel2.TextTransparency = 0.8

    addToTheme("Function.Dropdown.Dropdown Select.Item Background", item)
    addToTheme("Text & Icon", textLabel2)

    Instance.new("UICorner", item).CornerRadius = UDim.new(0, 4)
    Instance.new("UIPadding", item).PaddingLeft = UDim.new(0, 5)

    local v23 = click(item)
    local function f7()
      tw({ v = textLabel2, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { TextTransparency = 0.8 } }):Play()
    end
    local function f8()
      tw({ v = textLabel2, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { TextTransparency = 0 } }):Play()
    end

    v23.MouseButton1Click:Connect(function()
      if p21 then
        if seen[key4] then
          seen[key4] = nil
          f7()
        else
          seen[key4] = true
          f8()
        end
        local list4 = {}
        for key5, _ in pairs(seen) do table.insert(list4, key5) end
        if #list4 > 0 then
          textLabel.Text = table.concat(list4, ", ")
        else
          textLabel.Text = "--"
        end
        pcall(p22, list4)
      else
        for _, value9 in pairs(scrollingFrame:GetChildren()) do
          if value9:IsA("Frame") and value9:FindFirstChild("TextLabel") then
            tw({ v = value9.TextLabel, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { TextTransparency = 0.8 } }):Play()
          end
        end
        f8()
        v14 = key4
        textLabel.Text = key4
        pcall(p22, textLabel.Text)
      end
    end)

    task.delay(0, function()
      if p21 then
      elseif key4 == v14 then
        f8()
        textLabel.Text = key4
        pcall(p22, textLabel.Text)
      end
    end)
  end

  function v21:SetValue(key7)
    if p21 then
      seen = {}
      seen[key7] = true
      textLabel.Text = key7
      for _, value11 in ipairs(scrollingFrame:GetChildren()) do
        if value11:IsA("Frame") and value11:FindFirstChild("TextLabel") then
          if value11.TextLabel.Text == key7 then
            tw({ v = value11.TextLabel, t = 0.05, s = Enum.EasingStyle.Exponential, d = "Out", g = { TextTransparency = 0 } }):Play()
          else
            tw({ v = value11.TextLabel, t = 0.05, s = Enum.EasingStyle.Exponential, d = "Out", g = { TextTransparency = 0.8 } }):Play()
          end
        end
      end
      pcall(p22, seen)
    else
      v14 = key7
      textLabel.Text = key7
      for _, value12 in ipairs(scrollingFrame:GetChildren()) do
        if value12:IsA("Frame") and value12:FindFirstChild("TextLabel") then
          if value12.TextLabel.Text == key7 then
            tw({ v = value12.TextLabel, t = 0.05, s = Enum.EasingStyle.Exponential, d = "Out", g = { TextTransparency = 0 } }):Play()
          else
            tw({ v = value12.TextLabel, t = 0.05, s = Enum.EasingStyle.Exponential, d = "Out", g = { TextTransparency = 0.8 } }):Play()
          end
        end
      end
      pcall(p22, key7)
    end
  end

  for index, value13 in ipairs(list) do
    v21:Add(value13, index)
  end

  changecanvas(scrollingFrame, uiListLayout3, 5)
  return v21
end

function Library.Window(_, p25)
  local title2 = p25.Title or "EgiXploit Hub"
  local desc2 = p25.Desc or "Advanced Roblox Script Hub"
  local icon3 = p25.Icon or "door-open"
  local theme = p25.Theme or "Dark"
  local keybind = p25.Config and p25.Config.Keybind or Enum.KeyCode.LeftControl
  local size = p25.Config and p25.Config.Size or UDim2.new(0, 530, 0, 400)
  local flag2 = false
  local theme2 = p25.Theme or "Dark"
  
  local shadow = Instance.new("ImageLabel")
  local uiPadding8 = Instance.new("UIPadding")
  local v24 = Instance.new("CanvasGroup")
  local uiCorner8 = Instance.new("UICorner")
  local page = Instance.new("Frame")
  local uiPadding9 = Instance.new("UIPadding")

  shadow.Name = "Shadow"
  shadow.Parent = egiXploitGui
  shadow.AnchorPoint = Vector2.new(0.5, 0.5)
  shadow.BackgroundTransparency = 1
  shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
  shadow.Size = size
  shadow.Image = "rbxassetid://1316045217"
  shadow.ImageColor3 = Color3.fromRGB(24, 24, 31)
  shadow.ImageTransparency = 0.8
  shadow.ScaleType = Enum.ScaleType.Slice
  shadow.SliceCenter = Rect.new(10, 10, 118, 118)
  shadow.Visible = false
  addToTheme("Shadow", shadow)

  uiPadding8.Parent = shadow
  uiPadding8.PaddingBottom = UDim.new(0, 8)
  uiPadding8.PaddingLeft = UDim.new(0, 8)
  uiPadding8.PaddingRight = UDim.new(0, 8)
  uiPadding8.PaddingTop = UDim.new(0, 8)

  v24.Name = "Background"
  v24.Parent = shadow
  v24.AnchorPoint = Vector2.new(0.5, 0.5)
  v24.BackgroundColor3 = Color3.fromRGB(29, 28, 38)
  v24.BorderSizePixel = 0
  v24.Position = UDim2.new(0.5, 0, 0.5, 0)
  v24.Size = UDim2.new(1, 0, 1, 0)
  v24.ClipsDescendants = true
  v24.GroupTransparency = 1

  shadow.Visible = true
  local size2 = v24.Size
  v24.Size = size2 - UDim2.fromOffset(5, 5)

  tw({ v = v24, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { GroupTransparency = 0, Size = size2 } }):Play()
  addToTheme("Background", v24)

  uiCorner8.Parent = v24
  uiCorner8.CornerRadius = UDim.new(0, 17)

  page.Name = "Page"
  page.Parent = v24
  page.BackgroundTransparency = 1
  page.BorderSizePixel = 0
  page.Size = UDim2.new(1, 0, 1, 0)

  uiPadding9.Parent = page
  uiPadding9.PaddingBottom = UDim.new(0, 5)
  uiPadding9.PaddingLeft = UDim.new(0, 120)
  uiPadding9.PaddingRight = UDim.new(0, 5)
  uiPadding9.PaddingTop = UDim.new(0, 45)

  local topbar = Instance.new("Frame")
  local frame9 = Instance.new("Frame")
  local ct = Instance.new("Frame")
  local uiPadding10 = Instance.new("UIPadding")
  local minisize = Instance.new("ImageButton")
  local uiListLayout4 = Instance.new("UIListLayout")
  local close = Instance.new("ImageButton")
  local dropdownValue = Instance.new("Frame")
  local dropdownLang = Instance.new("Frame")
  
  local td = Instance.new("Frame")
  local uiPadding11 = Instance.new("UIPadding")
  local uiListLayout5 = Instance.new("UIListLayout")
  local icon4 = Instance.new("ImageLabel")
  local title3 = Instance.new("Frame")
  local desc3 = Instance.new("TextLabel")
  local uiListLayout6 = Instance.new("UIListLayout")
  local title4 = Instance.new("TextLabel")
  local size3 = Instance.new("ImageButton")

  topbar.Name = "Topbar"
  topbar.Parent = v24
  topbar.BackgroundTransparency = 1
  topbar.BorderSizePixel = 0
  topbar.Size = UDim2.new(1, 0, 0, 42)

  frame9.Parent = topbar
  frame9.AnchorPoint = Vector2.new(0, 1)
  frame9.BackgroundColor3 = Color3.fromRGB(24, 24, 31)
  frame9.BorderSizePixel = 0
  frame9.Position = UDim2.new(0, 0, 1, 0)
  frame9.Size = UDim2.new(1, 0, 0, 2)
  addToTheme("Page", frame9)

  ct.Name = "Ct"
  ct.Parent = topbar
  ct.BackgroundTransparency = 1
  ct.BorderSizePixel = 0
  ct.Size = UDim2.new(1, 0, 1, 0)

  uiPadding10.Parent = ct
  uiPadding10.PaddingBottom = UDim.new(0, 5)
  uiPadding10.PaddingLeft = UDim.new(0, 10)
  uiPadding10.PaddingRight = UDim.new(0, 10)
  uiPadding10.PaddingTop = UDim.new(0, 5)

  minisize.Name = "Minisize"
  minisize.Parent = ct
  minisize.Active = true
  minisize.BackgroundTransparency = 1
  minisize.BorderSizePixel = 0
  minisize.LayoutOrder = 3
  minisize.Size = UDim2.new(0, 16, 0, 16)
  minisize.Image = "rbxassetid://13857987062"
  minisize.ImageTransparency = 0.5
  addToTheme("Text & Icon", minisize)

  uiListLayout4.Parent = ct
  uiListLayout4.Padding = UDim.new(0, 10)
  uiListLayout4.FillDirection = Enum.FillDirection.Horizontal
  uiListLayout4.HorizontalAlignment = Enum.HorizontalAlignment.Right
  uiListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout4.VerticalAlignment = Enum.VerticalAlignment.Center

  close.Name = "Close"
  close.Parent = ct
  close.Active = true
  close.BackgroundTransparency = 1
  close.BorderSizePixel = 0
  close.LayoutOrder = 4
  close.Size = UDim2.new(0, 16, 0, 16)
  close.Image = "rbxassetid://15082305656"

  size3.Name = "Size"
  size3.Parent = ct
  size3.Active = true
  size3.BackgroundTransparency = 1
  size3.BorderSizePixel = 0
  size3.LayoutOrder = 2
  size3.Size = UDim2.new(0, 16, 0, 16)
  size3.Image = "rbxassetid://15082210525"
  size3.ImageTransparency = 0.5

  dropdownValue.Name = "DropdownValue"
  dropdownValue.Parent = ct
  dropdownValue.AnchorPoint = Vector2.new(1, 0.5)
  dropdownValue.BackgroundColor3 = Color3.fromRGB(24, 24, 31)
  dropdownValue.BorderSizePixel = 0
  dropdownValue.LayoutOrder = 1
  dropdownValue.Size = UDim2.new(0, 100, 0, 20)

  dropdownLang.Name = "DropdownLang"
  dropdownLang.Parent = ct
  dropdownLang.AnchorPoint = Vector2.new(1, 0.5)
  dropdownLang.BackgroundColor3 = Color3.fromRGB(24, 24, 31)
  dropdownLang.BorderSizePixel = 0
  dropdownLang.LayoutOrder = 0
  dropdownLang.Size = UDim2.new(0, 95, 0, 20)

  td.Name = "Td"
  td.Parent = topbar
  td.BackgroundTransparency = 1
  td.BorderSizePixel = 0
  td.Size = UDim2.new(1, 0, 1, 0)

  uiPadding11.Parent = td
  uiPadding11.PaddingBottom = UDim.new(0, 5)
  uiPadding11.PaddingLeft = UDim.new(0, 10)
  uiPadding11.PaddingRight = UDim.new(0, 10)
  uiPadding11.PaddingTop = UDim.new(0, 5)

  uiListLayout5.Parent = td
  uiListLayout5.Padding = UDim.new(0, 8)
  uiListLayout5.FillDirection = Enum.FillDirection.Horizontal
  uiListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center

  icon4.Name = "Icon"
  icon4.Parent = td
  icon4.BackgroundTransparency = 1
  icon4.BorderSizePixel = 0
  icon4.Size = UDim2.new(0, 30, 0, 30)
  icon4.Image = gl(icon3).Image
  icon4.ImageRectSize = gl(icon3).ImageRectSize
  icon4.ImageRectOffset = gl(icon3).ImageRectPosition
  addToTheme("Text & Icon", icon4)

  title3.Name = "Title"
  title3.Parent = td
  title3.BackgroundTransparency = 1
  title3.BorderSizePixel = 0
  title3.LayoutOrder = 1
  title3.Size = UDim2.new(0, 100, 1, 0)

  desc3.Name = "Desc"
  desc3.Parent = title3
  desc3.BackgroundTransparency = 1
  desc3.BorderSizePixel = 0
  desc3.LayoutOrder = 1
  desc3.Size = UDim2.new(1, 0, 0, 13)
  desc3.Font = Enum.Font.GothamBold
  desc3.Text = desc2
  desc3.TextColor3 = Color3.fromRGB(255, 255, 255)
  desc3.TextSize = 10
  desc3.TextTransparency = 0.5
  desc3.TextXAlignment = Enum.TextXAlignment.Left
  desc3.Visible = false
  addToTheme("Text & Icon", desc3)

  if desc2 and desc2 ~= "" then
    desc3.Visible = true
  end

  uiListLayout6.Parent = title3
  uiListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout6.VerticalAlignment = Enum.VerticalAlignment.Center

  title4.Name = "Title"
  title4.Parent = title3
  title4.BackgroundTransparency = 1
  title4.BorderSizePixel = 0
  title4.Size = UDim2.new(1, 0, 0, 13)
  title4.Font = Enum.Font.GothamBold
  title4.Text = title2
  title4.TextColor3 = Color3.fromRGB(255, 255, 255)
  title4.TextSize = 12
  title4.TextXAlignment = Enum.TextXAlignment.Left
  addToTheme("Text & Icon", title4)

  local tabP = Instance.new("Frame")
  local frame10 = Instance.new("Frame")
  local scrollingFrame2 = Instance.new("ScrollingFrame")
  local tabList = Instance.new("Frame")
  local select = Instance.new("Frame")
  local uiCorner9 = Instance.new("UICorner")
  local uiStroke3 = Instance.new("UIStroke")
  local uiPadding12 = Instance.new("UIPadding")
  local uiPadding13 = Instance.new("UIPadding")
  local uiListLayout7 = Instance.new("UIListLayout")

  tabP.Name = "TabP"
  tabP.Parent = v24
  tabP.BackgroundTransparency = 1
  tabP.BorderSizePixel = 0
  tabP.Size = UDim2.new(1, 0, 1, 0)

  frame10.Parent = tabP
  frame10.BackgroundTransparency = 1
  frame10.BorderSizePixel = 0
  frame10.Size = UDim2.new(0, 110, 1, 0)

  scrollingFrame2.Name = "ScrollingFrame"
  scrollingFrame2.Parent = frame10
  scrollingFrame2.Active = true
  scrollingFrame2.BackgroundTransparency = 1
  scrollingFrame2.BorderSizePixel = 0
  scrollingFrame2.Size = UDim2.new(1, 0, 1, 0)
  scrollingFrame2.ClipsDescendants = true
  scrollingFrame2.ScrollBarThickness = 2
  scrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(91, 68, 209)
  addToTheme("Main", scrollingFrame2)

  tabList.Name = "TabList"
  tabList.Parent = scrollingFrame2
  tabList.BackgroundTransparency = 1
  tabList.BorderSizePixel = 0
  tabList.Size = UDim2.new(1, 0, 1, 0)

  uiListLayout7.Parent = tabList
  uiListLayout7.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout7.HorizontalAlignment = Enum.HorizontalAlignment.Center

  select.Name = "Select"
  select.Parent = scrollingFrame2
  select.BackgroundColor3 = Color3.fromRGB(91, 68, 209)
  select.BorderSizePixel = 0
  select.Position = UDim2.new(0, 0, 0, 5)
  select.Size = UDim2.new(0, 3, 0, 18)
  addToTheme("Main", select)

  uiCorner9.Parent = select
  uiCorner9.CornerRadius = UDim.new(1, 0)

  uiStroke3.Parent = select
  uiStroke3.Color = Color3.fromRGB(24, 24, 31)
  uiStroke3.Thickness = 1
  uiStroke3.Transparency = 0.9

  uiPadding12.Parent = scrollingFrame2
  uiPadding12.PaddingBottom = UDim.new(0, 1)
  uiPadding12.PaddingLeft = UDim.new(0, 1)
  uiPadding12.PaddingRight = UDim.new(0, 1)
  uiPadding12.PaddingTop = UDim.new(0, 1)

  uiPadding13.Parent = tabP
  uiPadding13.PaddingBottom = UDim.new(0, 5)
  uiPadding13.PaddingLeft = UDim.new(0, 3)
  uiPadding13.PaddingTop = UDim.new(0, 45)

  changecanvas(scrollingFrame2, uiListLayout7, 5)

  local v25 = { Value = false, List = {}, DefaultIndex = 1 }

  function v25.SelectTab(_, defaultIndex)
    v25.DefaultIndex = defaultIndex or 1
  end

  function v25.Line(p26)
    local line = Instance.new("Frame")
    local line2 = Instance.new("Frame")
    line.Parent = tabList
    line.BackgroundTransparency = 1
    line.BorderSizePixel = 0
    line.Size = UDim2.new(1, 0, 0, 5)
    line.Name = "Line"

    line2.Name = "Line"
    line2.Parent = line
    line2.AnchorPoint = Vector2.new(0.5, 0.5)
    line2.BackgroundTransparency = 0.9
    line2.BorderSizePixel = 0
    line2.Position = UDim2.new(0.5, 0, 0.5, 0)
    line2.Size = UDim2.new(0.85, 0, 0, 1)
  end

  function v25.Tab(p27, p28)
    local title5 = p28.Title or "null"
    local icon5 = p28.Icon or "house"
    local tab = Instance.new("Frame")
    local title6 = Instance.new("TextLabel")
    local uiListLayout8 = Instance.new("UIListLayout")
    local imageLabel2 = Instance.new("ImageLabel")
    local uiPadding14 = Instance.new("UIPadding")
    local uiStroke4 = Instance.new("UIStroke")
    local func = Instance.new("Frame")

    tab.Name = "Tab"
    tab.Parent = tabList
    tab.BackgroundTransparency = 1
    tab.BorderSizePixel = 0
    tab.Size = UDim2.new(1, 0, 0, 30)

    func.Name = "Func"
    func.Parent = tab
    func.BackgroundTransparency = 1
    func.BorderSizePixel = 0
    func.Size = UDim2.new(1, 0, 1, 0)

    title6.Name = "Title"
    title6.Parent = func
    title6.BackgroundTransparency = 1
    title6.BorderSizePixel = 0
    title6.LayoutOrder = 1
    title6.Size = UDim2.new(1, 0, 1, 0)
    title6.Font = Enum.Font.GothamBold
    title6.Text = tostring(title5)
    title6.TextColor3 = Color3.fromRGB(255, 255, 255)
    title6.TextSize = 11
    title6.TextTransparency = 0.7
    title6.TextWrapped = true
    title6.TextXAlignment = Enum.TextXAlignment.Left
    addToTheme("Text & Icon", title6)

    uiListLayout8.Parent = func
    uiListLayout8.Padding = UDim.new(0, 8)
    uiListLayout8.FillDirection = Enum.FillDirection.Horizontal
    uiListLayout8.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout8.VerticalAlignment = Enum.VerticalAlignment.Center

    imageLabel2.Parent = func
    imageLabel2.BackgroundTransparency = 1
    imageLabel2.BorderSizePixel = 0
    imageLabel2.Size = UDim2.new(0, 18, 0, 18)
    imageLabel2.Image = gl(icon5).Image
    imageLabel2.ImageTransparency = 0.7
    imageLabel2.ImageRectSize = gl(icon5).ImageRectSize
    imageLabel2.ImageRectOffset = gl(icon5).ImageRectPosition
    addToTheme("Text & Icon", imageLabel2)

    uiPadding14.Parent = func
    uiPadding14.PaddingLeft = UDim.new(0, 8)

    uiStroke4.Parent = title6
    uiStroke4.Color = Color3.fromRGB(24, 24, 31)
    uiStroke4.Thickness = 1
    uiStroke4.Transparency = 0.95

    local inPage = Instance.new("Frame")
    local uiCorner10 = Instance.new("UICorner")
    local scrollingFrame3 = Instance.new("ScrollingFrame")
    local uiListLayout9 = Instance.new("UIListLayout")
    local uiPadding15 = Instance.new("UIPadding")

    inPage.Name = "InPage"
    inPage.Parent = page
    inPage.AnchorPoint = Vector2.new(0.5, 0.5)
    inPage.BackgroundColor3 = Color3.fromRGB(24, 24, 31)
    inPage.BorderSizePixel = 0
    inPage.Size = UDim2.new(1, 0, 1, 0)
    inPage.Position = UDim2.new(0.5, 0, 0.5, 0)
    inPage.Visible = false
    addToTheme("Page", inPage)

    uiCorner10.Parent = inPage
    uiCorner10.CornerRadius = UDim.new(0, 17)

    scrollingFrame3.Name = "ScrollingFrame"
    scrollingFrame3.Parent = inPage
    scrollingFrame3.Active = true
    scrollingFrame3.BackgroundTransparency = 1
    scrollingFrame3.BorderSizePixel = 0
    scrollingFrame3.Size = UDim2.new(1, 0, 1, 0)
    scrollingFrame3.ClipsDescendants = true
    scrollingFrame3.ScrollBarThickness = 0

    uiListLayout9.Parent = scrollingFrame3
    uiListLayout9.Padding = UDim.new(0, 5)
    uiListLayout9.SortOrder = Enum.SortOrder.LayoutOrder

    uiPadding15.Parent = inPage
    uiPadding15.PaddingBottom = UDim.new(0, 10)
    uiPadding15.PaddingLeft = UDim.new(0, 10)
    uiPadding15.PaddingRight = UDim.new(0, 10)
    uiPadding15.PaddingTop = UDim.new(0, 10)

    local v26 = click(tab)
    table.insert(p27.List, { Page = inPage, Button = tab })
    local v27 = #p27.List

    local function f10()
      local parent5 = select.Parent
      local parent6 = tab.Parent
      local y = tab.AbsolutePosition.Y
      local y2 = tab.AbsoluteSize.Y
      local y3 = select.AbsoluteSize.Y
      local y4 = parent6.AbsolutePosition.Y
      local y5 = parent5.AbsolutePosition.Y
      local y6 = select.Parent.AbsolutePosition.Y
      local udim = UDim2.new(0, select.Position.X.Offset, 0, y + y2 / 2 - y4 + (y5 - y6) - y3 / 2)
      tw({ v = select, t = 0.5, s = Enum.EasingStyle.Exponential, d = "Out", g = { Position = udim } }):Play()
    end

    local function f11()
      for _, value14 in pairs(p27.List) do
        value14.Page.Visible = false
      end
      inPage.Visible = true

      for _, value17 in pairs(tabList:GetChildren()) do
        if value17:IsA("Frame") and value17.Name ~= "Line" then
          tw({ v = value17.Func.Title, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { TextTransparency = 0.7 } }):Play()
          tw({ v = value17.Func.ImageLabel, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { ImageTransparency = 0.7 } }):Play()
        end
      end

      tw({ v = title6, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { TextTransparency = 0 } }):Play()
      tw({ v = imageLabel2, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { ImageTransparency = 0 } }):Play()

      page.Visible = true
      f10()
    end

    v26.MouseButton1Click:Connect(f11)
    changecanvas(scrollingFrame3, uiListLayout9, 5)

    task.delay(0.1, function()
      if not p27.Value then
        local v30 = #p27.List
        local defaultIndex2 = p27.DefaultIndex
        if type(defaultIndex2) ~= "number" or defaultIndex2 < 1 or defaultIndex2 > v30 then
          defaultIndex2 = 1
        end
        if v27 == defaultIndex2 then
          f11()
          p27.Value = true
        end
      end
    end)

    local v31 = {}
    function v31.Section(_, p29)
      local title7 = p29.Title or "null"
      local realBackground2 = Instance.new("Frame")
      local v32 = Instance.new("Frame")
      local section = Instance.new("TextLabel")
      local uiPadding16 = Instance.new("UIPadding")

      realBackground2.Name = "Real Background"
      realBackground2.Parent = scrollingFrame3
      realBackground2.BackgroundTransparency = 1
      realBackground2.BorderSizePixel = 0
      realBackground2.Size = UDim2.new(1, 0, 0, 20)
      realBackground2.ClipsDescendants = true

      v32.Name = "Background"
      v32.Parent = realBackground2
      v32.BackgroundTransparency = 1
      v32.BorderSizePixel = 0
      v32.Size = UDim2.new(1, 0, 0, 20)

      section.Name = "Section"
      section.Parent = v32
      section.BackgroundTransparency = 1
      section.BorderSizePixel = 0
      section.Size = UDim2.new(1, 0, 0, 20)
      section.Font = Enum.Font.GothamBold
      section.Text = title7
      section.TextColor3 = Color3.fromRGB(255, 255, 255)
      section.TextSize = 12
      section.TextXAlignment = Enum.TextXAlignment.Left
      addToTheme("Text & Icon", section)

      uiPadding16.Parent = v32
      uiPadding16.PaddingLeft = UDim.new(0, 5)
      uiPadding16.PaddingRight = UDim.new(0, 5)

      local v33 = {}
      function v33:SetTitle(text5) section.Text = text5 end
      return v33
    end

    function v31.Toggle(_, p30)
      local value18 = p30.Value or false
      local image3 = p30.Image or ""
      local callback = p30.Callback or function() end

      local v34, v35 = background(scrollingFrame3, p30.Title or "null", p30.Desc or "", image3, "Toggle")
      local f12 = Instance.new("Frame")
      local uiListLayout10 = Instance.new("UIListLayout")
      local uiPadding17 = Instance.new("UIPadding")
      local frame11 = Instance.new("Frame")
      local uiCorner11 = Instance.new("UICorner")
      local frame12 = Instance.new("Frame")
      local uiCorner12 = Instance.new("UICorner")
      local uiPadding18 = Instance.new("UIPadding")

      f12.Name = "F"
      f12.Parent = v34
      f12.AnchorPoint = Vector2.new(1, 0.5)
      f12.BackgroundTransparency = 1
      f12.BorderSizePixel = 0
      f12.Position = UDim2.new(1, 0, 0.5, 0)
      f12.Size = UDim2.new(0, 100, 0.8, 0)

      uiListLayout10.Parent = f12
      uiListLayout10.HorizontalAlignment = Enum.HorizontalAlignment.Right
      uiListLayout10.SortOrder = Enum.SortOrder.LayoutOrder
      uiListLayout10.VerticalAlignment = Enum.VerticalAlignment.Center

      uiPadding17.Parent = f12
      uiPadding17.PaddingRight = UDim.new(0, 13)

      frame11.Parent = f12
      frame11.BackgroundColor3 = Color3.fromRGB(36, 35, 48)
      frame11.BorderSizePixel = 0
      frame11.Size = UDim2.new(0, 34, 0, 17)

      uiCorner11.Parent = frame11
      uiCorner11.CornerRadius = UDim.new(1, 0)

      frame12.Parent = frame11
      frame12.AnchorPoint = Vector2.new(0, 0.5)
      frame12.BackgroundColor3 = Color3.fromRGB(44, 42, 62)
      frame12.BorderSizePixel = 0
      frame12.Position = UDim2.new(0, 0, 0.5, 0)
      frame12.Size = UDim2.new(0, 13, 0, 13)

      if value18 then
        frame11.BackgroundColor3 = v1[theme2].Function.Toggle.True["Toggle Background"]
        frame12.BackgroundColor3 = v1[theme2].Function.Toggle.True["Toggle Value"]
      else
        frame11.BackgroundColor3 = v1[theme2].Function.Toggle.False["Toggle Background"]
        frame12.BackgroundColor3 = v1[theme2].Function.Toggle.False["Toggle Value"]
      end

      uiCorner12.Parent = frame12
      uiCorner12.CornerRadius = UDim.new(1, 0)

      uiPadding18.Parent = frame11
      uiPadding18.PaddingLeft = UDim.new(0, 2)
      uiPadding18.PaddingRight = UDim.new(0, 2)

      local v36 = click(v34)
      value18 = not value18

      local function f13()
        value18 = not value18
        if value18 then
          v35:SetTextTransparencyTitle(0)
          tw({ v = frame11, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { BackgroundColor3 = v1[theme2].Function.Toggle.True["Toggle Background"] } }):Play()
          tw({ v = frame12, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { BackgroundColor3 = v1[theme2].Function.Toggle.True["Toggle Value"], AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0) } }):Play()
        else
          v35:SetTextTransparencyTitle(0.7)
          tw({ v = frame11, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { BackgroundColor3 = v1[theme2].Function.Toggle.False["Toggle Background"] } }):Play()
          tw({ v = frame12, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = { BackgroundColor3 = v1[theme2].Function.Toggle.False["Toggle Value"], AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0) } }):Play()
        end
        pcall(callback, value18)
      end

      v36.MouseButton1Click:Connect(f13)
      task.delay(0.1, f13)

      local v37 = {}
      function v37:SetTitle(p31) v35:SetTitle(p31) end
      function v37:SetDesc(p32) v35:SetDesc(p32) end
      function v37:SetValue(p33) value18 = not p33 f13() end
      return v37
    end

    function v31.Label(_, p34)
      local v38, v39 = background(scrollingFrame3, p34.Title or "null", p34.Desc or "", p34.Image or "", "Label")
      v39:SetTextTransparencyTitle(0)
      v39:SetSizeT(0)
      local v40 = {}
      function v40:SetTitle(p35) v39:SetTitle(p35) end
      function v40:SetDesc(p36) v39:SetDesc(p36) end
      return v40
    end

    function v31.Button(_, p37)
      local v41, v42 = background(scrollingFrame3, p37.Title or "null", p37.Desc or "", p37.Image or "", "Button")
      v42:SetTextTransparencyTitle(0)
      v42:SetSizeT(50)
      v41.ClipsDescendants = true
      local f14 = Instance.new("Frame")
      local uiListLayout11 = Instance.new("UIListLayout")
      local uiPadding19 = Instance.new("UIPadding")
      local image4 = Instance.new("ImageLabel")

      f14.Name = "F"
      f14.Parent = v41
      f14.AnchorPoint = Vector2.new(1, 0.5)
      f14.BackgroundTransparency = 1
      f14.BorderSizePixel = 0
      f14.Position = UDim2.new(1, 0, 0.5, 0)
      f14.Size = UDim2.new(0, 50, 0.8, 0)

      uiListLayout11.Parent = f14
      uiListLayout11.Padding = UDim.new(0, 8)
      uiListLayout11.FillDirection = Enum.FillDirection.Horizontal
      uiListLayout11.HorizontalAlignment = Enum.HorizontalAlignment.Right
      uiListLayout11.SortOrder = Enum.SortOrder.LayoutOrder
      uiListLayout11.VerticalAlignment = Enum.VerticalAlignment.Center

      uiPadding19.Parent = f14
      uiPadding19.PaddingRight = UDim.new(0, 13)

      image4.Name = "Image"
      image4.Parent = f14
      image4.AnchorPoint = Vector2.new(1, 0.5)
      image4.BackgroundTransparency = 1
      image4.BorderSizePixel = 0
      image4.Position = UDim2.new(1, 0, 0.5, 0)
      image4.Size = UDim2.new(0, 20, 0, 20)
      image4.Image = "rbxassetid://14923748517"
      image4.ImageTransparency = 0.3

      local v43 = click(v41)
      v43.MouseButton1Click:Connect(function()
        v41.AnchorPoint = Vector2.new(0.5, 0.5)
        v41.Position = UDim2.new(0.5, 0, 0.5, 0)
        jc(v43, v41)
        tw({ v = v41, t = 0.15, s = Enum.EasingStyle.Back, d = "Out", g = { Size = UDim2.new(0.9, 0, 0.9, 0) } }):Play()
        task.delay(0.06, function()
          tw({ v = v41, t = 0.15, s = Enum.EasingStyle.Back, d = "Out", g = { Size = UDim2.new(1, 0, 1, 0) } }):Play()
        end)
        pcall(p37.Callback or function() end)
      end)
    end

    function v31.Slider(_, p38)
      local title8 = p38.Title or "null"
      local desc4 = p38.Desc or ""
      local image5 = p38.Image or ""
      local min = p38.Min or 0
      local max = p38.Max or 100
      local value19 = p38.Value or min + 1
      local rounding = p38.Rounding or 2
      local callback2 = p38.Callback or function() end
      local parent7, v44 = background(scrollingFrame3, title8, desc4, image5, "Slider")

      v44:SetTextTransparencyTitle(0)
      v44:SetSizeT(200)

      local f15 = Instance.new("Frame")
      local uiListLayout12 = Instance.new("UIListLayout")
      local uiPadding20 = Instance.new("UIPadding")
      local frame13 = Instance.new("Frame")
      local textBox2 = Instance.new("TextBox")
      local uiCorner13 = Instance.new("UICorner")
      local uiStroke5 = Instance.new("UIStroke")
      local frame14 = Instance.new("Frame")
      local frame15 = Instance.new("Frame")
      local uiCorner14 = Instance.new("UICorner")
      local frame16 = Instance.new("Frame")
      local uiCorner15 = Instance.new("UICorner")
      local frame17 = Instance.new("Frame")
      local uiCorner16 = Instance.new("UICorner")
      local uiPadding21 = Instance.new("UIPadding")

      f15.Name = "F"
      f15.Parent = parent7
      f15.AnchorPoint = Vector2.new(1, 0.5)
      f15.BackgroundTransparency = 1
      f15.BorderSizePixel = 0
      f15.Position = UDim2.new(1, 0, 0.5, 0)
      f15.Size = UDim2.new(0, 195, 0.8, 0)

      uiListLayout12.Parent = f15
      uiListLayout12.Padding = UDim.new(0, 8)
      uiListLayout12.FillDirection = Enum.FillDirection.Horizontal
      uiListLayout12.HorizontalAlignment = Enum.HorizontalAlignment.Right
      uiListLayout12.SortOrder = Enum.SortOrder.LayoutOrder
      uiListLayout12.VerticalAlignment = Enum.VerticalAlignment.Center

      uiPadding20.Parent = f15
      uiPadding20.PaddingRight = UDim.new(0, 13)

      frame13.Parent = f15
      frame13.Active = true
      frame13.BackgroundColor3 = Color3.fromRGB(24, 24, 31)
      frame13.BorderSizePixel = 0
      frame13.Size = UDim2.new(0, 50, 0, 20)
      frame13.LayoutOrder = 1
      addToTheme("Function.Slider.Value Background", frame13)

      textBox2.Parent = frame13
      textBox2.Active = true
      textBox2.BackgroundTransparency = 1
      textBox2.BorderSizePixel = 0
      textBox2.Size = UDim2.new(1, 0, 1, 0)
      textBox2.Font = Enum.Font.Cartoon
      textBox2.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
      textBox2.Text = tonumber(value19)
      textBox2.TextColor3 = Color3.fromRGB(255, 255, 255)
      textBox2.TextSize = 12
      addToTheme("Text & Icon", textBox2)

      uiCorner13.Parent = frame13
      uiCorner13.CornerRadius = UDim.new(0, 4)

      uiStroke5.Parent = frame13
      uiStroke5.Color = Color3.fromRGB(255, 255, 255)
      uiStroke5.Thickness = 1
      uiStroke5.Transparency = 0.95
      addToTheme("Function.Slider.Value Stroke", uiStroke5)

      frame14.Parent = f15
      frame14.BackgroundTransparency = 1
      frame14.BorderSizePixel = 0
      frame14.Size = UDim2.new(0, 120, 0, 20)

      frame15.Parent = frame14
      frame15.AnchorPoint = Vector2.new(0.5, 0.5)
      frame15.BackgroundColor3 = Color3.fromRGB(44, 34, 103)
      frame15.BorderSizePixel = 0
      frame15.Position = UDim2.new(0.5, 0, 0.5, 0)
      frame15.Size = UDim2.new(1, 0, 0, 10)
      addToTheme("Function.Slider.Slider Bar", frame15)

      uiCorner14.Parent = frame15
      uiCorner14.CornerRadius = UDim.new(1, 0)

      frame16.Parent = frame15
      frame16.AnchorPoint = Vector2.new(0, 0.5)
      frame16.BackgroundColor3 = Color3.fromRGB(91, 68, 209)
      frame16.BorderSizePixel = 0
      frame16.Position = UDim2.new(0, 0, 0.5, 0)
      frame16.Size = UDim2.new(0, 0, 1, 0)
      addToTheme("Function.Slider.Slider Bar Value", frame16)

      uiCorner15.Parent = frame16
      uiCorner15.CornerRadius = UDim.new(1, 0)

      frame17.Parent = frame16
      frame17.AnchorPoint = Vector2.new(1, 0.5)
      frame17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      frame17.BorderSizePixel = 0
      frame17.Position = UDim2.new(1, 0, 0.5, 0)
      frame17.Size = UDim2.new(0, 13, 0, 13)
      addToTheme("Function.Slider.Circle Value", frame17)

      uiCorner16.Parent = frame17
      uiCorner16.CornerRadius = UDim.new(1, 0)

      uiPadding21.Parent = frame15
      uiPadding21.PaddingBottom = UDim.new(0, 2)
      uiPadding21.PaddingLeft = UDim.new(0, 2)
      uiPadding21.PaddingRight = UDim.new(0, 2)
      uiPadding21.PaddingTop = UDim.new(0, 2)

      local v45 = click(frame14)
      local function f16(clamped, rounding2)
        local v46 = 10 ^ rounding2
        return math.floor(clamped * v46 + 0.5) / v46
      end

      local function f17(p39)
        local v47 = f16(math.clamp(p39, min, max), rounding)
        value19 = v47
        tw({
          v = frame16,
          t = 0.15,
          s = Enum.EasingStyle.Exponential,
          d = "Out",
          g = { Size = UDim2.new(math.clamp((v47 - min) / (max - min), 0.12, 1), 0, 1, 0) },
        }):Play()
        textBox2.Text = tostring(f16(v47, rounding))
        pcall(callback2, v47)
      end

      f17(value19 or 0)
      textBox2.FocusLost:Connect(function() f17(tonumber(textBox2.Text) or min) end)

      local flag3 = false
      v45.InputBegan:Connect(function(input7)
        if input7.UserInputType == Enum.UserInputType.MouseButton1 or input7.UserInputType == Enum.UserInputType.Touch then
          flag3 = true
          f17(math.clamp((input7.Position.X - frame15.AbsolutePosition.X) / frame15.AbsoluteSize.X, 0, 1) * (max - min) + min)
        end
      end)
      v45.InputEnded:Connect(function(input8)
        if input8.UserInputType == Enum.UserInputType.MouseButton1 or input8.UserInputType == Enum.UserInputType.Touch then
          flag3 = false
        end
      end)
      userInputService.InputChanged:Connect(function(input9)
        if flag3 and (input9.UserInputType == Enum.UserInputType.MouseMovement or input9.UserInputType == Enum.UserInputType.Touch) then
          f17(math.clamp((input9.Position.X - frame15.AbsolutePosition.X) / frame15.AbsoluteSize.X, 0, 1) * (max - min) + min)
        end
      end)

      local v51 = {}
      function v51:SetTitle(p40) v44:SetTitle(p40) end
      function v51:SetDesc(p41) v44:SetDesc(p41) end
      function v51:SetValue(p42) f17(p42) end
      return v51
    end

    function v31.Textbox(_, p64)
      local title13 = p64.Title
      local desc8 = p64.Desc or ""
      local image9 = p64.Image or ""
      local value25 = p64.Value or ""
      local placeholder = p64.Placeholder or "Paste Your Text"
      local clearText = p64.ClearText or p64.ClearTextOnFocus or false
      local callback6 = p64.Callback or function() end
      local parent8, v116 = background(scrollingFrame3, title13, desc8, image9, "Textbox")

      v116:SetTextTransparencyTitle(0)
      v116:SetSizeT(145)

      local f31 = Instance.new("Frame")
      local uiListLayout17 = Instance.new("UIListLayout")
      local uiPadding32 = Instance.new("UIPadding")
      local frame24 = Instance.new("Frame")
      local uiCorner30 = Instance.new("UICorner")
      local uiStroke12 = Instance.new("UIStroke")
      local uiPadding33 = Instance.new("UIPadding")
      local imageLabel4 = Instance.new("ImageLabel")
      local textLabel13 = Instance.new("TextBox")
      local frame25 = Instance.new("Frame")

      f31.Name = "F"
      f31.Parent = parent8
      f31.AnchorPoint = Vector2.new(1, 0.5)
      f31.BackgroundTransparency = 1
      f31.BorderSizePixel = 0
      f31.Position = UDim2.new(1, 0, 0.5, 0)
      f31.Size = UDim2.new(0, 150, 0.8, 0)

      uiListLayout17.Parent = f31
      uiListLayout17.Padding = UDim.new(0, 15)
      uiListLayout17.FillDirection = Enum.FillDirection.Horizontal
      uiListLayout17.HorizontalAlignment = Enum.HorizontalAlignment.Right
      uiListLayout17.SortOrder = Enum.SortOrder.LayoutOrder
      uiListLayout17.VerticalAlignment = Enum.VerticalAlignment.Center

      uiPadding32.Parent = f31
      uiPadding32.PaddingRight = UDim.new(0, 13)

      frame24.Parent = f31
      frame24.BackgroundColor3 = Color3.fromRGB(24, 24, 31)
      frame24.BorderSizePixel = 0
      frame24.Size = UDim2.new(0, 130, 0, 25)
      addToTheme("Function.Textbox.Value Background", frame24)

      uiCorner30.Parent = frame24
      uiCorner30.CornerRadius = UDim.new(0, 4)

      uiStroke12.Parent = frame24
      uiStroke12.Color = Color3.fromRGB(255, 255, 255)
      uiStroke12.Thickness = 1
      uiStroke12.Transparency = 0.95
      addToTheme("Function.Textbox.Value Stroke", uiStroke12)

      uiPadding33.Parent = frame24
      uiPadding33.PaddingLeft = UDim.new(0, 5)
      uiPadding33.PaddingRight = UDim.new(0, 5)

      imageLabel4.Parent = frame24
      imageLabel4.AnchorPoint = Vector2.new(1, 0.5)
      imageLabel4.BackgroundTransparency = 1
      imageLabel4.BorderSizePixel = 0
      imageLabel4.Position = UDim2.new(1, 0, 0.5, 0)
      imageLabel4.Size = UDim2.new(0, 15, 0, 15)
      imageLabel4.Image = "rbxassetid://13868675087"
      imageLabel4.ImageTransparency = 0.3
      addToTheme("Text & Value", imageLabel4)

      textLabel13.Name = "TextLabel"
      textLabel13.Parent = frame24
      textLabel13.BackgroundTransparency = 1
      textLabel13.BorderSizePixel = 0
      textLabel13.Size = UDim2.new(0.8, 0, 1, 0)
      textLabel13.Font = Enum.Font.GothamBold
      textLabel13.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
      textLabel13.PlaceholderText = placeholder
      textLabel13.RichText = true
      textLabel13.Text = value25
      textLabel13.TextColor3 = Color3.fromRGB(255, 255, 255)
      textLabel13.TextSize = 10
      textLabel13.TextTransparency = 0.3
      textLabel13.TextWrapped = true
      textLabel13.TextXAlignment = Enum.TextXAlignment.Left
      textLabel13.ClearTextOnFocus = not clearText
      addToTheme("Text & Value", textLabel13)

      frame25.Parent = frame24
      frame25.AnchorPoint = Vector2.new(0.5, 1)
      frame25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      frame25.BackgroundTransparency = 0.95
      frame25.BorderSizePixel = 0
      frame25.Position = UDim2.new(0.5, 0, 1, 0)
      frame25.Size = UDim2.new(1.05, 0, 0, 2)

      textLabel13.FocusLost:Connect(function()
        if #textLabel13.Text > 0 then
          pcall(callback6, textLabel13.Text)
        end
      end)

      local v117 = {}
      function v117:SetTitle(p65) v116:SetTitle(p65) end
      function v117:SetDesc(p66) v116:SetDesc(p66) end
      function v117:SetValue(text13) textLabel13.Text = text13 end
      return v117
    end

    function v31.Dropdown(_, p46)
      local title10 = p46.Title or "null"
      local desc5 = p46.Desc or ""
      local image6 = p46.Image or ""
      local list9 = p46.List or {}
      local value22 = p46.Value or list9[1]
      local multi = p46.Multi or false
      local callback3 = p46.Callback or function() end
      local v70, v71 = background(scrollingFrame3, title10, desc5, image6, "Dropdown")

      v71:SetTextTransparencyTitle(0)
      v71:SetSizeT(125)

      local v72 = addDropdownSelect(v70, v70, multi, callback3, value22, list9)
      local v73 = {}
      function v73:SetTitle(p47) v71:SetTitle(p47) end
      function v73:SetDesc(p48) v71:SetDesc(p48) end
      function v73:SetValue(p49) v72:SetValue(p49) end
      function v73:Add(p50) v72:Add(p50) end
      function v73:Clear(p51) v72:Clear(p51 or nil) end
      function v73:SetList(p52) v72:SetList(p52) end
      return v73
    end

    return v31
  end

  local notification = Instance.new("Frame")
  local uiPadding34 = Instance.new("UIPadding")
  local uiListLayout18 = Instance.new("UIListLayout")

  notification.Name = "Notification"
  notification.Parent = egiXploitGui
  notification.AnchorPoint = Vector2.new(1, 1)
  notification.BackgroundTransparency = 1
  notification.BorderSizePixel = 0
  notification.Position = UDim2.new(1, 0, 1, 0)
  notification.Size = UDim2.new(0, 100, 0, 100)

  uiPadding34.Parent = notification
  uiPadding34.PaddingBottom = UDim.new(0, 20)
  uiPadding34.PaddingRight = UDim.new(0, 5)

  uiListLayout18.Parent = notification
  uiListLayout18.HorizontalAlignment = Enum.HorizontalAlignment.Right
  uiListLayout18.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout18.VerticalAlignment = Enum.VerticalAlignment.Bottom

  function v25:Notify(p69)
    local title14 = p69.Title or "null"
    local desc9 = p69.Desc or ""
    local v118 = p69.Time or 5
    local shadow2 = Instance.new("ImageLabel")
    local uiPadding35 = Instance.new("UIPadding")
    local v119 = Instance.new("CanvasGroup")
    local uiCorner32 = Instance.new("UICorner")
    local frame26 = Instance.new("Frame")
    local text14 = Instance.new("Frame")
    local uiPadding36 = Instance.new("UIPadding")
    local title15 = Instance.new("TextLabel")
    local uiListLayout19 = Instance.new("UIListLayout")
    local description = Instance.new("TextLabel")
    local frame27 = Instance.new("Frame")

    shadow2.Name = "Shadow"
    shadow2.Parent = notification
    shadow2.BackgroundTransparency = 1
    shadow2.Size = UDim2.new(0, 180, 0, 0)
    shadow2.Image = "rbxassetid://1316045217"
    shadow2.ImageColor3 = v1[theme2].Shadow
    shadow2.ImageTransparency = 0.5
    shadow2.ScaleType = Enum.ScaleType.Slice
    shadow2.SliceCenter = Rect.new(10, 10, 118, 118)
    addToTheme("Shadow", shadow2)

    uiPadding35.Parent = shadow2
    uiPadding35.PaddingBottom = UDim.new(0, 5)
    uiPadding35.PaddingLeft = UDim.new(0, 5)
    uiPadding35.PaddingRight = UDim.new(0, 5)
    uiPadding35.PaddingTop = UDim.new(0, 5)

    v119.Name = "Background"
    v119.Parent = shadow2
    v119.AnchorPoint = Vector2.new(0.5, 0.5)
    v119.BackgroundColor3 = v1[theme2].Background
    v119.BorderSizePixel = 0
    v119.Position = UDim2.new(0.5, 0, 0.5, 0)
    v119.Size = UDim2.new(1, 0, 1, 0)
    v119.ClipsDescendants = true
    v119.GroupTransparency = 1
    addToTheme("Background", v119)

    uiCorner32.Parent = v119
    uiCorner32.CornerRadius = UDim.new(0, 6)

    frame26.Parent = v119
    frame26.AnchorPoint = Vector2.new(0, 1)
    frame26.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame26.BackgroundTransparency = 0.9
    frame26.BorderSizePixel = 0
    frame26.Position = UDim2.new(0, 0, 1, 0)
    frame26.Size = UDim2.new(1, 0, 0, 4)

    text14.Name = "Text"
    text14.Parent = v119
    text14.BackgroundTransparency = 1
    text14.BorderSizePixel = 0
    text14.Size = UDim2.new(1, 0, 1, 0)

    uiPadding36.Parent = text14
    uiPadding36.PaddingBottom = UDim.new(0, 5)
    uiPadding36.PaddingLeft = UDim.new(0, 5)
    uiPadding36.PaddingRight = UDim.new(0, 5)
    uiPadding36.PaddingTop = UDim.new(0, 5)

    title15.Name = "Title"
    title15.Parent = text14
    title15.AutomaticSize = Enum.AutomaticSize.Y
    title15.BackgroundTransparency = 1
    title15.BorderSizePixel = 0
    title15.Size = UDim2.new(1, 0, 0, 0)
    title15.Font = Enum.Font.GothamBold
    title15.Text = tostring(title14)
    title15.TextColor3 = v1[theme2]["Text & Icon"]
    title15.TextSize = 12
    title15.TextWrapped = true
    title15.RichText = true
    title15.TextXAlignment = Enum.TextXAlignment.Left
    addToTheme("Text & Icon", title15)

    uiListLayout19.Parent = text14
    uiListLayout19.Padding = UDim.new(0, 3)
    uiListLayout19.SortOrder = Enum.SortOrder.LayoutOrder

    description.Name = "Description"
    description.Parent = text14
    description.AutomaticSize = Enum.AutomaticSize.Y
    description.BackgroundTransparency = 1
    description.BorderSizePixel = 0
    description.LayoutOrder = 2
    description.Size = UDim2.new(1, 0, 0, 0)
    description.Font = Enum.Font.GothamBold
    description.Text = tostring(desc9)
    description.TextColor3 = v1[theme2]["Text & Icon"]
    description.TextSize = 10
    description.TextTransparency = 0.5
    description.TextWrapped = true
    description.RichText = true
    description.TextXAlignment = Enum.TextXAlignment.Left
    description.Visible = false
    addToTheme("Text & Icon", description)

    frame27.Parent = text14
    frame27.BackgroundColor3 = v1[theme2]["Text & Icon"]
    frame27.BackgroundTransparency = 0.9
    frame27.BorderSizePixel = 0
    frame27.LayoutOrder = 1
    frame27.Size = UDim2.new(1, 0, 0, 1)
    frame27.Visible = false
    addToTheme("Text & Icon", frame27)

    v119.Size = UDim2.new(1, 0, 1, 0) - UDim2.fromOffset(5, 5)
    if desc9 and desc9 ~= "" then
      description.Visible = true
      frame27.Visible = true
    end

    local function f33()
      task.defer(function()
        local v120 = uiListLayout19.AbsoluteContentSize.Y + 28
        if shadow2.Size.Y.Offset ~= v120 then
          shadow2.Size = UDim2.new(0, 180, 0, v120)
        end
      end)
    end
    task.delay(0.1, f33)
    uiListLayout19:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(f33)

    local v121 = tw({ v = shadow2, t = 0.15, s = Enum.EasingStyle.Exponential, d = "InOut", g = { Size = UDim2.new(0, 180, 0, 55) } })
    v121:Play()
    v121.Completed:Wait()

    tw({ v = v119, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { Size = UDim2.new(1, 0, 1, 0), GroupTransparency = 0.3 } }):Play()

    task.spawn(function()
      for k = v118, 1, -1 do
        tw({ v = frame26, t = 0.15, s = Enum.EasingStyle.Exponential, d = "Out", g = { Size = UDim2.new(k / v118, 0, 0, 4) } }):Play()
        task.wait(1)
      end
      local v122 = tw({ v = v119, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { Size = UDim2.new(1, 0, 1, 0) - UDim2.fromOffset(5, 5), GroupTransparency = 1 } })
      v122:Play()
      v122.Completed:Connect(function()
        shadow2.ImageTransparency = 1
        local v123 = tw({ v = shadow2, t = 0.15, s = Enum.EasingStyle.Exponential, d = "InOut", g = { Size = UDim2.new(0, 180, 0, 0) } })
        v123:Play()
        v123.Completed:Connect(function() shadow2:Destroy() end)
      end)
    end)
  end

  function v25:Dialog(p70)
    if shadow:FindFirstChild("Dialog") then return end
    local title16 = p70.Title or "null"
    local title17 = p70.Button1.Title or getLangText("Confirm")
    local title18 = p70.Button2.Title or getLangText("Cancel")
    local color3 = p70.Button1.Color or Color3.fromRGB(0, 188, 0)
    local color4 = p70.Button2.Color or Color3.fromRGB(226, 39, 6)

    local dialog = Instance.new("CanvasGroup")
    local uiCorner33 = Instance.new("UICorner")
    local frame28 = Instance.new("Frame")
    local textLabel14 = Instance.new("TextLabel")
    local uiListLayout20 = Instance.new("UIListLayout")
    local frame29 = Instance.new("Frame")
    local button1 = Instance.new("Frame")
    local uiCorner34 = Instance.new("UICorner")
    local textLabel15 = Instance.new("TextLabel")
    local button2 = Instance.new("Frame")
    local uiCorner35 = Instance.new("UICorner")
    local textLabel16 = Instance.new("TextLabel")
    local uiListLayout21 = Instance.new("UIListLayout")

    dialog.Name = "Dialog"
    dialog.Parent = shadow
    dialog.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    dialog.BackgroundTransparency = 0.3
    dialog.BorderSizePixel = 0
    dialog.Size = UDim2.new(1, 0, 1, 0)
    dialog.GroupTransparency = 1

    uiCorner33.Parent = dialog
    uiCorner33.CornerRadius = UDim.new(0, 17)

    frame28.Parent = dialog
    frame28.AnchorPoint = Vector2.new(0.5, 0.5)
    frame28.BackgroundTransparency = 1
    frame28.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame28.Size = UDim2.new(0, 100, 0, 100)

    textLabel14.Parent = frame28
    textLabel14.BackgroundTransparency = 1
    textLabel14.Size = UDim2.new(0, 200, 0, 30)
    textLabel14.Font = Enum.Font.GothamBold
    textLabel14.RichText = true
    textLabel14.Text = tostring(title16)
    textLabel14.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel14.TextSize = 18

    uiListLayout20.Parent = frame28
    uiListLayout20.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uiListLayout20.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout20.VerticalAlignment = Enum.VerticalAlignment.Center

    frame29.Parent = frame28
    frame29.BackgroundTransparency = 1
    frame29.LayoutOrder = 1
    frame29.Size = UDim2.new(0, 100, 0, 50)

    button1.Name = "Button1"
    button1.Parent = frame29
    button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button1.BorderSizePixel = 0
    button1.Size = UDim2.new(0, 130, 0, 40)
    uiCorner34.Parent = button1
    uiCorner34.CornerRadius = UDim.new(1, 0)

    textLabel15.Parent = button1
    textLabel15.BackgroundTransparency = 1
    textLabel15.Size = UDim2.new(1, 0, 1, 0)
    textLabel15.Font = Enum.Font.GothamBold
    textLabel15.Text = title17
    textLabel15.TextColor3 = color3
    textLabel15.TextSize = 16

    button2.Name = "Button2"
    button2.Parent = frame29
    button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button2.BorderSizePixel = 0
    button2.Size = UDim2.new(0, 130, 0, 40)
    uiCorner35.Parent = button2
    uiCorner35.CornerRadius = UDim.new(1, 0)

    textLabel16.Parent = button2
    textLabel16.BackgroundTransparency = 1
    textLabel16.Size = UDim2.new(1, 0, 1, 0)
    textLabel16.Font = Enum.Font.GothamBold
    textLabel16.Text = title18
    textLabel16.TextColor3 = color4
    textLabel16.TextSize = 16

    uiListLayout21.Parent = frame29
    uiListLayout21.Padding = UDim.new(0, 10)
    uiListLayout21.FillDirection = Enum.FillDirection.Horizontal
    uiListLayout21.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uiListLayout21.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout21.VerticalAlignment = Enum.VerticalAlignment.Center

    tw({ v = dialog, t = 0.25, s = Enum.EasingStyle.Linear, d = "Out", g = { GroupTransparency = 0 } }):Play()

    local v124 = click(button1)
    local v125 = click(button2)

    v124.MouseButton1Click:Connect(function()
      local dTween = tw({ v = dialog, t = 0.25, s = Enum.EasingStyle.Linear, d = "Out", g = { GroupTransparency = 1 } })
      dTween:Play()
      dTween.Completed:Wait()
      dialog:Destroy()
      pcall(p70.Button1.Callback or function() end)
    end)

    v125.MouseButton1Click:Connect(function()
      local dTween = tw({ v = dialog, t = 0.25, s = Enum.EasingStyle.Linear, d = "Out", g = { GroupTransparency = 1 } })
      dTween:Play()
      dTween.Completed:Wait()
      dialog:Destroy()
      pcall(p70.Button2.Callback or function() end)
    end)
  end

  addDropdownSelect(dropdownValue, dropdownValue, false, function(key11)
    theme2 = key11
    local v129 = v1[key11]
    if v129 then
      Library:setTheme({
        Shadow = v129.Shadow,
        Background = v129.Background,
        Page = v129.Page,
        Main = v129.Main,
        ["Text & Icon"] = v129["Text & Icon"],
        Function = v129.Function
      })
    end
  end, theme, v1.index)

  addDropdownSelect(dropdownLang, dropdownLang, false, function(langKey)
    currentLanguage = langKey
    v25:Notify({
      Title = getLangText("NotifyTitle"),
      Desc = getLangText("NotifyDesc"),
      Time = 5
    })
  end, currentLanguage, Languages.index)

  close.MouseButton1Click:Connect(function()
    v25:Dialog({
      Title = getLangText("CloseTitle"),
      Button1 = {
        Title = getLangText("Confirm"),
        Color = Color3.fromRGB(0, 188, 0),
        Callback = function() egiXploitGui:Destroy() end,
      },
      Button2 = { Title = getLangText("Cancel"), Color = Color3.fromRGB(226, 39, 6) }
    })
  end)

  local flag8 = false
  local size5, position3
  minisize.MouseButton1Click:Connect(function()
    if not flag8 then
      size5 = shadow.Size
      position3 = shadow.Position
      tw({ v = shadow, t = 0.15, s = Enum.EasingStyle.Exponential, d = "Out", g = { Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0) } }):Play()
      minisize.Image = "rbxassetid://13857981896"
    else
      minisize.Image = "rbxassetid://13857987062"
      tw({ v = shadow, t = 0.15, s = Enum.EasingStyle.Exponential, d = "Out", g = { Size = size5, Position = position3 } }):Play()
    end
    flag8 = not flag8
  end)

  lak(topbar, shadow)
  local flag9 = false
  local flag10 = false
  local size6

  local function f34()
    flag9 = not flag9
    if flag9 then
      size6 = v24.Size
      local v128 = tw({ v = v24, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { GroupTransparency = 1, Size = size6 - UDim2.fromOffset(5, 5) } })
      v128:Play()
      v128.Completed:Wait()
      shadow.Visible = false
    else
      shadow.Visible = true
      tw({ v = v24, t = 0.15, s = Enum.EasingStyle.Linear, d = "InOut", g = { GroupTransparency = 0, Size = size6 } }):Play()
    end

    if not flag10 then
      flag10 = true
      v25:Notify({
        Title = getLangText("NotifyTitle"),
        Desc = getLangText("NotifyDesc"),
        Time = 10,
      })
    end
  end

  size3.MouseButton1Click:Connect(f34)
  userInputService.InputBegan:Connect(function(input22)
    -- Tombol keybind PC hanya dipicu jika ada KeyCode valid dan bukan di perangkat mobile murni tanpa keyboard
    if keybind and input22.KeyCode == keybind and not userInputService:GetFocusedTextBox() then
      f34()
    end
  end)

  return v25
end

return Library
