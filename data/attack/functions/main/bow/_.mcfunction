# 左クリックしたプレイヤータグ付け
    tag @s add this
# 矢筒を持っているか検知
    function attack:main/bow/quiver/check
# 弓矢の減算
    execute unless predicate core:is_sneaking unless score @s Arrow matches 1.. if score @s LCArrow matches 0 run playsound resource:custom.weapon.wand master @s ~ ~ ~ 1 1.4
    execute unless predicate core:is_sneaking unless score @s Arrow matches 1.. if score @s LCArrow matches 1.. run function attack:main/bow/inventory_arrow
    execute unless predicate core:is_sneaking if entity @s[tag=Quiver] if score @s Arrow matches 1.. if score @s LCArrow matches 0 run playsound resource:custom.weapon.wand master @s ~ ~ ~ 1 1.4
    execute unless predicate core:is_sneaking if entity @s[tag=Quiver] if score @s Arrow matches 1.. if score @s LCArrow matches 1.. run function attack:main/bow/score_arrow
# もしスニークをしている場合は右クリックトリガーと同じ処理
    execute if predicate core:is_sneaking run function core:trigger/right_click/_
# リセット
    tag @s remove Quiver
    tag @s remove this