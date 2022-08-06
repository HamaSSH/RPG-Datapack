# 光源の撤去  
    execute unless entity @s[tag=InWater] run setblock ~ ~ ~ air
    execute if entity @s[tag=InWater] run setblock ~ ~ ~ water
# AECの後処理
    kill @s