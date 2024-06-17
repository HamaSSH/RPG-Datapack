#> player:combat/main/bow/arrow/summon/init
# 左クリックで召喚する矢の初期化

# 弓矢と放ったプレイヤーの紐づけ
    data modify entity @s Owner set from entity @p[tag=Shooter] UUID

# 初期化
    function player:combat/main/bow/arrow/init
    execute if score $MotionPower Temporary matches 250.. run tag @s add Charged

# 矢を飛ばす
    execute rotated as @p[tag=Shooter] run function lib:motion/apply
    damage @s 0.0 generic