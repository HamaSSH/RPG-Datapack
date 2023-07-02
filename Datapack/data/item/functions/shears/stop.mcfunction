#> item:shears/stop
# ハサミの右クリックをやめたことの検知

scoreboard players add @s UsingShears2 1
execute if score @s UsingShears < @s UsingShears2 run tag @s remove UsingShears
execute unless entity @s[tag=UsingShears] run scoreboard players reset @s UsingShears
execute unless entity @s[tag=UsingShears] run scoreboard players reset @s UsingShears2