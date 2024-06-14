#> player:buff/icon/init
# バフアイコンデータの初期化

# バフごとのアイコン
    execute if data storage player: Buff{status:"HP"} run data modify storage player: Buff.icon set value '"\\uE310\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"HPR"} run data modify storage player: Buff.icon set value '"\\uE320\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"MP"} run data modify storage player: Buff.icon set value '"\\uE330\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"MPR"} run data modify storage player: Buff.icon set value '"\\uE340\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"STR"} run data modify storage player: Buff.icon set value '"\\uE350\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"INT"} run data modify storage player: Buff.icon set value '"\\uE360\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"DEX"} run data modify storage player: Buff.icon set value '"\\uE370\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"DEF"} run data modify storage player: Buff.icon set value '"\\uE380\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"AGI"} run data modify storage player: Buff.icon set value '"\\uE390\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"CRT"} run data modify storage player: Buff.icon set value '"\\uE3A0\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{status:"LUK"} run data modify storage player: Buff.icon set value '"\\uE3B0\\uF808\\uF802\\uE300\\uF802"'

# バフの＋－アイコン
    execute store result score $StatusAmplifier Temporary run data get storage player: Buff.amplifier
    execute if score $StatusAmplifier Temporary matches 0.. run data modify storage player: Buff.sign set value "E300"
    execute if score $StatusAmplifier Temporary matches ..-1 run data modify storage player: Buff.sign set value "E301"
    scoreboard players reset $StatusAmplifier Temporary