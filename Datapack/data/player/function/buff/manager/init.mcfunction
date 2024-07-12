#> player:buff/manager/init
# バフ管理用マーカーの初期化

tag @s add BuffInit
data modify entity @s data.buff set from storage player: buff
execute unless data storage player: buff{status:"-"} run tag @s add Status
execute unless data storage player: buff{effect:"-"} run tag @s add Effect