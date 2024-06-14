#> player:buff/manager/remove
# バフ管理マーカーを削除(スコアも減算)

data modify storage player: BuffRemove set from entity @s data.Buff
execute if entity @s[tag=Status] as @p[tag=BuffOwner] run function player:buff/remove with storage player: BuffRemove
execute if entity @s[tag=Effect] as @p[tag=BuffOwner] run function player:buff/effect/remove with storage player: BuffRemove
data remove storage player: BuffRemove
kill @s