#> player:buff/effect/icon/init
# バフアイコンデータの初期化

execute if data storage player: buff{effect:"poison"} run data modify storage player: buff.icon set value '"\\uE410"'
execute if data storage player: buff{effect:"haste"} run data modify storage player: buff.icon set value '"\\uE420"'
execute if data storage player: buff{effect:"hunger"} run data modify storage player: buff.icon set value '"\\uE430"'
execute if data storage player: buff{effect:"jump_boost"} run data modify storage player: buff.icon set value '"\\uE440"'
execute if data storage player: buff{effect:"blindness"} run data modify storage player: buff.icon set value '"\\uE450"'
execute if data storage player: buff{effect:"water_breathing"} run data modify storage player: buff.icon set value '"\\uE460"'
execute if data storage player: buff{effect:"regeneration"} run data modify storage player: buff.icon set value '"\\uE470"'
execute if data storage player: buff{effect:"fire_resistance"} run data modify storage player: buff.icon set value '"\\uE480"'
execute if data storage player: buff{effect:"slow_falling"} run data modify storage player: buff.icon set value '"\\uE490"'
execute if data storage player: buff{effect:"invisibility"} run data modify storage player: buff.icon set value '"\\uE4A0"'