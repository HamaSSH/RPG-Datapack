#> asset:magic/tick
# 魔法用エンティティのtick処理呼び出し

execute store result storage asset:magic id int 1 run scoreboard players get @s MagicID
function #asset:magic/tick
data remove storage asset:magic id