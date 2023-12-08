#> player:combat/main/bow/arrow/summon/init
# 左クリックで召喚する矢の初期化

# 初期化
    data modify entity @s PierceLevel set value 5

# 弓矢と放ったプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @p[tag=Shooter] PlayerID
    scoreboard players operation @s DmgDealt = @p[tag=Shooter] DEX
    data modify entity @s Owner set from entity @p[tag=Shooter] UUID

# 矢を飛ばす
    execute rotated as @p[tag=Shooter] run function lib:motion/apply
    damage @s 0.0 generic