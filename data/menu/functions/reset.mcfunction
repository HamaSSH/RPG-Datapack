# 返却されるべきアイテムを返却する
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..5] if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.return set from entity @s data.Items
    data remove storage menu:temp Data.return[{tag:{menu:{blank:1b}}}]
    execute if data storage menu:temp Data.return[] run function menu:return_item/_
# メニューGUIをkill
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] if score @s PlayerID = @p PlayerID run function menu:kill
# 検知用のマーカーをkill
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..5] if score @s PlayerID = @p PlayerID run kill @s
# リセット
    data remove storage menu:temp Data
    scoreboard players reset @s menu_timer
    tag @s remove Menu