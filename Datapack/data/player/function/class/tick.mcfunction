#> player:class/tick
# 職業のtick処理

# 職業変更トリガー
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 1 run function player:class/hunter/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 2 run function player:class/fighter/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 3 run function player:class/paladin/join
    execute if entity @s[tag=ClassLectern] if score @s ChangeClass matches 4 run function player:class/wizard/join

# ハンター「会心の極意」用のタイマー
    execute if score @s HunterCrtTimer matches 1.. run function player:class/hunter/passive/skill4/timer

# パラディン「グレイスシールド」用のタイマー
    execute if score @s MaxShield matches 1.. run function player:class/paladin/passive/skill3/timer