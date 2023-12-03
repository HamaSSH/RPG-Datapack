#> player:buff/manager/init
# バフ管理用マーカーの初期化

tag @s add BuffInit
data modify entity @s data.Buff set from storage player: Buff
execute unless data storage player: Buff{Status:"-"} run tag @s add Status
execute unless data storage player: Buff{Effect:"-"} run tag @s add Effect