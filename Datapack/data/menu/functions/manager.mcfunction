##########
#>
#

# チェストトロッコの中身＆Tags → storage
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.type set from entity @s Tags[0]
# storage → マーカーのdata.Items、変更があればfunctionを実行
    execute store success score $ItemsChanged Temporary run data modify entity @s data.Items set from storage menu:temp Data.Items
    execute if score $ItemsChanged Temporary matches 1 run function menu:main
# リセット
    data remove storage menu:temp Data
    scoreboard players reset $ItemsChanged