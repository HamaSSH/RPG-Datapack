##########
#>
#

# メテオライト弓矢
    summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
    summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
    summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
    summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
# 初期処理
    execute store result storage combat:temp arrow.PlayerID int 1 run scoreboard players get @s PlayerID
    execute store result storage combat:temp arrow.dmg_dealt int 1 run scoreboard players get @s dmg_dealt
    data modify storage combat:temp arrow.Owner set from entity @s Owner
    data modify storage combat:temp arrow.Tags set from entity @s Tags
    execute as @e[type=arrow,tag=ArrowInit,distance=..0] run function combat:main/bow/skill/2/meteor/init
# リセット
    data remove storage combat:temp arrow