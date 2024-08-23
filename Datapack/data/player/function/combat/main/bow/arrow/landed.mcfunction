#> player:combat/main/bow/arrow/landed
# 矢が着弾したときの処理

playsound entity.arrow.hit master @a ~ ~ ~ 0.1 1
tag @s remove Flying
tag @s add Timer