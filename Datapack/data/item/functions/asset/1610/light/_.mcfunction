##########
#>
#

### 各光源AECとしての常時実行function

    execute store result score $LightLevel Temporary run data get entity @s PortalCooldown
    scoreboard players operation $LightLevel Temporary /= #20 Constant
# 光源設置
    execute if score $LightLevel Temporary matches ..1 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=1]
    execute if score $LightLevel Temporary matches ..1 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=1,waterlogged=true]
    execute if score $LightLevel Temporary matches 2 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=2]
    execute if score $LightLevel Temporary matches 2 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=2,waterlogged=true]
    execute if score $LightLevel Temporary matches 3 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=3]
    execute if score $LightLevel Temporary matches 3 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=3,waterlogged=true]
    execute if score $LightLevel Temporary matches 4 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=4]
    execute if score $LightLevel Temporary matches 4 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=4,waterlogged=true]
    execute if score $LightLevel Temporary matches 5 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=5]
    execute if score $LightLevel Temporary matches 5 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=5,waterlogged=true]
    execute if score $LightLevel Temporary matches 6 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=6]
    execute if score $LightLevel Temporary matches 6 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=6,waterlogged=true]
    execute if score $LightLevel Temporary matches 7 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=7]
    execute if score $LightLevel Temporary matches 7 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=7,waterlogged=true]
    execute if score $LightLevel Temporary matches 8 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=8]
    execute if score $LightLevel Temporary matches 8 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=8,waterlogged=true]
    execute if score $LightLevel Temporary matches 9 unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=9]
    execute if score $LightLevel Temporary matches 9 if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=9,waterlogged=true]
    execute if score $LightLevel Temporary matches 10.. unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=10]
    execute if score $LightLevel Temporary matches 10.. if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=10,waterlogged=true]
# 光源撤去
    execute if data entity @s {Age:1} run function item:asset/1610/light/remove