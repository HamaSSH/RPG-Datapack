#> mob:tick
# モブ関連のtick処理

# アセットのtick処理呼び出し
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    function #asset:mob/tick
    data remove storage asset:mob ID

# 戦闘中タイマー・無敵時間
    execute if entity @s[tag=InCombat] run scoreboard players remove @s InCombat 1
    execute if entity @s[tag=InCombat,scores={InCombat=0}] run function mob:status/hp/display/reset
    execute if entity @s[tag=HurtTime] run scoreboard players remove @s HurtTime 1
    execute if entity @s[tag=HurtTime,scores={HurtTime=0}] run tag @s remove HurtTime

# 落下ダメージ
    execute unless data entity @s {FallDistance:0.0f} store result score @s FallDistance run data get entity @s FallDistance
    execute if data entity @s {OnGround:1b} if score @s FallDistance matches 3.. run function mob:on_hurt/fall

# 死亡処理
    execute if entity @s[tag=Dead] run kill @s