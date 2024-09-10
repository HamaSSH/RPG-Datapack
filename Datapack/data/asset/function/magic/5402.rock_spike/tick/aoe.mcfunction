#> asset:magic/5402.rock_spike/tick/aoe
# 範囲攻撃

# MagicHitタグが付けられたモブの周りのにもHitタグをつける
    execute positioned ~-0.4 ~-0.4 ~-0.4 as @e[type=#lib:every_mob,tag=Enemy,dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run function mob:hitbox
    tag @s remove MagicHit

# 演出
    function asset:magic/5402.rock_spike/tick/spike/sfx