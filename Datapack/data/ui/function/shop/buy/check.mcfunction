#> ui:shop/buy/check
# アイテム購入できるか再度確認

# 購入するアイテムのデータ取得
    $loot replace block 0 0 0 container.0 loot asset:item/$(ID)
    data modify storage ui: GiveItem set from block 0 0 0 Items[{Slot:0b}]

# 再度買えるかどうか判定して購入
    execute store result score $Price Temporary run data get storage ui: GiveItem.components.minecraft:custom_data.price
    scoreboard players operation $Price Temporary *= $Count Temporary
    execute on vehicle on vehicle on attacker run scoreboard players operation $PlayerGold Temporary = @s Gold
    execute if score $Price Temporary <= $PlayerGold Temporary run function ui:shop/buy/_
    execute unless score $Price Temporary <= $PlayerGold Temporary run data remove storage ui: GiveItem

# 効果音
    execute unless score $Price Temporary <= $PlayerGold Temporary run playsound resource:entity.villager.no3 master @a ~ ~ ~ 1 1.1
    execute unless score $Price Temporary <= $PlayerGold Temporary run tag @s remove PlaysoundOnce

# ページの移動
    scoreboard players set @s UIPage 0

# リセット
    data remove storage ui: BuyItem
    scoreboard players reset $Price Temporary
    scoreboard players reset $Count Temporary
    scoreboard players reset $PlayerGold Temporary