#> lib:homing/target/20
# ホーミングする敵の特定(Rotation誤差±20度)

# 候補にタグ付け
    execute positioned ^ ^ ^10 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,distance=..10] run tag @s add Target

# Rotationの誤差±20度以上の敵はタグ剥奪
    execute positioned ^ ^ ^10 as @e[type=#lib:every_mob,tag=Target,distance=..10] positioned ^ ^ ^-10 rotated ~20 ~ positioned ^1000 ^ ^ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#lib:every_mob,tag=Target,distance=..10] positioned ^ ^ ^-10 rotated ~-20 ~ positioned ^-1000 ^ ^ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#lib:every_mob,tag=Target,distance=..10] positioned ^ ^ ^-10 rotated ~ ~20 positioned ^ ^1000 ^ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#lib:every_mob,tag=Target,distance=..10] positioned ^ ^ ^-10 rotated ~ ~-20 positioned ^ ^-1000 ^ unless entity @s[distance=..1000] run tag @s remove Target

# ホーミング対象を絞る
    tag @e[type=#lib:every_mob,tag=Enemy,tag=Target,distance=..20,sort=nearest,limit=1] add HomingTarget
    execute positioned ^ ^ ^10 run tag @e[tag=Target,distance=..10] remove Target

# ホーミング対象が居なければ範囲を広めてもう一度
    execute unless entity @e[tag=HomingTarget,distance=..20,limit=1] run function lib:homing/target/30