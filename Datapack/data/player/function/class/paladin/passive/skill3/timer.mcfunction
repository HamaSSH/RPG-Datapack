#> player:class/paladin/passive/skill3/timer
# タイマーのカウント→盾補充

execute unless score @s Shield = @s MaxShield run scoreboard players remove @s ShieldTimer 1
execute unless entity @s[tag=ShieldInit] run function player:class/paladin/passive/skill3/init
execute if score @s ShieldTimer matches ..0 run function player:class/paladin/passive/skill3/shield