# 持っているアイテム数取得
    execute store result score $Count Temporary run data get storage menu:temp Data.NewInv[-1].Count
# アイテム数減算後のCountを代入
    scoreboard players operation $NewCount Temporary = $Count Temporary
    scoreboard players operation $NewCount Temporary -= $Required Temporary
    execute if score $NewCount Temporary matches ..-1 run scoreboard players set $NewCount Temporary 0
    execute store result storage menu:temp Data.NewInv[-1].Count byte 1 run scoreboard players get $NewCount Temporary
# 目標アイテム数を減算
    scoreboard players operation $Required Temporary -= $Count Temporary
# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $NewCount Temporary