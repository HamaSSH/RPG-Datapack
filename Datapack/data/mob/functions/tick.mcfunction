#> mob:tick
# モブ関連のtick処理

# アセットのtick処理呼び出し
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    function #asset:mob/tick

# 戦闘中タイマー・無敵時間
    execute if entity @s[tag=InCombat] run scoreboard players remove @s InCombat 1
    execute if entity @s[tag=InCombat,scores={InCombat=0}] run function mob:status/hp/display/reset
    execute if entity @s[tag=HurtTime] run scoreboard players remove @s HurtTime 1
    execute if entity @s[tag=HurtTime,scores={HurtTime=0}] run tag @s remove HurtTime

# 死亡処理
    execute if entity @s[tag=Dead] run kill @s

# リセット
    data remove storage asset:mob ID