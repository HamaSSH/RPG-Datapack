#> player:combat/main/bow/used
# 弓の使用を検知した際の処理

# 撃った弓矢に対する初期化 #TODO: 弓矢の初期化
    tag @s add Shooter
    execute positioned ~ ~1.52 ~ as @e[type=arrow,distance=..1] run function player:combat/main/bow/arrow/init
    tag @s remove Shooter

# ため具合に応じて左クリックで矢を打てるようになる
    execute if score @s UsingBow matches 12.. run scoreboard players set @s ArrowLC 2

# 矢筒の中の弓矢が0になったら矢筒をにんじん棒に戻す
    execute if entity @s[tag=QuiverEquipped] run tag @s add UsedQuiver
    execute if data storage player: Inventory[{id:"minecraft:arrow",tag:{Quiver:{}},Count:2b}] run tag @s remove UsedQuiver
    execute if entity @s[tag=UsedQuiver] run function player:combat/main/bow/quiver/_

# リセット
    scoreboard players reset @s UsingBow
    scoreboard players reset @s UsedBow