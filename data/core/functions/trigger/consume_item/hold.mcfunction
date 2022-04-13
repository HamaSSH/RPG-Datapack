# アイテムを食べようとしている場合スコア加算
    tag @s add this
    scoreboard players add @s ConsumeItem 1
    tag @s add ConsumingItem
# アイテムを食べる処理
    execute if score @s ConsumeItem matches 31.. run function core:trigger/consume_item/tick31
# リセット
    tag @s remove this
    advancement revoke @s only core:trigger/consume_item/hold