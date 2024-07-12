#> player:buff/manager/phase
# バフアイコン用のPhaseタグの設定

# データ取得
    execute store result score $Timer Temporary run data get storage player: buff.timer
    execute store result score $Duration Temporary run data get storage player: buff.duration
    execute store result score $PrevPhase Temporary run data get storage player: buff.phase

# Phaseの値の計算
    scoreboard players operation $Phase Temporary = $Duration Temporary
    scoreboard players operation $Phase Temporary -= $Timer Temporary
    scoreboard players operation $Phase Temporary *= #7 Constant
    scoreboard players operation $Phase Temporary /= $Duration Temporary

# TimerとPhaseの値を管理マーカーのdataに保存
    execute store result storage player: buff.timer int 1 run scoreboard players remove $Timer Temporary 1
    execute store result storage player: buff.phase int 1 run scoreboard players get $Phase Temporary

# Phaseの値が変わる際iconを更新
    execute unless score $PrevPhase Temporary = $Phase Temporary run data modify storage player: buff.icon set string storage player: buff.icon 3 6
    execute unless score $PrevPhase Temporary = $Phase Temporary if entity @s[tag=Status] run function player:buff/icon/set with storage player: buff
    execute unless score $PrevPhase Temporary = $Phase Temporary if entity @s[tag=Effect] run function player:buff/effect/icon/set with storage player: buff

# リセット
    scoreboard players reset $Timer Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $PrevPhase Temporary
    scoreboard players reset $Phase Temporary