# 長押し時間が31tick未満の時食べない
    say 食べない
# リセット
    tag @s remove ConsumingItem
    scoreboard players set @s ConsumeItem 0
    scoreboard players set @s ConsumingItem 0
    advancement revoke @s only core:trigger/consume_item/release