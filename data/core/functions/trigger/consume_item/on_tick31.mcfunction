# アイテムのカウントを減らす(対応するほう)
    execute unless predicate core:consume_offhand run data modify storage core:temp Data.buff set from entity @s SelectedItem.tag.buff
    execute unless predicate core:consume_offhand run item modify entity @s weapon.mainhand core:subtract_count
    execute if predicate core:consume_offhand run data modify storage core:temp Data.buff set from entity @s Inventory[{Slot:-106b}].tag.buff
    execute if predicate core:consume_offhand run item modify entity @s weapon.offhand core:subtract_count
# アイテムの情報をmarkerに受け渡す
    summon marker 0 0 0 {Tags:["ConsumeTempInit","ConsumeTemp"]}
    execute positioned 0 0 0 as @e[type=marker,tag=ConsumeTempInit,distance=..0.01,limit=1] run function core:trigger/consume_item/store_data
# 1tick後に食べた処理呼び出し
    advancement grant @s only core:trigger/consume_item/_ tick0
# リセット
    data remove storage core:temp Data
    tag @s remove ConsumingItem
    scoreboard players set @s ConsumeItem 0
    scoreboard players set @s ConsumingItem 0