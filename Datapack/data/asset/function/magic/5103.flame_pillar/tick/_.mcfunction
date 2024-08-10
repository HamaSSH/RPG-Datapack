#> asset:magic/5103.flame_pillar/tick/_
# 魔法のtick時の処理

scoreboard players add @s 5103.Tick 1
particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:2} ~ ~ ~ 0.3 0 0.3 0 3 force

# OriginであればPillarを召喚したり
    execute if entity @s[tag=5103.PillarOrigin] run function asset:magic/5103.flame_pillar/tick/pillar/origin

# 10tick後で爆発
    execute if entity @s[tag=5103.Pillar] run function asset:magic/5103.flame_pillar/tick/pillar/_