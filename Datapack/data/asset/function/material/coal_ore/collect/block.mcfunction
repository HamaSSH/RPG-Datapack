#> asset:material/coal_ore/collect/block
# 採集ポイントを1段階破壊

execute unless entity @s[tag=HasHPScore] run function asset:material/.manager/init

# HPバーの表示
    scoreboard players remove @s HP 1
    data modify entity @s CustomNameVisible set value 1b
    execute if score @s HP matches 3 run data modify entity @s CustomName set value '[{"text":"■■■","color":"yellow"},{"text":"■","color":"dark_gray"},"\\uF801"]'
    execute if score @s HP matches 2 run data modify entity @s CustomName set value '[{"text":"■■","color":"yellow"},{"text":"■■","color":"dark_gray"},"\\uF801"]'
    execute if score @s HP matches 1 run data modify entity @s CustomName set value '[{"text":"■","color":"red"},{"text":"■■■","color":"dark_gray"},"\\uF801"]'
    execute if score @s HP matches 0 run data modify entity @s CustomName set value '[{"text":"■■■■","color":"dark_gray"},"\\uF801"]'

# アイテムドロップ
    loot spawn ~ ~ ~ loot asset:material/coal_ore

# 見た目の変更
    execute if score @s HP matches 1.. run setblock ~ ~ ~ coal_ore
    execute if score @s HP matches ..0 run function asset:material/coal_ore/collect/death