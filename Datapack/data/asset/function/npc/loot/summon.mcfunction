#> asset:npc/loot/summon

summon villager ~ ~ ~ {Tags:["NPCInit"]}

# データの設定
    # ID
        data modify storage asset:npc Data.namespace set value "loot"
        data modify storage asset:npc Data.npc_type set value "ShopNPC"
    # 名前
        data modify storage asset:npc Data.CustomName set value '"ソザイ"'

# 店のデータ
    data modify storage asset:npc Data.shop_data append value ["rotten_flesh","bone_meal","bone","cocoa_beans","slime_ball","string"]
    data modify storage asset:npc Data.shop_data append value ["small_stone","coal","iron_shards","gold_shards","copper_shards","crystal_shards"]

# データの適用
    execute as @e[type=villager,tag=NPCInit,distance=..0.01,limit=1] run function asset:npc/set_data with storage asset:npc Data