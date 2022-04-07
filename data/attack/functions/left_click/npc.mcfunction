# もし視点の先にNPCがいればタグ付け
    tag @s add this
    execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=villager,tag=NPC,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run tag @a[tag=this,limit=1] add DisableLC
    tag @s remove this
# リーチの限界まで再帰
    execute unless entity @s[tag=DisableLC] if entity @s[distance=..4] positioned ^ ^ ^0.3 run function attack:left_click/npc