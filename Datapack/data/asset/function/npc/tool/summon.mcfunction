#> asset:npc/tool/summon

summon villager ~ ~ ~ {Tags:["NPCInit"]}

# データの設定
    # ID
        data modify storage asset:npc Data.namespace set value "tool"
        data modify storage asset:npc Data.npc_type set value "ShopNPC"
    # 名前
        data modify storage asset:npc Data.CustomName set value '"ツール"'

# 店のデータ
    data modify storage asset:npc Data.shop_data append value ["wooden_pickaxe","stone_pickaxe","iron_pickaxe","golden_hoe","shears","fishing_rod"]

# データの適用
    execute as @e[type=villager,tag=NPCInit,distance=..0.01,limit=1] run function asset:npc/set_data with storage asset:npc Data