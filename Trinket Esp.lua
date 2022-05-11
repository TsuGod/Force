local toggle = nil

local function espon()
while wait() do
   wait(3)
for i,v in pairs(game.workspace:GetDescendants()) do
    i=1
 if v.Name == "" and v:FindFirstChild("Shine") and toggle == true then
    if not v:FindFirstChild('meuguiporra') then
   local a = Instance.new("BillboardGui",v)
   a.Name = "meuguiporra"
   a.Size = UDim2.new(10,0, 10,0)
   a.AlwaysOnTop = true
   local b = Instance.new("Frame",a)
   b.Size = UDim2.new(1,0, 1,0)
   b.BackgroundTransparency = 0.80
   b.BorderSizePixel = 0
   b.BackgroundColor3 = Color3.new(0, 255, 0)
   local c = Instance.new('TextLabel',b)
   c.Size = UDim2.new(2,0,2,0)
   c.BorderSizePixel = 0
   c.TextSize = 20
   c.Text = v.Name
   c.BackgroundTransparency = 1
 end
end
end
end
end

local UserInputService = game:GetService'UserInputService'
UserInputService.InputBegan:Connect(function(input,gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode[keyespon] then
        toggle = true
        wait(.1)
        espon()
    end
end)

local function espoff()
for i,v in pairs(game.workspace:GetDescendants()) do
    i=1
 if v.Name == "" and v:FindFirstChild("Shine") and toggle == false then
    v.meuguiporra:Destroy()
 end
end
end

local UserInputService = game:GetService'UserInputService'
UserInputService.InputBegan:Connect(function(input,gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode[keyespoff] then
        toggle = false
        wait(.1)
        espoff()
    end
end)