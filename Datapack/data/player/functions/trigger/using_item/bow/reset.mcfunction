#> player:trigger/using_item/bow/reset
# 弓の使用を終えた際のリセット処理

tag @s remove UsingBow
# スロット9~11にある矢筒のCountを1に設定する
    execute if data storage player: Accessories[{Slot:9b,tag:{Quiver:{}}}] run item modify entity @s inventory.0 lib:set_count/1
    execute if data storage player: Accessories[{Slot:10b,tag:{Quiver:{}}}] run item modify entity @s inventory.1 lib:set_count/1
    execute if data storage player: Accessories[{Slot:11b,tag:{Quiver:{}}}] run item modify entity @s inventory.2 lib:set_count/1