#> ui:brewing/brew/potion/color
# クラフトポーションの色を決める

# 醸造素材1つ
    execute store result score $ItemR Temporary run data get storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.color.r
    execute store result score $ItemG Temporary run data get storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.color.g
    execute store result score $ItemB Temporary run data get storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.color.b

# 醸造素材2つ
    execute store result score $Item2R Temporary run data get storage ui: NewItems[{Slot:11b}].components.minecraft:custom_data.ui.color.r
    execute store result score $Item2G Temporary run data get storage ui: NewItems[{Slot:11b}].components.minecraft:custom_data.ui.color.g
    execute store result score $Item2B Temporary run data get storage ui: NewItems[{Slot:11b}].components.minecraft:custom_data.ui.color.b
    scoreboard players operation $ItemR Temporary += $Item2R Temporary
    scoreboard players operation $ItemG Temporary += $Item2G Temporary
    scoreboard players operation $ItemB Temporary += $Item2B Temporary

# 醸造素材3つ
    execute store result score $Item3R Temporary run data get storage ui: NewItems[{Slot:12b}].components.minecraft:custom_data.ui.color.r
    execute store result score $Item3G Temporary run data get storage ui: NewItems[{Slot:12b}].components.minecraft:custom_data.ui.color.g
    execute store result score $Item3B Temporary run data get storage ui: NewItems[{Slot:12b}].components.minecraft:custom_data.ui.color.b
    scoreboard players operation $ItemR Temporary += $Item3R Temporary
    scoreboard players operation $ItemG Temporary += $Item3G Temporary
    scoreboard players operation $ItemB Temporary += $Item3B Temporary

# CustomPotionColorを決定
    scoreboard players operation $ItemR Temporary /= $BrewIngredients Temporary
    scoreboard players operation $ItemG Temporary /= $BrewIngredients Temporary
    scoreboard players operation $ItemB Temporary /= $BrewIngredients Temporary
    scoreboard players operation $ItemR Temporary *= #65536 Constant
    scoreboard players operation $ItemG Temporary *= #256 Constant
    scoreboard players operation $ItemRGB Temporary += $ItemR Temporary
    scoreboard players operation $ItemRGB Temporary += $ItemG Temporary
    scoreboard players operation $ItemRGB Temporary += $ItemB Temporary
    execute store result storage ui: PotionData.Color int 1 run scoreboard players get $ItemRGB Temporary

# リセット
    scoreboard players reset $ItemR Temporary
    scoreboard players reset $ItemG Temporary
    scoreboard players reset $ItemB Temporary
    scoreboard players reset $Item2R Temporary
    scoreboard players reset $Item2G Temporary
    scoreboard players reset $Item2B Temporary
    scoreboard players reset $Item3R Temporary
    scoreboard players reset $Item3G Temporary
    scoreboard players reset $Item3B Temporary
    scoreboard players reset $ItemRGB Temporary