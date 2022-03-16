# 強化可能アイテムが入れられたら配置
    data modify storage menu:temp Data.upgrading append from storage menu:temp Data.Items[{tag:{menu:{upgradable:1b}}}]
    execute if data storage menu:temp Data.upgrading[] run function menu:upgrading/put_items/_
# 関係ないアイテムが入れられた場合返却
    data modify storage menu:temp Data.return set from storage menu:temp Data.Items
    data remove storage menu:temp Data.return[{tag:{menu:{blank:1b}}}]
    data remove storage menu:temp Data.return[{tag:{menu:{upgradable:1b}}}]
    execute if data storage menu:temp Data.return[] run function menu:return_item/_
# ページごとのボタンクリック
    clear @p #item:everything{menu:{blank:1b}}
    scoreboard players add @s page 0
    execute if score @s page matches 0 run function menu:upgrading/page
    execute if score @s page matches 1 run function menu:upgrading/evolve/page
    execute if score @s page matches 2 run function menu:upgrading/combine/page
    execute if score @s page matches 10.. run scoreboard players remove @s page 10
# メニュー更新
    execute if score @s page matches 0 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:upgrading/refresh
    execute if score @s page matches 1 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:upgrading/evolve/refresh
    execute if score @s page matches 2 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:upgrading/combine/refresh
# メニュー内の操作音
    execute unless score $ButtonClicked Temporary matches 1 run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.3 2.0
    scoreboard players reset $ButtonClicked
# 二重更新を防ぐためにメニュー管理マーカー更新
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
    data modify entity @s data.Items set from storage menu:temp Data.Items