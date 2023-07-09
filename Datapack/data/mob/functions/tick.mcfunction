#> mob:tick
# モブ関連のtick処理

# アセットのtick処理呼び出し
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    function #asset:mob/tick

# リセット
    data remove storage asset:mob ID