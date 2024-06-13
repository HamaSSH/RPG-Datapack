#> mob:buff/tick
# バフ管理AECのtick処理

# バフのTimerを減らしてゆく
    execute on origin run tag @s add BuffOwner
    execute if entity @e[type=#lib:every_mob,tag=BuffOwner,limit=1] on passengers run function mob:buff/manager/tick

# リセット
    execute on origin run tag @s remove BuffOwner
    execute unless predicate lib:has_passenger on origin run tag @s remove IsBuffed
    execute unless predicate lib:has_passenger run kill @s