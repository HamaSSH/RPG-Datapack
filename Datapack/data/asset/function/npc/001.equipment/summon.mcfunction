#> asset:npc/001.equipment/summon
# 村人NPCの召喚

summon villager ~ ~ ~ {Tags:["NPCInit"]}

# データの設定
    # ID
        data modify storage asset:npc Data.namespace set value "001.equipment"
        data modify storage asset:npc Data.npc_type set value "ShopNPC"
    # 名前
        data modify storage asset:npc Data.CustomName set value '"ソウビ"'

# 店データ
    data modify storage asset:npc Data.shop_data append value [2101,2201,2301,2401,2501,2601]
    data modify storage asset:npc Data.shop_data append value [3101,3201,3301,3401,3602,3603]
    data modify storage asset:npc Data.shop_data append value [2102,2202,2302,2402,2502,2602]

# データの適用
    execute as @e[type=villager,tag=NPCInit,distance=..0.01,limit=1] run function asset:npc/set_data with storage asset:npc Data