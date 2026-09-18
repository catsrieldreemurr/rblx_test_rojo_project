local clickedAmount = 0
local rng = Random.new(os.time());

local screen = game.Workspace.Screen

local DEFAULTCHANCE = 0

local totalClicks:number = 0
local chanceToFail:number = 0
local highestValue:number = 0

game.Workspace.TestPart.ClickDetector.MouseClick:Connect(function(playerWhoClicked)
    local resets = rng:NextInteger(0, 10)

    if resets > chanceToFail then
        clickedAmount += 1
    else
        if clickedAmount > highestValue then
            highestValue = clickedAmount
        end

        clickedAmount = 0
        totalClicks = 0
        chanceToFail = DEFAULTCHANCE
    end

    if totalClicks == 10 then
        totalClicks = 0
        chanceToFail += 1
    end

    screen.SurfaceGui.pointsCounter.Text = "Points: " .. clickedAmount
    screen.SurfaceGui.chanceCounter.Text = "Chance: " .. chanceToFail
    screen.SurfaceGui.highCounter.Text = "High Score: " .. highestValue
    
    totalClicks += 1
    print(clickedAmount)
end)