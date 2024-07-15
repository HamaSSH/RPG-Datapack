#> player:class/tick
# 職業のtick処理

# 職業変更トリガー
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 1 run function player:class/hunter/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 2 run function player:class/fighter/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 3 run function player:class/paladin/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 4 run function player:class/wizard/join