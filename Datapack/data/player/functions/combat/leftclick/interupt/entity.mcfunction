#> player:combat/leftclick/interupt/entity
# 視点先に右クリック可能なエンティティがいれば左クリック不可

# 右クリックで干渉できるエンティティがいればタグ付け
    execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[type=#lib:every_mob,tag=Enemy,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] run return fail
    execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[type=#lib:every_mob,tag=InteruptLeftClick,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] run tag @p[tag=CanLeftClick] remove CanLeftClick

# リーチの限界まで再帰
    execute if entity @s[tag=CanLeftClick] if entity @s[distance=..3.2] positioned ^ ^ ^0.4 run function player:combat/leftclick/interupt/entity