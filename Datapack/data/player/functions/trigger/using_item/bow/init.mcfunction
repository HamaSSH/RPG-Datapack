#> player:trigger/using_item/bow/init
# 弓の使用を開始した時の初期処理

tag @s add UsingBow
# スロット9~11にある矢筒(弓矢の姿)のCountを2に増やす
    execute if data storage player: Accessories[{Slot:9b,id:"minecraft:arrow",tag:{Quiver:{}}}] run item modify entity @s inventory.0 lib:set_count/2
    execute if data storage player: Accessories[{Slot:10b,id:"minecraft:arrow",tag:{Quiver:{}}}] run item modify entity @s inventory.1 lib:set_count/2
    execute if data storage player: Accessories[{Slot:11b,id:"minecraft:arrow",tag:{Quiver:{}}}] run item modify entity @s inventory.2 lib:set_count/2