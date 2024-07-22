#> ui:shop/sell/_
# アイテム売却処理

# スロット内のアイテムの売価を取得
    data modify storage ui: ItemData append from storage ui: NewItems[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    function ui:shop/sell/value

# プレイヤーのGoldに売価を追加
    execute on vehicle on vehicle on attacker run scoreboard players operation @s Gold += $TotalValue Temporary
    execute on vehicle on vehicle on attacker if score @s Gold matches 10000.. run advancement grant @s only asset:achievement/1.5

# 売却情報の表示
    tellraw @p [{"text":"▸計"},{"score":{"name":"$TotalCount","objective":"Temporary"}},{"text":"個のアイテムを売却した。"},{"text":" (+"},{"score":{"name":"$TotalValue","objective":"Temporary"}},{"text":"G","color":"#FFEE59"},{"text":")"}]

# 演出
    execute if score $TotalValue Temporary matches 1.. run playsound resource:entity.villager.yes3 master @p ~ ~ ~ 1 1.1
    execute if score $TotalValue Temporary matches 1.. run playsound entity.experience_orb.pickup master @p ~ ~ ~ 0.25 1.5

# ページを移動する
    scoreboard players set @s UIPage 0

# リセット
    data remove storage ui: NewItems[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    scoreboard players reset $TotalValue Temporary
    scoreboard players reset $TotalCount Temporary