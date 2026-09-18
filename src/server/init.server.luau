local Workspace = game:GetService("Workspace")
local clone = game.Workspace.TestPart:Clone()

clone.Parent = Workspace

local fire = Instance.new('Fire')
fire.Parent = clone
clone.Position = Vector3.new(0, 0, 0)