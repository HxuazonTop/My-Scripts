-- dumping
local string = ""
for i, v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "damage") then
        for _,v in pairs(v) do string = string .. tostring(_) .. " " .. tostring(v) .. "\n" end
        string = string .. "____________________________________________________\n" 
    end
end
writefile("big paintball dump.txt", string)
 
-- modding
for i, v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "damage") then
        v.damage = math.huge
        v.firerate = 0.000000001
        v.velocity = 50000
        v.automatic = true
        v.additionalspeed = 100
        v.gadgetDamage = math.huge
    end
end