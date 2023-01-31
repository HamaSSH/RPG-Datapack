##########
#>
#

# 死亡アニメーション時の見た目調整
    #execute unless entity @s[tag=CustomModelHurt] run function mob:custom_model/hurt
    execute if entity @s[type=slime] run data modify entity @s Size set value 0
# ルートドロップ
    execute at @s run loot spawn ~ ~ ~ kill @s
# 経験値ドロップ
    execute at @s run function mob:on_death/xp/_
# とどめだ
    kill @s