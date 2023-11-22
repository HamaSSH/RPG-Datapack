#> player:buff/tick
# バフ管理AECのtick処理

# バフのDurationを減らしてゆく
    execute on origin run tag @s add BuffOwner
    execute if entity @p[tag=BuffOwner] on passengers run function player:buff/manager/tick

# リセット
    execute on origin run tag @s remove BuffOwner
    execute unless predicate lib:has_passenger run kill @s