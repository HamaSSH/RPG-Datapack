#> player:trigger/underwater/exit
# 水中から出た際の処理

tag @s remove Underwater

# 水中検知が再度できるようにattributeリセット
    attribute @s oxygen_bonus base set 0