##########
#>
#

# タイマー駆動
    scoreboard players add @s Timer 1
# チェストを開ける
    execute if score @s Timer matches 15 run playsound resource:custom.levelup master @a ~ ~ ~ 0.1 0.8
    execute if score @s Timer matches 13 facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    execute if score @s Timer matches 30 run tp ~ ~-0.001 ~
    execute if score @s Timer matches 35 run playsound block.chest.open master @a ~ ~ ~ 0.25 0.94
    execute if score @s Timer matches 35..60 if entity @s[tag=Top] run function item:fishing/chest/open
    execute if score @s Timer matches 40 if entity @s[tag=Top] run loot spawn ~ ~1.3 ~ loot asset:item/weapon/2203.golden_sword/_
    execute if score @s Timer matches 65 run playsound block.amethyst_block.chime master @a ~ ~ ~ 1.0 1.0
    execute if score @s Timer matches 68 run playsound block.amethyst_block.chime master @a ~ ~ ~ 1.0 1.0
    execute if score @s Timer matches 70 run playsound block.amethyst_block.chime master @a ~ ~ ~ 1.0 1.0
    execute if score @s Timer matches 70 run particle cloud ~ ~1.4 ~ 0.1 0.2 0.1 0.03 15 force
    execute if score @s Timer matches 70 run kill @s
# リセット
    scoreboard players reset $HeadPose Temporary
    scoreboard players reset $CurrentAngle Temporary