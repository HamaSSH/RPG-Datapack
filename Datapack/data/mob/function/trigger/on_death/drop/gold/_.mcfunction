#> mob:trigger/on_death/drop/gold/_
# ゴールドドロップ

# LUKで+LUK/4%ブースト
    scoreboard players operation $GoldBoost Temporary = @s LUK
    scoreboard players add $GoldBoost Temporary 400
    execute store result score $GoldDrop Temporary run data get storage mob:temp data.gold
    scoreboard players operation $GoldDrop Temporary *= $GoldBoost Temporary
    scoreboard players operation $GoldDrop Temporary /= #400 Constant

# ブレ
    function mob:trigger/on_death/drop/gold/blur

# 額面ごとに分割
    scoreboard players operation $100G Temporary = $GoldDrop Temporary
    scoreboard players operation $100G Temporary /= #100 Constant
    scoreboard players operation $10G Temporary = $GoldDrop Temporary
    scoreboard players operation $10G Temporary %= #100 Constant
    scoreboard players operation $10G Temporary /= #10 Constant
    scoreboard players operation $1G Temporary = $GoldDrop Temporary
    scoreboard players operation $1G Temporary %= #10 Constant

# アイテムとしてドロップ
    loot spawn ~ ~ ~ loot mob:gold

# リセット
    scoreboard players reset $GoldBoost Temporary
    scoreboard players reset $GoldDrop Temporary
    scoreboard players reset $100G Temporary
    scoreboard players reset $10G Temporary
    scoreboard players reset $1G Temporary
