##########
#>
#

# 関係ないアイテムが入れられた場合返却
    data modify storage menu:temp Data.return set from storage menu:temp Data.Items
    data remove storage menu:temp Data.return[{tag:{menu:{blank:1b}}}]
    execute if data storage menu:temp Data.return[] run function menu:return_item/_
# ページごとのボタンクリック
    clear @p #lib:every_item{menu:{blank:1b}}
    scoreboard players add @s page 0
    execute if score @s page matches 0 run function menu:crafting/page
    execute if score @s page matches 100..199 run function menu:crafting/weapon/page
    execute if score @s page matches 200..299 run function menu:crafting/equipment/page
    execute if score @s page matches 300..399 run function menu:crafting/tool/page
    execute if score @s page matches 400..499 run function menu:crafting/others/page
    execute if score @s page matches 1000.. run scoreboard players remove @s page 1000
# メニュー更新
    execute if score @s page matches 0 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/refresh
    execute if score @s page matches 100 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/weapon/refresh
    execute if score @s page matches 200 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/equipment/refresh
    execute if score @s page matches 300 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/tool/refresh
    execute if score @s page matches 400 positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/others/refresh
# メニュー内の操作音
    execute unless score $ButtonClicked Temporary matches 1 run playsound ui.button.click master @p ~ ~ ~ 0.3 2.0
    scoreboard players reset $ButtonClicked
# 二重更新を防ぐためにメニュー管理マーカー更新
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
    data modify entity @s data.Items set from storage menu:temp Data.Items