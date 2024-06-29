#> ui:smithing/upgrade/item/bonus_status/lore
# 補正ステータスのLoreの生成

# アイコン
    execute if data storage ui: SingleBonus{status:"HP"} run data modify storage ui: SingleBonus.icon set value "100"
    execute if data storage ui: SingleBonus{status:"HPR"} run data modify storage ui: SingleBonus.icon set value "101"
    execute if data storage ui: SingleBonus{status:"MP"} run data modify storage ui: SingleBonus.icon set value "102"
    execute if data storage ui: SingleBonus{status:"MPR"} run data modify storage ui: SingleBonus.icon set value "103"
    execute if data storage ui: SingleBonus{status:"STR"} run data modify storage ui: SingleBonus.icon set value "104"
    execute if data storage ui: SingleBonus{status:"INT"} run data modify storage ui: SingleBonus.icon set value "105"
    execute if data storage ui: SingleBonus{status:"DEX"} run data modify storage ui: SingleBonus.icon set value "106"
    execute if data storage ui: SingleBonus{status:"DEF"} run data modify storage ui: SingleBonus.icon set value "108"
    execute if data storage ui: SingleBonus{status:"AGI"} run data modify storage ui: SingleBonus.icon set value "109"
    execute if data storage ui: SingleBonus{status:"CRT"} run data modify storage ui: SingleBonus.icon set value "10A"
    execute if data storage ui: SingleBonus{status:"LUK"} run data modify storage ui: SingleBonus.icon set value "10B"

# テキスト
    execute if data storage ui: SingleBonus{status:"HP"} run data modify storage ui: SingleBonus.text set value "最大ＨＰ"
    execute if data storage ui: SingleBonus{status:"HPR"} run data modify storage ui: SingleBonus.text set value "自然回復"
    execute if data storage ui: SingleBonus{status:"MP"} run data modify storage ui: SingleBonus.text set value "最大ＭＰ"
    execute if data storage ui: SingleBonus{status:"MPR"} run data modify storage ui: SingleBonus.text set value "自然回復"
    execute if data storage ui: SingleBonus{status:"STR"} run data modify storage ui: SingleBonus.text set value "物理攻撃"
    execute if data storage ui: SingleBonus{status:"INT"} run data modify storage ui: SingleBonus.text set value "魔法攻撃"
    execute if data storage ui: SingleBonus{status:"DEX"} run data modify storage ui: SingleBonus.text set value "器用さ"
    execute if data storage ui: SingleBonus{status:"DEF"} run data modify storage ui: SingleBonus.text set value "防御力"
    execute if data storage ui: SingleBonus{status:"AGI"} run data modify storage ui: SingleBonus.text set value "素早さ"
    execute if data storage ui: SingleBonus{status:"CRT"} run data modify storage ui: SingleBonus.text set value "会心"
    execute if data storage ui: SingleBonus{status:"LUK"} run data modify storage ui: SingleBonus.text set value "幸運"

# ステータスバフカラー
    execute if score $Amplifier Temporary matches 0.. run data modify storage ui: SingleBonus.color set value "#72FF5C"
    execute if score $Amplifier Temporary matches ..-1 run data modify storage ui: SingleBonus.color set value "#FF4D4D"

# ステータスバフの符号
    execute if score $Amplifier Temporary matches 0.. run data modify storage ui: SingleBonus.sign set value "+"
    execute if score $Amplifier Temporary matches ..-1 run data modify storage ui: SingleBonus.sign set value ""