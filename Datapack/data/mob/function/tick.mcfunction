#> mob:tick
# モブ関連のtick処理

# アセットのtick処理呼び出し
    data modify storage asset:mob namespace set from entity @s ArmorItems[3].components.minecraft:custom_data.namespace
    function asset:mob/.manager/tick with storage asset:mob
    data remove storage asset:mob namespace

# 戦闘中タイマー・無敵時間
    execute if score @s InCombat matches 1.. run scoreboard players remove @s InCombat 1
    execute if score @s InCombat matches 0 run function mob:status/hp/display/reset
    execute if score @s HurtTime matches 1.. run scoreboard players remove @s HurtTime 1
    execute if score @s HurtTime matches 0 run tag @s remove HurtTime
    execute if score @s HurtTime matches 0 run scoreboard players reset @s HurtTime

# 落下ダメージ
    execute unless data entity @s {FallDistance:0.0f} store result score @s FallDistance run data get entity @s FallDistance
    execute if data entity @s {OnGround:1b} if score @s FallDistance matches 3.. run function mob:on_hurt/natural/fall

# エフェクトダメージ
    execute if data entity @s {HurtTime:9s} if predicate lib:is_on_fire run function mob:on_hurt/natural/fire
    execute if data entity @s {HurtTime:9s} if predicate lib:has_effect/poison run function mob:on_hurt/natural/poison

# 死亡処理
    execute if entity @s[tag=Dead] run kill @s