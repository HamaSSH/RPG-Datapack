# 買うメニューにいる時にゴールドを得たときの処理
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
# 店NPCのfunctionを実行
    scoreboard players set $ButtonClicked Temporary 1
    execute if score $ItemsChanged Temporary matches 1 run function menu:shop/_
# リセット
    data remove storage menu:temp Data