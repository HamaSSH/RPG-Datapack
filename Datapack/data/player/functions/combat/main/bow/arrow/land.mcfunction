#> player:combat/main/bow/arrow/land
# 矢が着弾したときの処理

playsound entity.arrow.hit master @a ~ ~ ~ 0.5 1
tag @s remove Flying
tag @s add Timer