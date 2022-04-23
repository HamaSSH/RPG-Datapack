# ホーミングする敵の特定
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] run tag @s add Target
# Rotationの誤差±10度以上の敵はタグ剥奪
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] positioned ^ ^ ^-10 rotated ~10 ~ positioned ^1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] positioned ^ ^ ^-10 rotated ~-10 ~ positioned ^-1000.1 ^ ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] positioned ^ ^ ^-10 rotated ~ ~10 positioned ^ ^1000.1 ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run tag @s remove Target
    execute positioned ^ ^ ^10 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..10] positioned ^ ^ ^-10 rotated ~ ~-10 positioned ^ ^-1000.1 ^ positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run tag @s remove Target
# ホーミング対象を絞る
    tag @e[type=#mob:mobs,tag=Enemy,tag=Target,tag=!HurtTime,distance=..20,sort=nearest,limit=1] add HomingTarget
    execute positioned ^ ^ ^10 run tag @e[tag=Target,distance=..10] remove Target
# ホーミング対象が居なければ範囲を広めてもう一度
    execute unless entity @e[tag=HomingTarget,distance=..20,limit=1] run function attack:main/wand/homing/target/20