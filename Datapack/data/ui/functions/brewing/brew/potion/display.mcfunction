#> ui:brewing/brew/potion/display
# クラフトポーションのdisplayを設定

# 上3行は固定
    data modify storage ui: PotionData.Lore append value '{"text":"醸造台で作ったポーション。","color":"#D8D8D8","italic":false}'
    data modify storage ui: PotionData.Lore append value '{"text":"綺麗ではないが絶妙な色だ。","color":"#D8D8D8","italic":false}'
    data modify storage ui: PotionData.Lore append value '[{"text":"","color":"dark_gray","italic": false,"strikethrough":true},{"text":"         "},{"text":"\\uF822消費時\\uF822","color":"#777777","strikethrough":false},{"text":"         "}]'

# バフの情報
    data modify storage ui: PotionData.Lore append from storage ui: PotionData.EffectLore[]
    data modify storage ui: PotionData.Lore append from storage ui: PotionData.StatusLore[]

# アイテムのレアリティの計算
    execute store result score $ItemRarity Temporary run data get storage ui: NewItems[{Slot:10b}].tag.Rarity
    execute store result score $ItemRarity2 Temporary run data get storage ui: NewItems[{Slot:11b}].tag.Rarity
    execute store result score $ItemRarity3 Temporary run data get storage ui: NewItems[{Slot:12b}].tag.Rarity
    scoreboard players operation $ItemRarity Temporary += $ItemRarity2 Temporary
    scoreboard players operation $ItemRarity Temporary += $ItemRarity3 Temporary
    scoreboard players operation $ItemRarity Temporary /= #3 Constant

# アイテムのレアリティごとの名前の色
    execute if score $ItemRarity Temporary matches 1 run data modify storage ui: PotionData.Name set value '{"text":"クラフトポーション","color":"white","italic":false}'
    execute if score $ItemRarity Temporary matches 2 run data modify storage ui: PotionData.Name set value '{"text":"クラフトポーション","color":"#6FE58D","italic":false}'
    execute if score $ItemRarity Temporary matches 3 run data modify storage ui: PotionData.Name set value '{"text":"クラフトポーション","color":"#7C7CE8","italic":false}'
    execute if score $ItemRarity Temporary matches 4 run data modify storage ui: PotionData.Name set value '{"text":"クラフトポーション","color":"#F65A5A","italic":false}'
    execute if score $ItemRarity Temporary matches 5 run data modify storage ui: PotionData.Name set value '{"text":"クラフトポーション","color":"#F7F76D","italic":false}'

# 下2行は固定
    data modify storage ui: PotionData.Lore append value '{"text": "                          ","color": "dark_gray","strikethrough": true}'
    execute store result storage ui: PotionData.Rarity.Value int 0.999 run scoreboard players get $ItemRarity Temporary
    function ui:brewing/brew/potion/rarity with storage ui: PotionData.Rarity

# リセット
    scoreboard players reset $ItemRarity Temporary
    scoreboard players reset $ItemRarity2 Temporary
    scoreboard players reset $ItemRarity3 Temporary