#> ui:brewing/brew/potion/buff/_
# クラフトポーションのバフ情報を決定

# バフの順番を固定する用にストレージを用意
    data modify storage ui: PotionData.buff set value [{effect:"poison",duration:0},{effect:"haste",duration:0},{effect:"hunger",duration:0},{effect:"jump_boost",duration:0},{effect:"blindness",duration:0},{effect:"water_breathing",duration:0},{effect:"regeneration",duration:0},{effect:"fire_resistance",duration:0},{effect:"slow_falling",duration:0},{effect:"invisibility",duration:0},{effect:"wither",duration:0},{status:"HP",duration:0},{status:"HPR",duration:0},{status:"MP",duration:0},{status:"MPR",duration:0},{status:"STR",duration:0},{status:"INT",duration:0},{status:"DEX",duration:0},{status:"DEF",duration:0},{status:"AGI",duration:0},{status:"CRT",duration:0},{status:"LUK",duration:0}]

# 素材1つ1つのバフを精査
    data modify storage ui: Ingredient.buff set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.consumables.buff
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/status/1 with storage ui: Ingredient.buff[0]
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/effect/1 with storage ui: Ingredient.buff[0]
    data modify storage ui: Ingredient.buff set from storage ui: NewItems[{Slot:11b}].components.minecraft:custom_data.consumables.buff
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/status/2 with storage ui: Ingredient.buff[0]
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/effect/2 with storage ui: Ingredient.buff[0]
    data modify storage ui: Ingredient.buff set from storage ui: NewItems[{Slot:12b}].components.minecraft:custom_data.consumables.buff
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/status/3 with storage ui: Ingredient.buff[0]
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/effect/3 with storage ui: Ingredient.buff[0]

# 効果0のバフをストレージから削除
    data remove storage ui: PotionData.buff[{duration:0}]
    data remove storage ui: PotionData.buff[{amplifier:0}]

# 総合レアリティに応じて効果UP
    execute store result score $ItemRarity Temporary run data get storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.rarity
    execute store result score $ItemRarity2 Temporary run data get storage ui: NewItems[{Slot:11b}].components.minecraft:custom_data.rarity
    execute store result score $ItemRarity3 Temporary run data get storage ui: NewItems[{Slot:12b}].components.minecraft:custom_data.rarity
    scoreboard players set $RarityBonus Temporary 7
    scoreboard players operation $RarityBonus Temporary += $ItemRarity Temporary
    scoreboard players operation $RarityBonus Temporary += $ItemRarity2 Temporary
    scoreboard players operation $RarityBonus Temporary += $ItemRarity3 Temporary

    function ui:brewing/brew/potion/buff/rarity_bonus
    data modify storage ui: PotionData.buff set from storage ui: NewPotionData.buff

# リセット
    scoreboard players reset $ItemRarity Temporary
    scoreboard players reset $ItemRarity2 Temporary
    scoreboard players reset $ItemRarity3 Temporary
    scoreboard players reset $RarityBonus Temporary
    data remove storage ui: NewPotionData