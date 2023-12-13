#> player:buff/icon/init
# バフアイコンデータの初期化

# バフごとのアイコン
    execute if data storage player: Buff{Status:"HP"} run data modify storage player: Buff.Icon set value '"\\uE310\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"HPR"} run data modify storage player: Buff.Icon set value '"\\uE320\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"MP"} run data modify storage player: Buff.Icon set value '"\\uE330\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"MPR"} run data modify storage player: Buff.Icon set value '"\\uE340\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"STR"} run data modify storage player: Buff.Icon set value '"\\uE350\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"INT"} run data modify storage player: Buff.Icon set value '"\\uE360\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"DEX"} run data modify storage player: Buff.Icon set value '"\\uE370\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"DEF"} run data modify storage player: Buff.Icon set value '"\\uE380\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"AGI"} run data modify storage player: Buff.Icon set value '"\\uE390\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"CRT"} run data modify storage player: Buff.Icon set value '"\\uE3A0\\uF808\\uF802\\uE300\\uF802"'
    execute if data storage player: Buff{Status:"LUK"} run data modify storage player: Buff.Icon set value '"\\uE3B0\\uF808\\uF802\\uE300\\uF802"'

# バフの＋－アイコン
    execute store result score $StatusAmplifier Temporary run data get storage player: Buff.Amplifier
    execute if score $StatusAmplifier Temporary matches 0.. run data modify storage player: Buff.PosNeg set value "E300"
    execute if score $StatusAmplifier Temporary matches ..-1 run data modify storage player: Buff.PosNeg set value "E301"
    scoreboard players reset $StatusAmplifier Temporary