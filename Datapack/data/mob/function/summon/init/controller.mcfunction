#> mob:summon/init/controller
# モブデータの適用

tag @s add NameDisplay
tag @s add AutoKill
tag @s add HasVehicle
data modify entity @s Silent set value 1b

# 基本的なデータの設定
    function mob:summon/set_data/_