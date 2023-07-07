#> asset:mob/tick
# アセットモブのtick処理呼び出し

execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
function #asset:mob/tick
data remove storage asset:mob ID