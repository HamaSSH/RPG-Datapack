#> item:fishing/chest/kill_item
# #TODO: 宝箱のレアリティの開示

# アマスタを乗せているアイテムのkill
    execute on passengers run data modify entity @s Marker set value 0b
    kill @s