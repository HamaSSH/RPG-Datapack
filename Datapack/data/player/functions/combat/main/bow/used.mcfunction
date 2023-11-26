#> player:combat/main/bow/used
# 弓の使用を検知した際の処理

# 撃った弓矢に対する初期化 #TODO: 弓矢の初期化
    execute positioned ~ ~1.52 ~ as @e[type=arrow,distance=..0.01] run data modify entity @s pickup set value 0b
    execute positioned ~ ~1.52 ~ as @e[type=arrow,distance=..0.01] run data modify entity @s PierceLevel set value 5

# 矢筒の中の弓矢が0になったら矢筒をにんじん棒に戻す
    execute if entity @s[tag=QuiverEquipped] run tag @s add UsedQuiver
    execute if entity @s[tag=UsedQuiver] run function player:combat/main/bow/quiver/_

# リセット
    scoreboard players reset @s BowCharge
    scoreboard players reset @s UsedBow