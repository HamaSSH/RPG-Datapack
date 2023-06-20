##########
#>
#

# アイテムを食べようとしている場合スコア加算
    tag @s add this
    scoreboard players add @s ConsumeItem 1
    tag @s add ConsumingItem
# 左右どちらのアイテムを食べているか
    execute if score @s ConsumeItem matches 1 if predicate core:consume_offhand run tag @s add ConsumeOffhand
    execute if score @s ConsumeItem matches 1 if predicate core:consume_mainhand run tag @s add ConsumeMainhand
# アイテムを食べる処理
    execute if score @s ConsumeItem matches 31.. run function core:trigger/consume_item/tick31
# リセット
    tag @s remove this
    advancement revoke @s only core:trigger/consume_item/hold