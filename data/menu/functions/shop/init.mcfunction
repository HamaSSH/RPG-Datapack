# メニューの一般的な初期処理
    function menu:init
# 商品となるアイテムを入れる
    execute store result storage menu:temp Data.tag.menu.id int 1 run data get entity @s Items[0].tag.menu.id
    function #npc:shop
# 商品となるアイテムをメニュー管理マーカーに保存
    data modify storage menu:temp Data.Items set from entity @s Items
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..5] positioned ^ ^ ^-10 if score @s PlayerID = @p PlayerID run data modify entity @s data.Goods set from storage menu:temp Data.Items
# リセット
    data remove storage menu:temp Data