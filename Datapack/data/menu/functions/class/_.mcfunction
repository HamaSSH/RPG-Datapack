##########
#>
#

# 関係ないアイテムが入れられた場合返却
    data modify storage menu:temp Data.return set from storage menu:temp Data.Items
    data remove storage menu:temp Data.return[{tag:{menu:{blank:1b}}}]
    execute if data storage menu:temp Data.return[] run function menu:return_item/_
# ボタンクリック
    clear @p #item:everything{menu:{blank:1b}}
    execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{button:"assassin"}}}] as @p run function player:class/assassin/join
    execute unless data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{button:"fighter"}}}] as @p run function player:class/fighter/join
    execute unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{button:"knight"}}}] as @p run function player:class/knight/join
    execute unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{button:"warrior"}}}] as @p run function player:class/warrior/join
    execute unless data storage menu:temp Data.Items[{Slot:14b,tag:{menu:{button:"wizard"}}}] as @p run function player:class/wizard/join
    execute unless data storage menu:temp Data.Items[{Slot:15b,tag:{menu:{button:"hunter"}}}] as @p run function player:class/hunter/join
# プレイヤーの職業とレベル情報
    execute if entity @p[team=NoCollision] run scoreboard players set $Class Temporary 0
    execute if entity @p[team=Assassin] run scoreboard players set $Class Temporary 1
    execute if entity @p[team=Fighter] run scoreboard players set $Class Temporary 2
    execute if entity @p[team=Knight] run scoreboard players set $Class Temporary 3
    execute if entity @p[team=Warrior] run scoreboard players set $Class Temporary 4
    execute if entity @p[team=Wizard] run scoreboard players set $Class Temporary 5
    execute if entity @p[team=Hunter] run scoreboard players set $Class Temporary 6
    scoreboard players operation $Level Temporary = @p level
# メニュー更新
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:class/refresh
# メニュー内の操作音
    execute unless score $ButtonClicked Temporary matches 1 run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.3 2.0
    scoreboard players reset $ButtonClicked
# 二重更新を防ぐためにメニュー管理マーカー更新
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
    data modify entity @s data.Items set from storage menu:temp Data.Items
# リセット
    scoreboard players reset $Class
    scoreboard players reset $Level