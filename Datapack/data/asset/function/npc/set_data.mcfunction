#> asset:npc/set_data
# NPCの初期データの設定

# 共通データの設定
    team join NoCollision
    tag @s add InterruptLeftClick
    data modify entity @s PersistenceRequired set value 1b
    data modify entity @s CustomNameVisible set value 1b
    data modify entity @s NoGravity set value 1b
    data modify entity @s Invulnerable set value 1b
    data modify entity @s Silent set value 1b
    data modify entity @s NoAI set value 1b
    data modify entity @s ArmorItems set value [{},{},{},{id:"glass_bottle"}]

# データに応じたタグ
    $tag @s add $(namespace)
    $tag @s add $(npc_type)

# 名前の適用
    data modify entity @s CustomName set from storage asset:npc Data.CustomName
    data modify entity @s ArmorItems[3].components.minecraft:custom_data.namespace set from storage asset:npc Data.namespace

# リセット
    data remove storage asset:npc Data
    tag @s remove NPCInit