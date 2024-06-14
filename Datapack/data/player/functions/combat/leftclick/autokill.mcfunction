#> player:combat/leftclick/autokill
# 数tick後に左クリック用エンティティkill

scoreboard players remove @s Timer 1
execute if score @s Timer matches ..-3 run function mob:manager/vanish