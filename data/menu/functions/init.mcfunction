# プレイヤーとチェストトロッコの結び付け
    scoreboard players operation @s PlayerID = @p PlayerID
    tag @p add Menu
# チェストトロッコ初期処理
    data modify storage menu:temp Data.Items set from entity @s Items
    execute if data storage menu:temp Data.Items[{Slot:14b,id:"minecraft:gold_block"}] run item modify entity @s container.14 menu:set_gold
    execute if data storage menu:temp Data.Items[{Slot:15b,id:"minecraft:gold_block"}] run item modify entity @s container.15 menu:set_gold
    execute if data storage menu:temp Data.Items[{Slot:17b,id:"minecraft:gold_block"}] run item modify entity @s container.17 menu:set_gold
    tag @s remove MenuInit
    tag @s add Open
    tp @s ~ ~-2 ~
# メニュー管理マーカー初期処理
    summon marker ^ ^ ^10 {Tags:["MenuManager"]}
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..0.01,sort=nearest,limit=1] positioned ^ ^ ^-10 run scoreboard players operation @s PlayerID = @p PlayerID
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..0.01,sort=nearest,limit=1] run data modify entity @s data.Items set from storage menu:temp Data.Items
# リセット
    data remove storage menu:temp Data