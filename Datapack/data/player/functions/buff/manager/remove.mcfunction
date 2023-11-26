#> player:buff/manager/remove
# バフ管理マーカーを削除(スコアも減算)

data modify storage player: BuffRemove set from entity @s data.Buff
execute as @p[tag=BuffOwner] run function player:buff/remove with storage player: BuffRemove
data remove storage player: BuffRemove
kill @s