#> player:combat/main/sword/aoe
# 範囲攻撃の再現(タグ付け)

# 一番最初にSwordHitタグがついたエンティティの周囲を攻撃
    tag @s remove SwordHit
    execute positioned ~-0.75 ~ ~-0.75 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0.5,dz=0.5] run function mob:hitbox

# 当たり判定可視化
    # execute at @s run particle wax_on ~-0.75 ~ ~-0.75 0 0 0 0 10 force
    # execute at @s run particle wax_off ~0.75 ~1 ~0.75 0 0 0 0 10 force