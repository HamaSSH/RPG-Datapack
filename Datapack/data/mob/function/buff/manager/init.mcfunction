#> mob:buff/manager/init
# バフ管理用マーカーの初期化

tag @s add BuffInit
data modify entity @s data.buff set from storage mob: buff
execute unless data storage mob: buff{status:"-"} run tag @s add Status
execute unless data storage mob: buff{effect:"-"} run tag @s add Effect