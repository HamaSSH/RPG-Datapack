#> mob:buff/manager/init
# バフ管理用マーカーの初期化

tag @s add BuffInit
data modify entity @s data.Buff set from storage mob: Buff
execute unless data storage mob: Buff{status:"-"} run tag @s add Status
execute unless data storage mob: Buff{effect:"-"} run tag @s add Effect