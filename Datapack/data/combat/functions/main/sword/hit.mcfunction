##########
#>
#

# Hitタグのついたエンティティへの攻撃
    # function combat:main/hit
# Hitタグのついたエンティティの周囲も攻撃
    execute at @s positioned ~-0.75 ~ ~-0.75 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0.5,dy=0.5,dz=0.5,sort=nearest,limit=5] run function combat:main/hit
# 当たり判定可視化
    # execute at @s run particle wax_on ~-0.75 ~ ~-0.75 0 0 0 0 10 force
    # execute at @s run particle wax_off ~0.75 ~1.6 ~0.75 0 0 0 0 10 force