#> mob:on_hurt/element/thunder/find_target
# チェイン先のモブにぶつかるまで再帰

# 演出
    particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.133],scale:1} ~ ~0.5 ~ 0.1 0.1 0.1 0.1 3 force
    particle crit ~ ~0.5 ~ 0.01 0.01 0.01 0.1 2 force

# 再帰
    execute unless entity @n[type=#lib:every_mob,tag=ChainTarget,distance=..0.3] positioned ^ ^ ^0.2 run function mob:on_hurt/element/thunder/find_target
    execute as @n[type=#lib:every_mob,tag=ChainTarget,distance=..0.3] run function mob:on_hurt/element/thunder/hit