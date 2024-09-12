#> mob:summon/init/hitbox
# モブデータの適用

tag @s add Enemy
tag @s add NameDisplay
tag @s add AutoKill
tag @s add HasVehicle
data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b

# 基本的なデータの設定
    function mob:summon/set_data/_

# scaleの設定
    function mob:summon/set_data/scale