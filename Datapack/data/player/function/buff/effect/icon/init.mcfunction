#> player:buff/effect/icon/init
# バフアイコンデータの初期化

# エフェクトごとのアイコン
    execute if data storage player: buff{effect:"poison"} run data modify storage player: buff.icon_base set value "E41"
    execute if data storage player: buff{effect:"haste"} run data modify storage player: buff.icon_base set value "E42"
    execute if data storage player: buff{effect:"hunger"} run data modify storage player: buff.icon_base set value "E43"
    execute if data storage player: buff{effect:"jump_boost"} run data modify storage player: buff.icon_base set value "E44"
    execute if data storage player: buff{effect:"blindness"} run data modify storage player: buff.icon_base set value "E45"
    execute if data storage player: buff{effect:"water_breathing"} run data modify storage player: buff.icon_base set value "E46"
    execute if data storage player: buff{effect:"regeneration"} run data modify storage player: buff.icon_base set value "E47"
    execute if data storage player: buff{effect:"fire_resistance"} run data modify storage player: buff.icon_base set value "E48"
    execute if data storage player: buff{effect:"slow_falling"} run data modify storage player: buff.icon_base set value "E49"
    execute if data storage player: buff{effect:"invisibility"} run data modify storage player: buff.icon_base set value "E4A"
    execute if data storage player: buff{effect:"wither"} run data modify storage player: buff.icon_base set value "E4B"

# バフかデバフの決定
    execute if data storage player: buff{effect:"poison"} run data modify storage player: buff.type set value "negative"
    execute if data storage player: buff{effect:"haste"} run data modify storage player: buff.type set value "positive"
    execute if data storage player: buff{effect:"hunger"} run data modify storage player: buff.type set value "negative"
    execute if data storage player: buff{effect:"jump_boost"} run data modify storage player: buff.type set value "positive"
    execute if data storage player: buff{effect:"blindness"} run data modify storage player: buff.type set value "negative"
    execute if data storage player: buff{effect:"water_breathing"} run data modify storage player: buff.type set value "positive"
    execute if data storage player: buff{effect:"regeneration"} run data modify storage player: buff.type set value "positive"
    execute if data storage player: buff{effect:"fire_resistance"} run data modify storage player: buff.type set value "positive"
    execute if data storage player: buff{effect:"slow_falling"} run data modify storage player: buff.type set value "positive"
    execute if data storage player: buff{effect:"invisibility"} run data modify storage player: buff.type set value "positive"
    execute if data storage player: buff{effect:"wither"} run data modify storage player: buff.type set value "negative"

# バフアイコンの初期化
    function player:buff/effect/icon/set with storage player: buff