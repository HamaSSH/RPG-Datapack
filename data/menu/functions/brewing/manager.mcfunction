# チェストトロッコの中身 → storage
    execute positioned ~ ~5.0 ~ as @e[type=chest_minecart,tag=Open,distance=..2] positioned ~ ~-5.0 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
# storage → マーカーのdata.Items、変更があればfunctionを実行
    execute store success score $ItemsChanged Temporary run data modify entity @s data.Items set from storage menu:temp Data.Items
    execute if score $ItemsChanged Temporary matches 1 run say 変更検知
# リセット
    data remove storage menu:temp Data
    scoreboard players reset $ItemsChanged