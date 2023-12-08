#> player:combat/main/bow/arrow/summon/charged
# 矢の召喚(威力100%)

scoreboard players remove @s ArrowLC 1

# 弓矢の召喚 #TODO: プレイヤーの素のattack_speedを下げよう
    tag @s add Shooter
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge3=true}}] run scoreboard players set $MotionPower Temporary 250
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge4=true}}] run scoreboard players set $MotionPower Temporary 300
    execute anchored eyes positioned ^ ^ ^ summon arrow run function player:combat/main/bow/arrow/summon/init
    tag @s remove Shooter

# 演出
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge3=true}}] run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1.1
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge4=true}}] run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1.3