##########
#>
#

# 左クリック弓矢数減算
    scoreboard players remove @s LCArrow 1
# 弓矢の召喚
    execute positioned ~ ~100 ~ positioned ^-0.8 ^ ^ run summon arrow ~ ~ ~ {Tags:["ArrowInit","LCArrow"]}
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^3 {Tags:["Knockback"]}
    execute positioned ~ ~100 ~ positioned ^-0.8 ^ ^ as @e[type=arrow,tag=ArrowInit,distance=..0] run function combat:main/bow/arrow/init
    execute positioned ~ ~100 ~ positioned ^0.8 ^ ^ run summon arrow ~ ~ ~ {Tags:["ArrowInit","LCArrow"]}
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^3 {Tags:["Knockback"]}
    execute positioned ~ ~100 ~ positioned ^0.8 ^ ^ as @e[type=arrow,tag=ArrowInit,distance=..0] run function combat:main/bow/arrow/init
# 演出(弓通常)
    playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1.1