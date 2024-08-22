#> player:combat/leftclick/summon
# 左クリック用エンティティの召喚

tag @s add CanLeftClick

# 左クリックを無効にする場合
    execute anchored eyes positioned ^ ^ ^ run function player:combat/leftclick/interupt/container
    execute anchored eyes positioned ^ ^ ^ run function player:combat/leftclick/interupt/entity
    execute if entity @s[tag=UsingUI] run tag @s remove CanLeftClick
    execute if score @s UsingBow matches 1.. run tag @s remove CanLeftClick

# 全方位を囲む
    execute anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #lib:air if entity @s[tag=CanLeftClick] run function player:combat/leftclick/outside_block

# NoCollisionのブロック内にいる場合
    execute anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #lib:air if entity @s[tag=CanLeftClick] run summon vex ~ ~-0.6 ~ {Silent:1b,NoAI:1b,Health:1024f,Team:"NoCollision",Tags:["AutoKill","LeftClick"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:10,show_particles:0b}],attributes:[{id:"generic.max_health",base:1024}]}

# リセット
    tag @s remove CanLeftClick
    advancement revoke @s only player:combat/leftclick/summon