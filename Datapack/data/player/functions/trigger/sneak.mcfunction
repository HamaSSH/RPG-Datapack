#> player:trigger/sneak
# スニーク時の処理

execute unless predicate lib:is_sneaking run scoreboard players reset @s SneakTime
execute unless predicate player:hold_weapon/not_bow run scoreboard players reset @s SneakTime
execute if score @s SneakTime matches 30 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score @s SkillTimer matches 1.. run scoreboard players reset @s SneakTime