#> player:buff/shaping
# バフのデータを整形する

data modify storage player: Buff.Phase set value 0
data modify storage player: Buff.Timer set from storage player: Buff.Duration
execute if data storage player: Buff.Status run function player:buff/icon/init
execute unless data storage player: Buff.Status run data modify storage player: Buff.Status set value "-"
execute unless data storage player: Buff.PosNeg run data modify storage player: Buff.PosNeg set value "-"
execute if data storage player: Buff.Element run function player:magic/element/icon/init
execute unless data storage player: Buff.Element run data modify storage player: Buff.Element set value "-"
execute if data storage player: Buff.Effect run function player:buff/effect/icon/init
execute unless data storage player: Buff.Effect run data modify storage player: Buff.Effect set value "-"