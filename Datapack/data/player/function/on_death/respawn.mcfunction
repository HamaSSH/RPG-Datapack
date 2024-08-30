#> player:on_death/respawn
# リスポーン時の処理

effect clear @a
effect give @s darkness 3 0 true
effect give @s blindness 3 0 true
tag @s remove Respawn