#> player:buff/manager/add
# バフ管理マーカーを正式に追加

execute if entity @s[tag=Status] as @p[tag=BuffOwner] run function player:buff/add with storage player: buff
execute if entity @s[tag=Effect] as @p[tag=BuffOwner] run function player:buff/effect/add with storage player: buff
tag @s add BuffManager
tag @s remove BuffInit