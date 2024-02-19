#> ui:smithing/upgrade/item/bonus_status/lore
# 補正ステータスのLoreの生成

# アイコン
    execute if data storage ui: SingleBonus{Status:"HP"} run data modify storage ui: ItemData.Bonus[0].Icon set value "100"
    execute if data storage ui: SingleBonus{Status:"HPR"} run data modify storage ui: ItemData.Bonus[0].Icon set value "101"
    execute if data storage ui: SingleBonus{Status:"MP"} run data modify storage ui: ItemData.Bonus[0].Icon set value "102"
    execute if data storage ui: SingleBonus{Status:"MPR"} run data modify storage ui: ItemData.Bonus[0].Icon set value "103"
    execute if data storage ui: SingleBonus{Status:"STR"} run data modify storage ui: ItemData.Bonus[0].Icon set value "104"
    execute if data storage ui: SingleBonus{Status:"INT"} run data modify storage ui: ItemData.Bonus[0].Icon set value "105"
    execute if data storage ui: SingleBonus{Status:"DEX"} run data modify storage ui: ItemData.Bonus[0].Icon set value "106"
    execute if data storage ui: SingleBonus{Status:"DEF"} run data modify storage ui: ItemData.Bonus[0].Icon set value "108"
    execute if data storage ui: SingleBonus{Status:"AGI"} run data modify storage ui: ItemData.Bonus[0].Icon set value "109"
    execute if data storage ui: SingleBonus{Status:"CRT"} run data modify storage ui: ItemData.Bonus[0].Icon set value "10A"
    execute if data storage ui: SingleBonus{Status:"LUK"} run data modify storage ui: ItemData.Bonus[0].Icon set value "10B"

# テキスト
    execute if data storage ui: SingleBonus{Status:"HP"} run data modify storage ui: ItemData.Bonus[0].Text set value "最大ＨＰ"
    execute if data storage ui: SingleBonus{Status:"HPR"} run data modify storage ui: ItemData.Bonus[0].Text set value "自然回復"
    execute if data storage ui: SingleBonus{Status:"MP"} run data modify storage ui: ItemData.Bonus[0].Text set value "最大ＭＰ"
    execute if data storage ui: SingleBonus{Status:"MPR"} run data modify storage ui: ItemData.Bonus[0].Text set value "自然回復"
    execute if data storage ui: SingleBonus{Status:"STR"} run data modify storage ui: ItemData.Bonus[0].Text set value "物理攻撃"
    execute if data storage ui: SingleBonus{Status:"INT"} run data modify storage ui: ItemData.Bonus[0].Text set value "魔法攻撃"
    execute if data storage ui: SingleBonus{Status:"DEX"} run data modify storage ui: ItemData.Bonus[0].Text set value "器用さ"
    execute if data storage ui: SingleBonus{Status:"DEF"} run data modify storage ui: ItemData.Bonus[0].Text set value "防御力"
    execute if data storage ui: SingleBonus{Status:"AGI"} run data modify storage ui: ItemData.Bonus[0].Text set value "素早さ"
    execute if data storage ui: SingleBonus{Status:"CRT"} run data modify storage ui: ItemData.Bonus[0].Text set value "会心"
    execute if data storage ui: SingleBonus{Status:"LUK"} run data modify storage ui: ItemData.Bonus[0].Text set value "幸運"

# ステータスバフの強さ
    execute store result score $Amplifier Temporary run data get storage ui: SingleBonus.Value
    execute store result storage ui: ItemData.Bonus[0].Amplifier int 1.3 run scoreboard players get $Amplifier Temporary

# ステータスバフカラー
    execute if score $Amplifier Temporary matches 0.. run data modify storage ui: ItemData.Bonus[0].Color set value "#72FF5C"
    execute if score $Amplifier Temporary matches ..-1 run data modify storage ui: ItemData.Bonus[0].Color set value "#FF4D4D"

# ステータスバフの符号
    execute if score $Amplifier Temporary matches 0.. run data modify storage ui: ItemData.Bonus[0].Sign set value "+"
    execute if score $Amplifier Temporary matches ..-1 run data modify storage ui: ItemData.Bonus[0].Sign set value ""

# リセット
    scoreboard players reset $Amplifier Temporary