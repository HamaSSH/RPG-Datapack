#> item:fishing/chest/gold/animation
# 宝箱(金)のアニメーション

# パーティクル
    execute if entity @s[tag=Top] run particle wax_off ~ ~1.3 ~ 0.3 0.3 0.3 0.3 1 force
    execute if entity @s[tag=Top] run particle crit ~ ~1.3 ~ 0.3 0.3 0.3 0.02 2 force

# タイマー駆動
    scoreboard players add @s Timer 1

# チェストを開ける
    execute if score @s Timer matches 15 run playsound resource:custom.levelup master @a ~ ~ ~ 0.1 0.8
    execute if score @s Timer matches 13 facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    execute if score @s Timer matches 30 run tp ~ ~-0.001 ~
    execute if score @s Timer matches 35 run playsound block.chest.open master @a ~ ~ ~ 0.25 0.94
    execute if score @s Timer matches 35..60 if entity @s[tag=Top] run function item:fishing/chest/open
    execute if score @s Timer matches 45..90 if entity @s[tag=Top] run loot spawn ~ ~1.1 ~ loot item:fishing/chest/gold
    execute if score @s Timer matches 45..90 run playsound entity.item.pickup master @a ~ ~ ~ 0.1 1.2
    execute if score @s Timer matches 80 if entity @s[tag=Top] run loot spawn ~ ~1.3 ~ loot item:fishing/chest/loot
    execute if score @s Timer matches 95 run playsound block.amethyst_block.chime master @a ~ ~ ~ 1.0 1.0
    execute if score @s Timer matches 98 run playsound block.amethyst_block.chime master @a ~ ~ ~ 1.0 1.0
    execute if score @s Timer matches 100 run playsound block.amethyst_block.chime master @a ~ ~ ~ 1.0 1.0
    execute if score @s Timer matches 100 run particle cloud ~ ~1.4 ~ 0.1 0.2 0.1 0.03 15 force
    execute if score @s Timer matches 100 run kill @s

# リセット
    scoreboard players reset $HeadPose Temporary
    scoreboard players reset $CurrentAngle Temporary