#> player:combat/main/bow/arrow/summon/charged
# 矢の召喚(威力100%)

scoreboard players remove @s ArrowLC 1

# 弓矢の召喚
    tag @s add Shooter
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge3=true}}] run scoreboard players set $MotionPower Temporary 300
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge4=true}}] run scoreboard players set $MotionPower Temporary 350
    execute positioned ~ ~1.42 ~ positioned ^ ^ ^0.1 summon arrow run function player:combat/main/bow/arrow/summon/init {yaw:0}
    execute if score @s Multishot matches 1 positioned ~ ~1.42 ~ positioned ^ ^ ^0.1 summon arrow run function player:combat/main/bow/arrow/summon/init {yaw:10}
    execute if score @s Multishot matches 1 positioned ~ ~1.42 ~ positioned ^ ^ ^0.1 summon arrow run function player:combat/main/bow/arrow/summon/init {yaw:-10}
    execute if score @s Multishot matches 2 positioned ~ ~1.42 ~ positioned ^ ^ ^0.1 summon arrow run function player:combat/main/bow/arrow/summon/init {yaw:20}
    execute if score @s Multishot matches 2 positioned ~ ~1.42 ~ positioned ^ ^ ^0.1 summon arrow run function player:combat/main/bow/arrow/summon/init {yaw:-20}
    tag @s remove Shooter

# 演出
    function player:combat/main/bow/sfx/_
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge3=true}}] run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1.1
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge4=true}}] run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1.3

# もし矢筒を持っていたら矢筒使用処理
    execute if entity @s[tag=QuiverEquipped] run tag @s add UsedQuiver
    execute if data storage player: Inventory[{id:"minecraft:arrow",tag:{Quiver:{}},count:2}] run tag @s remove UsedQuiver
    execute if entity @s[tag=UsedQuiver] run function player:combat/main/bow/quiver/_