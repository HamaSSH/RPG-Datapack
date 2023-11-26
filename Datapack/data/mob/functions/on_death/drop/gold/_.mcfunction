#> mob:on_death/drop/gold/_
# モブ死亡時のゴールドドロップ


# ゴールドドロップ量の決定
    scoreboard players operation $GoldDrop Temporary = @s Gold
    scoreboard players operation $LastAttacker Temporary = @s PlayerID
    execute as @a if score @s PlayerID = $LastAttacker Temporary run function player:status/luk/gold_boost

# ゴールドドロップ量ブレの設定
    function mob:on_death/drop/gold/blur

# ゴールド用アイテムのドロップ
    scoreboard players operation $GoldBlock Temporary = $GoldDrop Temporary
    scoreboard players operation $GoldBlock Temporary /= #100 Constant
    scoreboard players operation $GoldIngot Temporary = $GoldDrop Temporary
    scoreboard players operation $GoldIngot Temporary %= #100 Constant
    scoreboard players operation $GoldIngot Temporary /= #10 Constant
    scoreboard players operation $GoldNugget Temporary = $GoldDrop Temporary
    scoreboard players operation $GoldNugget Temporary %= #10 Constant
    loot spawn ~ ~ ~ loot mob:gold

# リセット
    scoreboard players reset $LastAttacker Temporary
    scoreboard players reset $GoldDrop Temporary
    scoreboard players reset $GoldBlock Temporary
    scoreboard players reset $GoldIngot Temporary
    scoreboard players reset $GoldNugget Temporary