#> player:buff/manager/phase
# バフアイコン用のPhaseタグの設定

# データ取得
    execute store result score $Timer Temporary run data get storage player: Buff.Timer
    execute store result score $Duration Temporary run data get storage player: Buff.Duration
    execute store result score $PrevPhase Temporary run data get storage player: Buff.Phase

# Phaseの値の計算
    scoreboard players operation $Phase Temporary = $Duration Temporary
    scoreboard players operation $Phase Temporary -= $Timer Temporary
    scoreboard players operation $Phase Temporary *= #7 Constant
    scoreboard players operation $Phase Temporary /= $Duration Temporary

# TimerとPhaseの値を管理マーカーのdataに保存
    execute store result storage player: Buff.Timer int 1 run scoreboard players remove $Timer Temporary 1
    execute store result storage player: Buff.Phase int 1 run scoreboard players get $Phase Temporary

# Phaseの値が変わる際Iconを更新
    execute unless score $PrevPhase Temporary = $Phase Temporary run data modify storage player: Buff.Icon set string storage player: Buff.Icon 3 6
    execute unless score $PrevPhase Temporary = $Phase Temporary if entity @s[tag=Status] run function player:buff/icon/set with storage player: Buff
    execute unless score $PrevPhase Temporary = $Phase Temporary if entity @s[tag=Effect] run function player:buff/effect/icon/set with storage player: Buff

# リセット
    scoreboard players reset $Timer Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $PrevPhase Temporary
    scoreboard players reset $Phase Temporary