local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "Nebula | Boombox Hub",
     Style = 3,
     SizeX = 400,
     SizeY = 350,
     Theme = "Dark"
})

local HomePage = UI.New({
    Title = "Home"
})

HomePage.Button({
    Text = "Hello, I made some good updates.",
    Callback = function()
        print('Hi')
    end
})

HomePage.Button({
    Text = "Added More Scripts",
    Callback = function()
        print('Hi')
    end
})

UI.Banner({
    Text = "Join The Discord"
})

local BoomboxPage = UI.New({
    Title = "Boombox Hubs"
})

-- BOOMBOX HUBS! --


BoomboxPage.Button({
    Text = "Verts Hub",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/xSAW2uX0'))()
    end
})

BoomboxPage.Button({
    Text = "Error Log",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Enviie/Errorlog-s-Boombox-Visualizer-Crack/main/Error's%20Boombox%20Vis%20Main.lua"))("Enviie Soo Hot!")
    end
})

BoomboxPage.Button({
    Text = "Fish Hub",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/6y5Tqvx7'))()
    end
})

BoomboxPage.Button({
    Text = "Systemic",
    Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\100\101\97\116\104\108\108\121\104\97\108\108\111\119\115\47\83\121\115\116\101\109\105\99\86\105\115\117\97\108\105\122\101\114\47\109\97\105\110\47\77\97\105\110\46\108\117\97\34\44\32\116\114\117\101\41\41\40\41\10")()
    end
})

BoomboxPage.Button({
    Text = "Lucious-Ware",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/PremiumLucious.lua"))()
    end
})

BoomboxPage.Button({
    Text = "Pineapple Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/AuxPineapple2.lua"))()
    end
})

BoomboxPage.Button({
    Text = "Fanta Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/FantaHub2.lua"))()
    end
})

BoomboxPage.Button({
    Text = "Space Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/SpaceHub.lua"))()
    end
})

BoomboxPage.Button({
    Text = "Free Lucious Ware",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/NormalLucious.lua"))()
    end
})



BoomboxPage.Button({
    Text = "Hash Hub (Synapse Only)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ggrimmed/Lucious-Ware/main/hashub.txt",true))()
    end
})

BoomboxPage.Button({
    Text = "Asset-Ware",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ggrimmed/Lucious-Ware/main/assetware.lua"))()
    end
})

BoomboxPage.Button({
    Text = "Fanta-Hub 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kyakuryc/fanta-hub/main/fanta_hub_raw.txt",true))()
    end
})

BoomboxPage.Button({
    Text = "Z0R",
    Callback = function()
        loadstring(game:HttpGet('https://encrypts.gq/cYYXaN2LBq.txt', true))()
    end
})

BoomboxPage.Button({
    Text = "Cypher X",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/ggrimmed/Boombox-Reaper/blob/main/Cypher_X.lua.txt", true))()
    end
})

BoomboxPage.Button({
    Text = "Riptide",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/icwWmeGB'))()
    end
})

BoomboxPage.Button({
    Text = "Oxis Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Oxisist/myscripts/eb16dee222392f282184dd5785c09fbdafbf4ce4/OxisAdmin.lua"))()
    end
})

-- LOGGERS --

local LoggerPage = UI.New({
    Title = "Loggers"
})

LoggerPage.Button({
    Text = "Edges Logger",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/wN9Q3pZm",true))()
    end
})

-- ANTI-LOGGERS --

local AntiPage = UI.New({
    Title = "Anti-Loggers"
})

AntiPage.Button({
    Text = "Anti-Steal v7.33",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/uHznnqmM'))()
    end
})

AntiPage.Button({
    Text = "Serenity",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/v9h/Serenity/main/main.lua"))()
    end
})

AntiPage.Button({
    Text = "Anti Logger by Dot_MP4",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/J0BHhzx1'))()
    end
})

AntiPage.Button({
    Text = "Sync V4",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ggrimmed/Lucious-Ware/main/SyncV4.lua'))()
    end
})

AntiPage.Button({
    Text = "Verts Hub Cracked Anti Log",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ggrimmed/Lucious-Ware/main/Verts%20Free%20Anti-Log.lua'))()
    end
})

-- ANTI FLINGS --

local AntiFlingPage = UI.New({
    Title = "Anti-Fling"
})

AntiFlingPage.Button({
    Text = "Anti Fling",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/BTNVZSeM'))()
    end
})

AntiFlingPage.Button({
    Text = "Anti Fling 2",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/VjjWMC7a'))()
    end
})

-- ADMIN --

local AdminPage = UI.New({
    Title = "Admin"
})

AdminPage.Button({
    Text = "Fates Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
    end
})

AdminPage.Button({
    Text = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

AdminPage.Button({
    Text = "CMD X",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()
    end
})

AdminPage.Button({
    Text = "Reviz",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.pl/view/raw/d06345fe'))()
    end
})


local ETCPage = UI.New({
    Title = "ETC"
})

-- E T C --


ETCPage.Button({
    Text = "Shed Bypasser",
    Callback = function()
        loadstring(game:HttpGet("https://the-shed.dev/scripts/sbp.lua", true))()
    end
})

ETCPage.Button({
    Text = "Tool Snatcher",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/6mUBaQKa", true))()
    end
})

ETCPage.Button({
    Text = "Invis Fling",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/08LqdrrC'))();
    end
})

ETCPage.Button({
    Text = "Save Tools (K To Save L To Bring Back)",
    Callback = function()
        game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
            if (key=="k") then
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if (v:IsA("Tool")) then
            v.Parent = game.Players.LocalPlayer
            end
            end
            end
            end)
            game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
            if (key=="l") then
            for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
            if (v:IsA("Tool")) then
            v.Parent = game.Players.LocalPlayer.Backpack
            end
            end
            end
            end)
            game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
            if (key=="p") then
            while wait() do
            local GetBackpack = game.Players.LocalPlayer.Backpack:GetChildren()
            for i=1, #GetBackpack do
               if GetBackpack[i].ClassName == "Tool" then
                   GetBackpack[i].CanBeDropped = true
               end
            end
            end
            end
            end)
    end
})

-- E T C --

local CreditsPage = UI.New({
    Title = "Credits"
})

CreditsPage.Button({
    Text = "Discord",
    Callback = function()
        setclipboard("https://discord.gg/8ajGwRrQWA")
    end
})

CreditsPage.TextField({
    Text = "Scripts put together and found by immensity",
    Callback = function(value)
        print(value)
    end
})

CreditsPage.TextField({
    Text = "Cypher Script was found by WSnowman#2336",
    Callback = function(value)
        print(value)
    end
})