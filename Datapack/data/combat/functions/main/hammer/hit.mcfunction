##########
#>
#

# Hitタグのついたエンティティへの攻撃
    # function combat:main/hit
# Hitタグのついたエンティティの周囲も攻撃
    execute at @s positioned ~-1 ~ ~-1 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=1,dy=1,dz=1,sort=nearest,limit=6] run function combat:main/hit
# 当たり判定可視化
    # execute at @s run particle wax_on ~-1 ~ ~-1 0 0 0 0 10 force
    # execute at @s run particle wax_off ~1 ~2 ~1 0 0 0 0 10 force