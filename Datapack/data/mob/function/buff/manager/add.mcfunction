#> mob:buff/manager/add
# バフ管理マーカーを正式に追加

execute if entity @s[tag=Status] as @e[type=#lib:every_mob,tag=BuffOwner,limit=1] run function mob:buff/add with storage mob: buff
execute if entity @s[tag=Effect] as @e[type=#lib:every_mob,tag=BuffOwner,limit=1] run function mob:buff/effect/add with storage mob: buff
tag @s add BuffManager
tag @s remove BuffInit