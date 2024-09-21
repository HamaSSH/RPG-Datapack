#> player:buff/icon/init
# バフアイコンデータの初期化

# バフごとのアイコン
    execute if data storage player: buff{status:"HP"} run data modify storage player: buff.icon set value "E31"
    execute if data storage player: buff{status:"HPR"} run data modify storage player: buff.icon set value "E32"
    execute if data storage player: buff{status:"MP"} run data modify storage player: buff.icon set value "E33"
    execute if data storage player: buff{status:"MPR"} run data modify storage player: buff.icon set value "E34"
    execute if data storage player: buff{status:"STR"} run data modify storage player: buff.icon set value "E35"
    execute if data storage player: buff{status:"INT"} run data modify storage player: buff.icon set value "E36"
    execute if data storage player: buff{status:"DEX"} run data modify storage player: buff.icon set value "E37"
    execute if data storage player: buff{status:"DEF"} run data modify storage player: buff.icon set value "E38"
    execute if data storage player: buff{status:"AGI"} run data modify storage player: buff.icon set value "E39"
    execute if data storage player: buff{status:"CRT"} run data modify storage player: buff.icon set value "E3A"
    execute if data storage player: buff{status:"LUK"} run data modify storage player: buff.icon set value "E3B"

# バフの＋－アイコン
    execute store result score $StatusAmplifier Temporary run data get storage player: buff.amplifier
    execute if score $StatusAmplifier Temporary matches 0.. run data modify storage player: buff.sign set value "E300"
    execute if score $StatusAmplifier Temporary matches ..-1 run data modify storage player: buff.sign set value "E301"

# バフかデバフかの決定
    execute if score $StatusAmplifier Temporary matches 0.. run data modify storage player: buff.type set value "positive"
    execute if score $StatusAmplifier Temporary matches ..-1 run data modify storage player: buff.type set value "negative"

# バフアイコンの初期化
    function player:buff/icon/set with storage player: buff

# リセット
    scoreboard players reset $StatusAmplifier Temporary