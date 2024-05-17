#> ui:brewing/brew/potion/buff/effect/lore
# エフェクトのLoreの生成

# アイコン
    execute if data storage ui: SingleBuff{effect:"poison"} run data modify storage ui: SingleBuff.Lore.Icon set value "118"
    execute if data storage ui: SingleBuff{effect:"haste"} run data modify storage ui: SingleBuff.Lore.Icon set value "119"
    execute if data storage ui: SingleBuff{effect:"hunger"} run data modify storage ui: SingleBuff.Lore.Icon set value "11A"
    execute if data storage ui: SingleBuff{effect:"jump_boost"} run data modify storage ui: SingleBuff.Lore.Icon set value "11B"
    execute if data storage ui: SingleBuff{effect:"blindness"} run data modify storage ui: SingleBuff.Lore.Icon set value "11C"
    execute if data storage ui: SingleBuff{effect:"water_breathing"} run data modify storage ui: SingleBuff.Lore.Icon set value "11D"
    execute if data storage ui: SingleBuff{effect:"regeneration"} run data modify storage ui: SingleBuff.Lore.Icon set value "11E"

# テキスト
    execute if data storage ui: SingleBuff{effect:"poison"} run data modify storage ui: SingleBuff.Lore.Text set value "毒"
    execute if data storage ui: SingleBuff{effect:"haste"} run data modify storage ui: SingleBuff.Lore.Text set value "採掘速度上昇"
    execute if data storage ui: SingleBuff{effect:"hunger"} run data modify storage ui: SingleBuff.Lore.Text set value "空腹"
    execute if data storage ui: SingleBuff{effect:"jump_boost"} run data modify storage ui: SingleBuff.Lore.Text set value "跳躍力上昇"
    execute if data storage ui: SingleBuff{effect:"blindness"} run data modify storage ui: SingleBuff.Lore.Text set value "盲目"
    execute if data storage ui: SingleBuff{effect:"water_breathing"} run data modify storage ui: SingleBuff.Lore.Text set value "水中呼吸"
    execute if data storage ui: SingleBuff{effect:"regeneration"} run data modify storage ui: SingleBuff.Lore.Text set value "再生能力"

# エフェクトカラー
    execute if data storage ui: SingleBuff{effect:"poison"} run data modify storage ui: SingleBuff.Lore.Color set value "#FF4D4D"
    execute if data storage ui: SingleBuff{effect:"haste"} run data modify storage ui: SingleBuff.Lore.Color set value "blue"
    execute if data storage ui: SingleBuff{effect:"hunger"} run data modify storage ui: SingleBuff.Lore.Color set value "#FF4D4D"
    execute if data storage ui: SingleBuff{effect:"jump_boost"} run data modify storage ui: SingleBuff.Lore.Color set value "blue"
    execute if data storage ui: SingleBuff{effect:"blindness"} run data modify storage ui: SingleBuff.Lore.Color set value "#FF4D4D"
    execute if data storage ui: SingleBuff{effect:"water_breathing"} run data modify storage ui: SingleBuff.Lore.Color set value "blue"
    execute if data storage ui: SingleBuff{effect:"regeneration"} run data modify storage ui: SingleBuff.Lore.Color set value "blue"

# エフェクトレベル
    execute if data storage ui: SingleBuff{amplifier:0} run data modify storage ui: SingleBuff.Lore.Level set value "0"
    execute if data storage ui: SingleBuff{amplifier:1} run data modify storage ui: SingleBuff.Lore.Level set value "2II"
    execute if data storage ui: SingleBuff{amplifier:2} run data modify storage ui: SingleBuff.Lore.Level set value "2III"
    execute if data storage ui: SingleBuff{amplifier:3} run data modify storage ui: SingleBuff.Lore.Level set value "2IV"
    execute if data storage ui: SingleBuff{amplifier:4} run data modify storage ui: SingleBuff.Lore.Level set value "2V"

# 効果時間
    execute store result score $Duration Temporary run data get storage ui: SingleBuff.duration
    scoreboard players operation $Duration Temporary /= #20 Constant
    scoreboard players operation $DurationSec Temporary = $Duration Temporary
    scoreboard players operation $DurationSec Temporary %= #60 Constant
    execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary = $Duration Temporary
    execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary /= #60 Constant
    scoreboard players operation $Duration Temporary *= #20 Constant
    # 桁ごとにstorageに格納
        data modify storage ui: SingleBuff.Lore.10Sec set value ""
        execute if score $DurationSec Temporary matches ..9 run data modify storage ui: SingleBuff.Lore.10Sec set value 0
        execute store result storage ui: SingleBuff.Lore.Sec int 1 run scoreboard players get $DurationSec Temporary
        execute store result storage ui: SingleBuff.Lore.Min int 1 run scoreboard players get $DurationMin Temporary

# 適用
    function ui:brewing/brew/potion/buff/effect/apply with storage ui: SingleBuff.Lore

# リセット
    scoreboard players reset $Duration Temporary
    scoreboard players reset $DurationSec Temporary
    scoreboard players reset $DurationMin Temporary