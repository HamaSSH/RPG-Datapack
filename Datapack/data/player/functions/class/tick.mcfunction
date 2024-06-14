#> player:class/tick
# 職業のtick処理

# 職業変更トリガー
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 1 run function player:class/assassin/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 2 run function player:class/fighter/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 3 run function player:class/knight/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 4 run function player:class/warrior/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 5 run function player:class/wizard/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 6 run function player:class/hunter/join