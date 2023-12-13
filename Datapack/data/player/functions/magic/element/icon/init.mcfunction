#> player:magic/element/icon/init
# バフアイコンデータの初期化

execute if data storage player: Buff{Element:"Fire"} run data modify storage player: Buff.Icon set value '"\\uE3C0"'
execute if data storage player: Buff{Element:"Water"} run data modify storage player: Buff.Icon set value '"\\uE3D0"'
execute if data storage player: Buff{Element:"Thunder"} run data modify storage player: Buff.Icon set value '"\\uE3E0"'
execute if data storage player: Buff{Element:"Earth"} run data modify storage player: Buff.Icon set value '"\\uE3F0"'
execute if data storage player: Buff{Element:"Wind"} run data modify storage player: Buff.Icon set value '"\\uE400"'