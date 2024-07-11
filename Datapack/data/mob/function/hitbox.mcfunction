#> mob:hitbox
# カスタム当たり判定用の処理

execute if entity @s[tag=Hitbox] on vehicle run tag @s add Hit
execute if entity @s[tag=Hitbox] run tag @s remove Hit
execute unless entity @s[tag=Hitbox] run tag @s add Hit
execute if predicate mob:is_invincible run tag @s remove Hit