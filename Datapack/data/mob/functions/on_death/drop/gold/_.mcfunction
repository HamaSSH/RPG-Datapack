#> mob:on_death/drop/gold/_
# モブ死亡時のゴールドドロップ


# ゴールドドロップ量の決定
    scoreboard players operation $GoldDrop Temporary = @s Gold
    scoreboard players operation $LastAttacker Temporary = $PlayerID Temporary
    execute as @a if score @s PlayerID = $LastAttacker Temporary run function player:status/luk/gold_boost

# ゴールドドロップ量ブレの設定
    function mob:on_death/drop/gold/blur

# ゴールド用アイテムのドロップ
    scoreboard players operation $100G Temporary = $GoldDrop Temporary
    scoreboard players operation $100G Temporary /= #100 Constant
    scoreboard players operation $10G Temporary = $GoldDrop Temporary
    scoreboard players operation $10G Temporary %= #100 Constant
    scoreboard players operation $10G Temporary /= #10 Constant
    scoreboard players operation $1G Temporary = $GoldDrop Temporary
    scoreboard players operation $1G Temporary %= #10 Constant
    loot spawn ~ ~ ~ loot mob:gold

# リセット
    scoreboard players reset $LastAttacker Temporary
    scoreboard players reset $GoldDrop Temporary
    scoreboard players reset $100G Temporary
    scoreboard players reset $10G Temporary
    scoreboard players reset $1G Temporary