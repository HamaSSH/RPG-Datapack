#> asset:npc/food/summon

summon villager ~ ~ ~ {Tags:["NPCInit"]}

# データの設定
    # ID
        data modify storage asset:npc Data.namespace set value "food"
        data modify storage asset:npc Data.npc_type set value "ShopNPC"
    # 名前
        data modify storage asset:npc Data.CustomName set value '"タベモノ"'

# 店のデータ
    data modify storage asset:npc Data.shop_data append value ["cooked_cod","bread","cookie","chocolate_cookie","honey_apple","vegetable_soup"]

# データの適用
    execute as @e[type=villager,tag=NPCInit,distance=..0.01,limit=1] run function asset:npc/set_data with storage asset:npc Data