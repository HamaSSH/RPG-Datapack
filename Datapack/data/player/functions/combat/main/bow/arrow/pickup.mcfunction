#> player:combat/main/bow/arrow/pickup
# 弓矢を取得した時の処理

# 弓矢の数を取得
    execute store result score $ArrowToAdd Temporary run clear @s arrow[minecraft:custom_data={item_type:"arrow"}] 0

# 矢筒に弓矢を格納していく
    execute if score $ArrowToAdd Temporary matches 1.. run function player:combat/main/bow/quiver/store_arrow/_

# リセット
    scoreboard players reset $ArrowToAdd Temporary