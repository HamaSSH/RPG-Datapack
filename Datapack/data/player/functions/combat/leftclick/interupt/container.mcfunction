#> player:combat/leftclick/interupt/container
# 視点先に右クリック可能なブロックがあれば左クリック不可

# 右クリックで干渉できるブロックがあればタグ付け
    execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[type=#lib:every_mob,tag=Enemy,dx=0] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run return fail
    execute if block ~ ~ ~ #lib:interferable run tag @s remove CanLeftClick

# リーチの限界まで再帰
    execute if entity @s[tag=CanLeftClick] if entity @s[distance=..4.75] positioned ^ ^ ^0.25 run function player:combat/leftclick/interupt/container