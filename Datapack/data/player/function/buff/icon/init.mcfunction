#> player:buff/icon/init
# バフアイコンデータの初期化

# バフごとのアイコン
    execute if data storage player: Buff{status:"HP"} run data modify storage player: Buff.icon set value "E31"
    execute if data storage player: Buff{status:"HPR"} run data modify storage player: Buff.icon set value "E32"
    execute if data storage player: Buff{status:"MP"} run data modify storage player: Buff.icon set value "E33"
    execute if data storage player: Buff{status:"MPR"} run data modify storage player: Buff.icon set value "E34"
    execute if data storage player: Buff{status:"STR"} run data modify storage player: Buff.icon set value "E35"
    execute if data storage player: Buff{status:"INT"} run data modify storage player: Buff.icon set value "E36"
    execute if data storage player: Buff{status:"DEX"} run data modify storage player: Buff.icon set value "E37"
    execute if data storage player: Buff{status:"DEF"} run data modify storage player: Buff.icon set value "E38"
    execute if data storage player: Buff{status:"AGI"} run data modify storage player: Buff.icon set value "E39"
    execute if data storage player: Buff{status:"CRT"} run data modify storage player: Buff.icon set value "E3A"
    execute if data storage player: Buff{status:"LUK"} run data modify storage player: Buff.icon set value "E3B"

# バフの＋－アイコン
    execute store result score $StatusAmplifier Temporary run data get storage player: Buff.amplifier
    execute if score $StatusAmplifier Temporary matches 0.. run data modify storage player: Buff.sign set value "E300"
    execute if score $StatusAmplifier Temporary matches ..-1 run data modify storage player: Buff.sign set value "E301"
    scoreboard players reset $StatusAmplifier Temporary

# バフアイコンの初期化
    function player:buff/icon/set with storage player: Buff