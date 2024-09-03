#> asset:magic/5203.bubble_blast/trigger/summon
# バブル弾の召喚

# 召喚位置と向きをランダムに
    execute store result storage magic: pos.forward int 1 run random value 1..9
    execute store result storage magic: pos.yaw int 1 run random value -20..20
    execute store result storage magic: pos.pitch int 1 run random value -8..8

# text_displayの召喚
    summon text_display ~ ~ ~ {Glowing:1b,billboard:"center",teleport_duration:1,alignment:"center",text:'"\\uF808\\uF000"',background:16777215,Tags:["BubbleInit"]}
    execute as @e[type=text_display,tag=BubbleInit,distance=..0.01] run function asset:magic/5203.bubble_blast/trigger/init with storage magic: pos

# リセット
    data remove storage magic: pos