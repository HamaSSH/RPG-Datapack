# メテオライト弓矢
    summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
    summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
    summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
    summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
# 初期処理
    execute store result storage attack:temp arrow.PlayerID int 1 run scoreboard players get @s PlayerID
    execute store result storage attack:temp arrow.dmg_dealt int 1 run scoreboard players get @s dmg_dealt
    data modify storage attack:temp arrow.Owner set from entity @s Owner
    data modify storage attack:temp arrow.Tags set from entity @s Tags
    execute as @e[type=arrow,tag=ArrowInit,distance=..0] run function attack:main/bow/skill/2/meteor/init
# リセット
    data remove storage attack:temp arrow