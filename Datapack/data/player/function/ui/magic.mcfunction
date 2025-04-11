#> player:ui/magic
# 魔導書のクールダウン表示

# クールダウンの計算
    execute store result score $Cooldown Temporary run data get storage player: Inventory[{Slot:-106b}].components.minecraft:custom_data.magic.cooldown
    execute store result score $UsedTick Temporary run data get storage player: Inventory[{Slot:-106b}].components.minecraft:custom_data.magic.used_tick
    execute store result score $Time Temporary run time query gametime
    execute if score @s CDReduction matches 1.. run function player:status/cd/reduction
    scoreboard players operation $Time Temporary -= $UsedTick Temporary
    scoreboard players operation $Time Temporary *= #15 Constant
    scoreboard players operation $Time Temporary /= $Cooldown Temporary

# CD表示
    execute if score $Time Temporary matches ..0 run data modify storage player:ui Magic.RightHanded set value '\uE1C0'
    execute if score $Time Temporary matches 1 run data modify storage player:ui Magic.RightHanded set value '\uE1C1'
    execute if score $Time Temporary matches 2 run data modify storage player:ui Magic.RightHanded set value '\uE1C2'
    execute if score $Time Temporary matches 3 run data modify storage player:ui Magic.RightHanded set value '\uE1C3'
    execute if score $Time Temporary matches 4 run data modify storage player:ui Magic.RightHanded set value '\uE1C4'
    execute if score $Time Temporary matches 5 run data modify storage player:ui Magic.RightHanded set value '\uE1C5'
    execute if score $Time Temporary matches 6 run data modify storage player:ui Magic.RightHanded set value '\uE1C6'
    execute if score $Time Temporary matches 7 run data modify storage player:ui Magic.RightHanded set value '\uE1C7'
    execute if score $Time Temporary matches 8 run data modify storage player:ui Magic.RightHanded set value '\uE1C8'
    execute if score $Time Temporary matches 9 run data modify storage player:ui Magic.RightHanded set value '\uE1C9'
    execute if score $Time Temporary matches 10 run data modify storage player:ui Magic.RightHanded set value '\uE1CA'
    execute if score $Time Temporary matches 11 run data modify storage player:ui Magic.RightHanded set value '\uE1CB'
    execute if score $Time Temporary matches 12 run data modify storage player:ui Magic.RightHanded set value '\uE1CC'
    execute if score $Time Temporary matches 13 run data modify storage player:ui Magic.RightHanded set value '\uE1CD'
    execute if score $Time Temporary matches 14 run data modify storage player:ui Magic.RightHanded set value '\uE1CE'
    execute if score $Time Temporary matches 15 run data modify storage player:ui Magic.RightHanded set value '\uE1CF'

# 左利き用
    execute if entity @s[tag=LeftHanded] run data modify storage player:ui Magic.LeftHanded set from storage player:ui Magic.RightHanded
    execute if entity @s[tag=LeftHanded] run data modify storage player:ui Magic.RightHanded set value '\uF829\uF821'

# リセット
    scoreboard players reset $Cooldown Temporary
    scoreboard players reset $UsedTick Temporary
    scoreboard players reset $Time Temporary