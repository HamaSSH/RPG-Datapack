#> player:combat/main/bow/used
# 弓の使用を検知した際の処理

# 撃った弓矢に対する初期化
    tag @s add Shooter
    execute positioned ~ ~1.52 ~ as @e[type=arrow,tag=!ArrowInit,distance=..5] run function player:combat/main/bow/arrow/player

# 矢を放つ際の音
    function player:combat/main/bow/sfx/_

# ため具合に応じて左クリックで矢を打てるようになる
    execute if score @s UsingBow matches 12.. run scoreboard players set @s ArrowLC 2

# ため攻撃を放つ
    execute if score @s BowSkill matches 30.. run function player:combat/main/bow/skill/init

# 矢筒の中の弓矢が0になったら矢筒をにんじん棒に戻す
    execute if entity @s[tag=QuiverEquipped] run tag @s add UsedQuiver
    execute if data storage player: Inventory[{id:"minecraft:arrow",tag:{Quiver:{}},Count:2b}] run tag @s remove UsedQuiver
    execute if entity @s[tag=UsedQuiver] run function player:combat/main/bow/quiver/_

# リセット
    scoreboard players reset @s UsingBow
    scoreboard players reset @s BowSkill
    scoreboard players reset @s UsedBow
    tag @s remove Shooter