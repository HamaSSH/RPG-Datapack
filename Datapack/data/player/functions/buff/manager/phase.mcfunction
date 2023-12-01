#> player:buff/manager/phase
# バフアイコン用のPhaseタグの設定

# データ取得
    execute store result score $Timer Temporary run data get storage player: Buff.Timer
    execute store result score $Duration Temporary run data get storage player: Buff.Duration
    execute store result score $PrevPhase Temporary run data get storage player: Buff.Phase

# Phaseの値の計算
    scoreboard players operation $Phase Temporary = $Duration Temporary
    scoreboard players operation $Phase Temporary -= $Timer Temporary
    scoreboard players operation $Phase Temporary *= #8 Constant
    scoreboard players operation $Phase Temporary /= $Duration Temporary

# Phaseの値を管理マーカーのdataに保存
    execute store result storage player: Buff.Phase int 1 run scoreboard players get $Phase Temporary

# Phaseの値が変わる際Iconを更新
    execute unless score $PrevPhase Temporary = $Phase Temporary run data modify storage player: Buff.Icon set string storage player: Buff.Icon 2 5
    execute unless score $PrevPhase Temporary = $Phase Temporary run function player:buff/manager/icon/set with storage player: Buff

# リセット
    scoreboard players reset $Timer Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $PrevPhase Temporary
    scoreboard players reset $Phase Temporary