#> player:buff/effect/icon/init
# バフアイコンデータの初期化

execute if data storage player: Buff{effect:"poison"} run data modify storage player: Buff.icon set value '"\\uE410"'
execute if data storage player: Buff{effect:"haste"} run data modify storage player: Buff.icon set value '"\\uE420"'
execute if data storage player: Buff{effect:"hunger"} run data modify storage player: Buff.icon set value '"\\uE430"'
execute if data storage player: Buff{effect:"jump_boost"} run data modify storage player: Buff.icon set value '"\\uE440"'
execute if data storage player: Buff{effect:"blindness"} run data modify storage player: Buff.icon set value '"\\uE450"'
execute if data storage player: Buff{effect:"water_breathing"} run data modify storage player: Buff.icon set value '"\\uE460"'
execute if data storage player: Buff{effect:"regeneration"} run data modify storage player: Buff.icon set value '"\\uE470"'