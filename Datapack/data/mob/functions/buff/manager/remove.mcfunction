#> mob:buff/manager/remove
# バフ管理マーカーを削除(スコアも減算)

data modify storage mob: BuffRemove set from entity @s data.Buff
execute if entity @s[tag=Status] as @e[type=#lib:every_mob,tag=BuffOwner,limit=1] run function mob:buff/remove with storage mob: BuffRemove
execute if entity @s[tag=Effect] as @e[type=#lib:every_mob,tag=BuffOwner,limit=1] run function mob:buff/effect/remove with storage mob: BuffRemove
data remove storage mob: BuffRemove
kill @s