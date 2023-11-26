#> player:buff/manager/add
# バフ管理マーカーを正式に追加

execute as @p[tag=BuffOwner] run function player:buff/add with storage player: Buff
tag @s add BuffManager
tag @s remove BuffInit