##########
#>
#

# Knockbackを受けるモブの座標取得とY方向Motion指定
    data modify storage mob:temp Pos set from entity @s Pos
    data modify storage mob:temp Pos[1] set value 0.00032
    execute store result score $KnockbackX Temporary run data get storage mob:temp Pos[0] 100000
    execute store result score $KnockbackY Temporary run data get storage mob:temp Pos[1] 100000
    execute store result score $KnockbackZ Temporary run data get storage mob:temp Pos[2] 100000
# プレイヤーから少し進んでAECを召喚
    execute rotated as @p run summon area_effect_cloud ^ ^ ^0.0004 {Tags:["Knockback"]}
    data modify storage mob:temp AECPos set from entity @e[type=area_effect_cloud,tag=Knockback,sort=nearest,limit=1] Pos
# AECの座標取得
    execute store result score $AECX Temporary run data get storage mob:temp AECPos[0] 100000
    execute store result score $AECZ Temporary run data get storage mob:temp AECPos[2] 100000
# ベクトル計算と補正
    scoreboard players operation $KnockbackX Temporary -= $AECX Temporary
    scoreboard players operation $KnockbackZ Temporary -= $AECZ Temporary
    scoreboard players operation $KnockbackX Temporary *= $XPower Temporary
    scoreboard players operation $KnockbackY Temporary *= $YPower Temporary
    scoreboard players operation $KnockbackZ Temporary *= $XPower Temporary
# Motionの適用
    execute store result storage mob:temp Pos[0] double -0.0001 run scoreboard players get $KnockbackX Temporary
    execute store result storage mob:temp Pos[1] double 0.0001 run scoreboard players get $KnockbackY Temporary
    execute store result storage mob:temp Pos[2] double -0.0001 run scoreboard players get $KnockbackZ Temporary
    data modify entity @s Motion set from storage mob:temp Pos
# リセット
    data remove storage mob:temp AECPos
    data remove storage mob:temp Pos
    scoreboard players reset $KnockbackX
    scoreboard players reset $KnockbackY
    scoreboard players reset $KnockbackZ
    scoreboard players reset $AECX
    scoreboard players reset $AECZ
    schedule function mob:on_hurt/knockback/reset 1t