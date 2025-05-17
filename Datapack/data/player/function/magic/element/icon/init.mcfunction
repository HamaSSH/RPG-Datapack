#> player:magic/element/icon/init
# バフアイコンデータの初期化

execute if data storage player: buff{element:"fire"} run data modify storage player: buff.icon set value '"\\uE3C0"'
execute if data storage player: buff{element:"water"} run data modify storage player: buff.icon set value '"\\uE3D0"'
execute if data storage player: buff{element:"thunder"} run data modify storage player: buff.icon set value '"\\uE3E0"'
execute if data storage player: buff{element:"earth"} run data modify storage player: buff.icon set value '"\\uE3F0"'
execute if data storage player: buff{element:"wind"} run data modify storage player: buff.icon set value '"\\uE400"'
data modify storage player: buff.type set value "positive"