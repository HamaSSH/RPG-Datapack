#> asset:npc/tool/summon

summon villager ~ ~ ~ {Tags:["NPCInit"]}

# データの設定
    # ID
        data modify storage asset:npc Data.namespace set value "tool"
        data modify storage asset:npc Data.npc_type set value "ShopNPC"
    # 名前
        data modify storage asset:npc Data.CustomName set value '"ツール"'

# 店のデータ
    data modify storage asset:npc Data.shop_data append value [4101,4102,4103,4401,4501,4502]

# データの適用
    execute as @e[type=villager,tag=NPCInit,distance=..0.01,limit=1] run function asset:npc/set_data with storage asset:npc Data