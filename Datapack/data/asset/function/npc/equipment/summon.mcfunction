#> asset:npc/equipment/summon
# 村人NPCの召喚

summon villager ~ ~ ~ {Tags:["NPCInit"],UUID:[I;2106,5308417,1,1]}

# データの設定
    # ID
        data modify storage asset:npc Data.namespace set value "equipment"
        data modify storage asset:npc Data.npc_type set value "ShopNPC"
    # 名前
        data modify storage asset:npc Data.CustomName set value '"ブグ"'

# 店データ
    data modify storage asset:npc Data.shop_data append value ["wooden_dagger","wooden_sword","wooden_spear","wooden_hammer","wooden_wand","wooden_bow"]
    data modify storage asset:npc Data.shop_data append value ["leather_helmet","leather_chestplate","leather_leggings","leather_boots","ring_of_power","ring_of_wisdom"]

# データの適用
    execute as @e[type=villager,tag=NPCInit,distance=..0.01,limit=1] run function asset:npc/set_data with storage asset:npc Data