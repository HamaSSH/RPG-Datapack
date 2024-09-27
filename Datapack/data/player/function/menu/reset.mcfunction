#> player:menu/reset
# メニュー用アイテムの後処理

# インベントリからあぶれたアイテムのkill
    execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:structure_void"} run kill @s

# アイテムの再配置
    item replace entity @s player.crafting.0 with structure_void[custom_data={menu:"test0"},item_name='{"text":"現在の目的","color":"white","italic":false}']
    item replace entity @s player.crafting.1 with structure_void[custom_data={menu:"test1"},item_name='{"text":"メニュー２","color":"white","italic":false}']
    item replace entity @s player.crafting.2 with structure_void[custom_data={menu:"test2"},item_name='{"text":"ステータスの表示","color":"white","italic":false}']
    item replace entity @s player.crafting.3 with structure_void[custom_data={menu:"test3"},item_name='{"text":"パッシブスキルの確認","color":"white","italic":false}']

# オフハンド・カーソルの検知用アイテムをclear
    execute if items entity @s weapon.offhand structure_void run item replace entity @s weapon.offhand with air
    execute if items entity @s player.cursor structure_void run item replace entity @s player.cursor with air

# インベントリ内の検知用アイテムをclear
    data modify storage player: menu set value {slot0:53,slot1:53,slot2:53,slot3:53}
    execute if items entity @s container.* structure_void[custom_data={menu:"test0"}] store result storage player: menu.slot0 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"test0"}}}].Slot
    execute if items entity @s container.* structure_void[custom_data={menu:"test1"}] store result storage player: menu.slot1 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"test1"}}}].Slot
    execute if items entity @s container.* structure_void[custom_data={menu:"test2"}] store result storage player: menu.slot2 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"test2"}}}].Slot
    execute if items entity @s container.* structure_void[custom_data={menu:"test3"}] store result storage player: menu.slot3 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"test3"}}}].Slot
    function player:menu/clear with storage player: menu

# リセット
    data remove storage player: menu