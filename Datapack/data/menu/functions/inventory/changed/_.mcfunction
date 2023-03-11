#> menu:inventory/changed/_
# メニュー開いてる途中のインベントリ変更検知

# チェストトロッコの中身 → storage
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
# storage → マーカーのdata.Items、変更があればfunctionを実行
#TODO: チェスト内の内容変更じゃなくてプレイヤーのインベントリからにしないとダメ
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager] positioned ^ ^ ^-10 if score @s PlayerID = @p PlayerID store success score $ItemsChanged Temporary run data modify entity @s data.Items set from storage menu:temp Data.Items
    execute if score $ItemsChanged Temporary matches 0 run function menu:reset

# リセット
    advancement revoke @s only menu:inventory_changed
    data remove storage menu:temp Data.Items
    scoreboard players reset $ItemsChanged Temporary