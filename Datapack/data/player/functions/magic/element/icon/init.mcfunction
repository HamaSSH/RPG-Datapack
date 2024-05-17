#> player:magic/element/icon/init
# バフアイコンデータの初期化

execute if data storage player: Buff{element:"fire"} run data modify storage player: Buff.icon set value '"\\uE3C0"'
execute if data storage player: Buff{element:"water"} run data modify storage player: Buff.icon set value '"\\uE3D0"'
execute if data storage player: Buff{element:"thunder"} run data modify storage player: Buff.icon set value '"\\uE3E0"'
execute if data storage player: Buff{element:"earth"} run data modify storage player: Buff.icon set value '"\\uE3F0"'
execute if data storage player: Buff{element:"wind"} run data modify storage player: Buff.icon set value '"\\uE400"'