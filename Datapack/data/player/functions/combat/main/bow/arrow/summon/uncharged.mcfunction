#> player:combat/main/bow/arrow/summon/uncharged
# 矢の召喚(威力はチャージ率による)

scoreboard players remove @s ArrowLC 1

# 弓矢の召喚
    tag @s add Shooter
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge0=true}}] run scoreboard players set $MotionPower Temporary 40
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge1=true}}] run scoreboard players set $MotionPower Temporary 80
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge2=true}}] run scoreboard players set $MotionPower Temporary 150
    execute positioned ~ ~1.52 ~ summon arrow run function player:combat/main/bow/arrow/summon/init
    tag @s remove Shooter

# 演出
    function player:combat/main/bow/sfx/_
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge0=true}}] run playsound entity.arrow.shoot master @a ~ ~ ~ 1 0.8
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge1=true}}] run playsound entity.arrow.shoot master @a ~ ~ ~ 1 0.9
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge2=true}}] run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1.0

# もし矢筒を持っていたら矢筒使用処理
    execute if entity @s[tag=QuiverEquipped] run tag @s add UsedQuiver
    execute if data storage player: Inventory[{id:"minecraft:arrow",tag:{Quiver:{}},Count:2b}] run tag @s remove UsedQuiver
    execute if entity @s[tag=UsedQuiver] run function player:combat/main/bow/quiver/_