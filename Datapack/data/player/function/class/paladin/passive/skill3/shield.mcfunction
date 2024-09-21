#> player:class/paladin/passive/skill3/shield
# パラディンの盾を補充

scoreboard players add @s Shield 1
function player:class/paladin/passive/skill3/init

# 演出
    playsound resource:block.smithing_table.smithing_table2 master @s ~ ~ ~ 0.2 1.2