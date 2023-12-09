#> asset:material/401.sweet_berries/collect/damage
# 採集ポイントを1段階破壊

# HPバーの表示
    scoreboard players remove @s HP 1
    data modify entity @s CustomNameVisible set value 1b
    execute if score @s HP matches 4 run data modify entity @s CustomName set value '[{"text":"████","color":"green"},{"text":"█","color":"dark_gray"}]'
    execute if score @s HP matches 3 run data modify entity @s CustomName set value '[{"text":"███","color":"yellow"},{"text":"██","color":"dark_gray"}]'
    execute if score @s HP matches 2 run data modify entity @s CustomName set value '[{"text":"██","color":"yellow"},{"text":"███","color":"dark_gray"}]'
    execute if score @s HP matches 1 run data modify entity @s CustomName set value '[{"text":"█","color":"red"},{"text":"████","color":"dark_gray"}]'
    execute if score @s HP matches 0 run data modify entity @s CustomName set value '[{"text":"█████","color":"dark_gray"}]'

# アイテムドロップ
    loot spawn ~ ~ ~ loot asset:material/401.sweet_berries
    playsound block.sweet_berry_bush.pick_berries master @a

# 見た目の変更
    execute if score @s HP matches 3 run function asset:material/401.sweet_berries/collect/stage/2
    execute if score @s HP matches ..0 run function asset:material/401.sweet_berries/collect/death