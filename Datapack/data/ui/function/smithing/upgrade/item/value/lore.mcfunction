#> ui:smithing/upgrade/item/value/lore
# 補正ステータスのLoreの生成

# アイコン
    execute if data storage ui: SingleBonus{status:"HP"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE100\\uF823"'
    execute if data storage ui: SingleBonus{status:"HPR"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE101\\uF823"'
    execute if data storage ui: SingleBonus{status:"MP"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE102\\uF823"'
    execute if data storage ui: SingleBonus{status:"MPR"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE103\\uF823"'
    execute if data storage ui: SingleBonus{status:"STR"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE104\\uF823"'
    execute if data storage ui: SingleBonus{status:"INT"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE105\\uF823"'
    execute if data storage ui: SingleBonus{status:"DEX"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE106\\uF823"'
    execute if data storage ui: SingleBonus{status:"DEF"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE108\\uF823"'
    execute if data storage ui: SingleBonus{status:"AGI"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE109\\uF823"'
    execute if data storage ui: SingleBonus{status:"CRT"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE10A\\uF823"'
    execute if data storage ui: SingleBonus{status:"LUK"} run data modify storage ui: SingleBonus.icon set value '"\\uF823\\uE10B\\uF823"'

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