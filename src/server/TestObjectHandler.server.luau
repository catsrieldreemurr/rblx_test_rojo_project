local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local testModule = require(ReplicatedStorage.Shared.testModule)

function ExecuteModules(part:Instance)
    testModule.PrintPartName(part)
end

for _, part in ipairs(CollectionService:GetTagged("testObject")) do
    ExecuteModules(part)
end