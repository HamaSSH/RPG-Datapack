#> player:combat/main/bow/arrow/pickup
# 弓矢を取得した時の処理

# 弓矢の数を取得
    execute store result score $ArrowCount Temporary run clear @s arrow{ItemType:"Arrow"}
    scoreboard players operation @s Arrow += $ArrowCount Temporary
    execute if score $ArrowCount Temporary matches 1.. run playsound entity.item.pickup master @s ~ ~ ~ 1 1

# リセット
    scoreboard players reset $ArrowCount Temporary