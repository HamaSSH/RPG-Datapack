#> player:combat/player_attacked/hitbox
# 絞り込んだモブがカスタム当たり判定だったら

execute if entity @s[tag=Hitbox] on vehicle run function player:combat/player_attacked/detected
execute if entity @s[tag=Hitbox] on vehicle rotated ~ 60 run function lib:motion/knockback
execute unless entity @s[tag=Hitbox] run function player:combat/player_attacked/detected