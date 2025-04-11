#> player:magic/element/icon/init
# バフアイコンデータの初期化

execute if data storage player: buff{element:"fire"} run data modify storage player: buff.base_icon set value "E3C"
execute if data storage player: buff{element:"water"} run data modify storage player: buff.base_icon set value "E3D"
execute if data storage player: buff{element:"thunder"} run data modify storage player: buff.base_icon set value "E3E"
execute if data storage player: buff{element:"earth"} run data modify storage player: buff.base_icon set value "E3F"
execute if data storage player: buff{element:"wind"} run data modify storage player: buff.base_icon set value "E40"
data modify storage player: buff.type set value "positive"

# バフアイコンの初期化
    function player:buff/effect/icon/set with storage player: buff