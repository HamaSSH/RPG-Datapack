# 関係ないアイテムが入れられた場合返却
    data modify storage menu:temp Data.return set from storage menu:temp Data.Items
    data remove storage menu:temp Data.return[{tag:{menu:{blank:1b}}}]
    execute unless score @s page matches 1 run execute if data storage menu:temp Data.return[] run function menu:return_item/_
# 商品のデータ → storage
    data modify storage menu:temp Data.Goods set from entity @s data.goods
# ページごとのボタンクリック
    clear @p #item:everything{menu:{blank:1b}}
    scoreboard players add @s page 0
    execute if score @s page matches 0 run function menu:shop/page
    execute if score @s page matches 1 run function menu:shop/sell/page
    execute if score @s page matches 2 run function menu:shop/buy/page
    execute if score @s page matches 10.. run scoreboard players remove @s page 10
# メニュー更新
    data modify storage menu:temp Data.buy set from entity @s data.buy
    execute if score @s page matches 0 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:shop/refresh
    execute if score @s page matches 1 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:shop/sell/refresh
    execute if score @s page matches 2 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:shop/buy/refresh
# メニュー内の操作音
    execute unless score $ButtonClicked Temporary matches 1 run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.3 2.0
    scoreboard players reset $ButtonClicked
# 二重更新を防ぐためにメニュー管理マーカー更新
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
    data modify entity @s data.Items set from storage menu:temp Data.Items
# リセット
    scoreboard players reset $BuyPrice
    scoreboard players reset $SellPrice
    scoreboard players reset $Count
    scoreboard players reset $TotalSellPrice
    scoreboard players reset $TotalCount