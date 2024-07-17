#> ui:shop/buy/_
# アイテム購入処理

# アイテムを与える
    execute store result storage ui: GiveItem.count byte 1 run scoreboard players get $Count Temporary
    function ui:return_item/give

# 金を払う
    execute on vehicle on vehicle on attacker run scoreboard players operation @s Gold -= $Price Temporary
    execute if score $Count Temporary matches 64 on vehicle on vehicle on attacker run advancement grant @s only asset:achievement/3.1

# 効果音
    playsound resource:entity.villager.yes2 master @a ~ ~ ~ 1
    execute on vehicle on vehicle on attacker run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1.5
    tag @s remove PlaysoundOnce