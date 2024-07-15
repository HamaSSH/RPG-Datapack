#> ui:brewing/brew/potion/buff/status/lore
# エフェクトのLoreの生成

# アイコン
    execute if data storage ui: SingleBuff{status:"HP"} run data modify storage ui: SingleBuff.lore.icon set value "100"
    execute if data storage ui: SingleBuff{status:"HPR"} run data modify storage ui: SingleBuff.lore.icon set value "101"
    execute if data storage ui: SingleBuff{status:"MP"} run data modify storage ui: SingleBuff.lore.icon set value "102"
    execute if data storage ui: SingleBuff{status:"MPR"} run data modify storage ui: SingleBuff.lore.icon set value "103"
    execute if data storage ui: SingleBuff{status:"STR"} run data modify storage ui: SingleBuff.lore.icon set value "104"
    execute if data storage ui: SingleBuff{status:"INT"} run data modify storage ui: SingleBuff.lore.icon set value "105"
    execute if data storage ui: SingleBuff{status:"DEX"} run data modify storage ui: SingleBuff.lore.icon set value "106"
    execute if data storage ui: SingleBuff{status:"DEF"} run data modify storage ui: SingleBuff.lore.icon set value "108"
    execute if data storage ui: SingleBuff{status:"AGI"} run data modify storage ui: SingleBuff.lore.icon set value "109"
    execute if data storage ui: SingleBuff{status:"CRT"} run data modify storage ui: SingleBuff.lore.icon set value "10A"
    execute if data storage ui: SingleBuff{status:"LUK"} run data modify storage ui: SingleBuff.lore.icon set value "10B"

# テキスト
    execute if data storage ui: SingleBuff{status:"HP"} run data modify storage ui: SingleBuff.lore.text set value "最大ＨＰ"
    execute if data storage ui: SingleBuff{status:"HPR"} run data modify storage ui: SingleBuff.lore.text set value "自然回復"
    execute if data storage ui: SingleBuff{status:"MP"} run data modify storage ui: SingleBuff.lore.text set value "最大ＭＰ"
    execute if data storage ui: SingleBuff{status:"MPR"} run data modify storage ui: SingleBuff.lore.text set value "自然回復"
    execute if data storage ui: SingleBuff{status:"STR"} run data modify storage ui: SingleBuff.lore.text set value "物理攻撃"
    execute if data storage ui: SingleBuff{status:"INT"} run data modify storage ui: SingleBuff.lore.text set value "魔法攻撃"
    execute if data storage ui: SingleBuff{status:"DEX"} run data modify storage ui: SingleBuff.lore.text set value "器用さ"
    execute if data storage ui: SingleBuff{status:"DEF"} run data modify storage ui: SingleBuff.lore.text set value "防御力"
    execute if data storage ui: SingleBuff{status:"AGI"} run data modify storage ui: SingleBuff.lore.text set value "素早さ"
    execute if data storage ui: SingleBuff{status:"CRT"} run data modify storage ui: SingleBuff.lore.text set value "会心"
    execute if data storage ui: SingleBuff{status:"LUK"} run data modify storage ui: SingleBuff.lore.text set value "幸運"

# ステータスバフの強さ
    execute store result score $Amplifier Temporary run data get storage ui: SingleBuff.amplifier
    execute store result storage ui: SingleBuff.lore.amplifier int 1 run scoreboard players get $Amplifier Temporary

# ステータスバフカラー
    execute if score $Amplifier Temporary matches 0.. run data modify storage ui: SingleBuff.lore.color set value "#72FF5C"
    execute if score $Amplifier Temporary matches ..-1 run data modify storage ui: SingleBuff.lore.color set value "#FF4D4D"

# ステータスバフの符号
    execute if score $Amplifier Temporary matches 0.. run data modify storage ui: SingleBuff.lore.sign set value "+"
    execute if score $Amplifier Temporary matches ..-1 run data modify storage ui: SingleBuff.lore.sign set value ""

# 効果時間
    execute store result score $Duration Temporary run data get storage ui: SingleBuff.duration
    scoreboard players operation $Duration Temporary /= #20 Constant
    scoreboard players operation $DurationSec Temporary = $Duration Temporary
    scoreboard players operation $DurationSec Temporary %= #60 Constant
    execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary = $Duration Temporary
    execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary /= #60 Constant
    scoreboard players operation $Duration Temporary *= #20 Constant
    # 桁ごとにstorageに格納
        data modify storage ui: SingleBuff.lore.10s set value ""
        execute if score $DurationSec Temporary matches ..9 run data modify storage ui: SingleBuff.lore.10s set value 0
        execute store result storage ui: SingleBuff.lore.1s int 1 run scoreboard players get $DurationSec Temporary
        execute store result storage ui: SingleBuff.lore.min int 1 run scoreboard players get $DurationMin Temporary

# 適用
    execute if data storage ui: SingleBuff{status:"HPR"} run function ui:brewing/brew/potion/buff/status/regen/_
    execute if data storage ui: SingleBuff{status:"MPR"} run function ui:brewing/brew/potion/buff/status/regen/_
    execute unless data storage ui: SingleBuff{status:"MPR"} unless data storage ui: SingleBuff{status:"MPR"} run function ui:brewing/brew/potion/buff/status/apply with storage ui: SingleBuff.lore

# リセット
    scoreboard players reset $Amplifier Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $DurationSec Temporary
    scoreboard players reset $DurationMin Temporary