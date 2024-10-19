#> asset:npc/002.loot/summon

summon villager ~ ~ ~ {Tags:["NPCInit"]}

# データの設定
    # ID
        data modify storage asset:npc Data.namespace set value "002.loot"
        data modify storage asset:npc Data.npc_type set value "ShopNPC"
    # 名前
        data modify storage asset:npc Data.CustomName set value '"ソザイ"'

# 店のデータ
    data modify storage asset:npc Data.shop_data append value [1023,1024,1021,1037,1040,1800]
    data modify storage asset:npc Data.shop_data append value [1001,1002,1003,1004,1006,1007]

# データの適用
    execute as @e[type=villager,tag=NPCInit,distance=..0.01,limit=1] run function asset:npc/set_data with storage asset:npc Data