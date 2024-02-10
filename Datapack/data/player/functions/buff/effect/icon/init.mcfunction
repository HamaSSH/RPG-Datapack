#> player:buff/effect/icon/init
# バフアイコンデータの初期化

execute if data storage player: Buff{Effect:"poison"} run data modify storage player: Buff.Icon set value '"\\uE410"'
execute if data storage player: Buff{Effect:"haste"} run data modify storage player: Buff.Icon set value '"\\uE420"'
execute if data storage player: Buff{Effect:"hunger"} run data modify storage player: Buff.Icon set value '"\\uE430"'
execute if data storage player: Buff{Effect:"jump_boost"} run data modify storage player: Buff.Icon set value '"\\uE440"'
execute if data storage player: Buff{Effect:"blindness"} run data modify storage player: Buff.Icon set value '"\\uE450"'
execute if data storage player: Buff{Effect:"water_breathing"} run data modify storage player: Buff.Icon set value '"\\uE460"'
execute if data storage player: Buff{Effect:"regeneration"} run data modify storage player: Buff.Icon set value '"\\uE470"'