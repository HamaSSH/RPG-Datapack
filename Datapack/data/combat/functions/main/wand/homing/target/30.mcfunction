# ホーミングする敵の特定
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] run tag @s add Target
# Rotationの誤差±30度以上の敵はタグ剥奪
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] positioned ^ ^ ^-10 rotated ~30 ~ positioned ^1000 ^ ^ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] positioned ^ ^ ^-10 rotated ~-30 ~ positioned ^-1000 ^ ^ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] positioned ^ ^ ^-10 rotated ~ ~30 positioned ^ ^1000 ^ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] positioned ^ ^ ^-10 rotated ~ ~-30 positioned ^ ^-1000 ^ unless entity @s[distance=..1000] run tag @s remove Target
# ホーミング対象を絞る
    tag @e[type=#mob:mobs,tag=Enemy,tag=Target,tag=!HurtTime,distance=..20,sort=nearest,limit=1] add HomingTarget
    execute positioned ^ ^ ^10 run tag @e[tag=Target,distance=..10] remove Target