#> combat:main/bow/interaction_timer
# Interactionを一定時間召喚不可に

scoreboard players add @s BowCharge 1
execute if score @s BowCharge matches 5 run tag @a remove RightClickBow
execute if score @s BowCharge matches 5 run scoreboard players reset @s BowCharge