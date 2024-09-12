#> mob:summon/init/_
# モブデータの適用

tag @s add Enemy

# 装備の設定
    data modify storage asset:mob ArmorItems set value []
    data modify storage asset:mob ArmorItems append from storage asset:mob Data.Feet
    data modify storage asset:mob ArmorItems append from storage asset:mob Data.Legs
    data modify storage asset:mob ArmorItems append from storage asset:mob Data.Chest
    data modify storage asset:mob ArmorItems append from storage asset:mob Data.Head
    data modify storage asset:mob HandItems set value []
    data modify storage asset:mob HandItems append from storage asset:mob Data.Mainhand
    data modify storage asset:mob HandItems append from storage asset:mob Data.Offhand

# 基本的なデータの設定
    function mob:summon/set_data/_

# namespace関連の設定
    data modify storage asset:mob ArmorItems[3].components.minecraft:custom_data.namespace set from storage asset:mob Data.namespace
    function mob:summon/set_data/loot_table with storage asset:mob ArmorItems[3].components.minecraft:custom_data

# 装備の適用
    data modify entity @s ArmorItems set from storage asset:mob ArmorItems
    data modify entity @s HandItems set from storage asset:mob HandItems

# ステータススコア
    execute store result score @s MobID run data get storage asset:mob Data.MobID
    execute store result score @s LVL run data get storage asset:mob Data.Status.LVL
    execute store result score @s HPMax run data get storage asset:mob Data.Status.HP
    execute store result score @s HP run data get storage asset:mob Data.Status.HP
    execute store result score @s DEF run data get storage asset:mob Data.Status.DEF
    execute store result score @s EXP run data get storage asset:mob Data.Status.EXP
    execute store result score @s Gold run data get storage asset:mob Data.Status.Gold
    function mob:summon/set_data/knockback_resistance
    function mob:summon/set_data/speed
    function mob:summon/set_data/scale

# カスタム当たり判定のモブを乗せる場合の初期化
    execute on passengers if entity @s[tag=Hitbox] run function mob:summon/init/hitbox

# AI乗っ取り用のモブの設定
    execute unless predicate lib:has_controller run tag @s add Controller
    execute unless predicate lib:has_controller unless entity @s[type=silverfish] run team join Enemy
    execute unless predicate lib:has_controller run data modify entity @s Silent set value 1b
    execute on passengers if entity @s[tag=Controller] run function mob:summon/init/controller

# モデル表示用のモブを乗せる場合の初期化
    execute on passengers if entity @s[tag=CustomModel] run function mob:summon/init/custom_model

# リセット
    data remove storage asset:mob Data
    data remove storage asset:mob ArmorItems
    data remove storage asset:mob HandItems
    tag @s remove MobInit