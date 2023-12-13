#> player:buff/effect/icon/init
# バフアイコンデータの初期化

execute if data storage player: Buff{Effect:"poison"} run data modify storage player: Buff.Icon set value '"\\uE3C0"'
execute if data storage player: Buff{Effect:"haste"} run data modify storage player: Buff.Icon set value '"\\uE3D0"'
execute if data storage player: Buff{Effect:"hunger"} run data modify storage player: Buff.Icon set value '"\\uE3E0"'
execute if data storage player: Buff{Effect:"jump_boost"} run data modify storage player: Buff.Icon set value '"\\uE3F0"'
execute if data storage player: Buff{Effect:"blindness"} run data modify storage player: Buff.Icon set value '"\\uE400"'
execute if data storage player: Buff{Effect:"water_breathing"} run data modify storage player: Buff.Icon set value '"\\uE410"'