#> asset:magic/5302.flash/trigger/_
# 魔法発動時の処理

execute positioned ~ ~1.2 ~ if block ~ ~ ~ #lib:no_collision run function asset:magic/5302.flash/tick/electro/summon/check
execute at @n[type=armor_stand,tag=5302.Flash,tag=5302.CanBeTPd,distance=..10,sort=furthest] run tp @s ~ ~ ~
execute as @e[type=armor_stand,tag=5302.Flash,tag=5302.CanBeTPd,distance=..10] run tag @s remove 5302.CanBeTPd

# 演出
    execute positioned as @s run playsound entity.shulker.shoot master @a ~ ~ ~ 0.3 1.7
    execute positioned as @s run playsound block.pumpkin.carve master @a ~ ~ ~ 0.6 1.4