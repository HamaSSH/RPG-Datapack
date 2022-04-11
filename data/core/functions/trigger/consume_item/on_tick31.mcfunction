# アイテムの情報をmarkerに受け渡す

# アイテムのカウントを減らす(対応するほう)
    item replace entity @s weapon.offhand with air
    item replace entity @s weapon.mainhand with air
# 1tick後に食べた処理呼び出し
    advancement grant @s only core:trigger/consume_item/_ tick0
# リセット
    tag @s remove ConsumingItem
    scoreboard players set @s ConsumeItem 0
    scoreboard players set @s ConsumingItem 0