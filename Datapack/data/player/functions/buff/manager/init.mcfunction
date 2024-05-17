#> player:buff/manager/init
# バフ管理用マーカーの初期化

tag @s add BuffInit
data modify entity @s data.Buff set from storage player: Buff
execute unless data storage player: Buff{status:"-"} run tag @s add Status
execute unless data storage player: Buff{effect:"-"} run tag @s add Effect
execute unless data storage player: Buff{element:"-"} run tag @s add Element