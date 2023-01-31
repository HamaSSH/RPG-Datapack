##########
#>
#

# Pos取得用AECの召喚
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1 {Tags:["Knockback"]}
    data modify storage mob:temp Pos set from entity @e[type=area_effect_cloud,tag=Knockback,sort=nearest,limit=1] Pos
# Motionの演算
    execute store result score $KnockbackX Temporary run data get storage mob:temp Pos[0] 1000
    execute store result score $KnockbackY Temporary run data get storage mob:temp Pos[1] 1000
    execute store result score $KnockbackZ Temporary run data get storage mob:temp Pos[2] 1000
    scoreboard players operation $KnockbackX Temporary *= $XPower Temporary
    scoreboard players operation $KnockbackY Temporary *= $YPower Temporary
    scoreboard players operation $KnockbackZ Temporary *= $XPower Temporary
# Motionの適用
    execute store result storage mob:temp Pos[0] double 0.00001 run scoreboard players get $KnockbackX Temporary
    execute store result storage mob:temp Pos[1] double 0.00001 run scoreboard players get $KnockbackY Temporary
    execute store result storage mob:temp Pos[2] double 0.00001 run scoreboard players get $KnockbackZ Temporary
    data modify entity @s Motion set from storage mob:temp Pos
#リセット
    data remove storage mob:temp Pos
    scoreboard players reset $KnockbackX
    scoreboard players reset $KnockbackY
    scoreboard players reset $KnockbackZ
    scoreboard players reset $XPower
    scoreboard players reset $YPower