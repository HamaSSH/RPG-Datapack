#> ui:smithing/combine/_
# 合成処理

# 強化するアイテムのデータ→storage
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data
    data modify storage ui: ItemData.display.Name set from storage ui: NewItems[{Slot:10b}].components.minecraft:item_name
    data modify storage ui: ItemData.display.Lore set from storage ui: NewItems[{Slot:10b}].components.minecraft:lore
    data remove storage ui: ItemData.AttributeModifiers

# 合成スロットの保存
    data remove storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.combine[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.combine append from storage ui: NewItems[{Slot:12b}]
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.combine append from storage ui: NewItems[{Slot:13b}]
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.combine append from storage ui: NewItems[{Slot:14b}]

# アイテムの説明文はそのまま
    execute store result score $ItemLore Temporary run data get storage ui: ItemData.lore_length
    execute if score $ItemLore Temporary matches 1.. run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[0]
    execute if score $ItemLore Temporary matches 2.. run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[1]
    execute if score $ItemLore Temporary matches 3.. run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[2]
    execute if score $ItemLore Temporary matches 4.. run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[3]
    execute if score $ItemLore Temporary matches 5 run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[4]
    execute if score $ItemLore Temporary matches 1..2 run data modify storage ui: Result.display.Lore append value '[{"text":"","color":"dark_gray","italic": false,"strikethrough":true},{"text":"         "},{"text":"\\uF822装備時\\uF822","color":"#777777","strikethrough":false},{"text":"         "}]'
    execute if score $ItemLore Temporary matches 5 run data modify storage ui: Result.display.Lore append value '[{"text":"","color":"dark_gray","italic": false,"strikethrough":true},{"text":"                          "}]'
    data remove storage ui: ItemData.display.Lore

# アイテムの合成
    data modify storage ui: ItemData.Queue append from storage ui: NewItems[{Slot:12b}].components.minecraft:custom_data.bonus[]
    data modify storage ui: ItemData.Queue append from storage ui: NewItems[{Slot:13b}].components.minecraft:custom_data.bonus[]
    data modify storage ui: ItemData.Queue append from storage ui: NewItems[{Slot:14b}].components.minecraft:custom_data.bonus[]
    # 素材アイテムの補正値combine_bonusの取得
        data modify storage ui: ItemData.combine_bonus set value [{status:"HP",value:0},{status:"HPR",value:0},{status:"MP",value:0},{status:"MPR",value:0},{status:"STR",value:0},{status:"INT",value:0},{status:"DEX",value:0},{status:"DEF",value:0},{status:"AGI",value:0},{status:"CRT",value:0},{status:"LUK",value:0}]
        execute if data storage ui: ItemData.Queue[] run function ui:smithing/combine/item/bonus_status/extra/add with storage ui: ItemData.Queue[0]
        data remove storage ui: ItemData.combine_bonus[{value:0}]
    # combine_bonusを確定
        data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.combine_bonus set from storage ui: ItemData.combine_bonus
    # 基本値base_bonusとcombine_bonusを足し合わせる
        data modify storage ui: ItemData.new_bonus set value [{status:"HP",value:0},{status:"HPR",value:0},{status:"MP",value:0},{status:"MPR",value:0},{status:"STR",value:0},{status:"INT",value:0},{status:"DEX",value:0},{status:"DEF",value:0},{status:"AGI",value:0},{status:"CRT",value:0},{status:"LUK",value:0}]
        execute if data storage ui: ItemData.base_bonus[] run function ui:smithing/combine/item/bonus_status/new/base_value with storage ui: ItemData.base_bonus[0]
        execute if data storage ui: ItemData.combine_bonus[] run function ui:smithing/combine/item/bonus_status/new/combine_bonus with storage ui: ItemData.combine_bonus[0]
        data remove storage ui: ItemData.new_bonus[{value:0}]
    # bonusに代入/確定
        data modify storage ui: ItemData.bonus set from storage ui: ItemData.new_bonus
        data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.bonus set from storage ui: ItemData.bonus

# bonusをもとにlore作成
    execute if data storage ui: ItemData.bonus[] run function ui:smithing/combine/item/bonus_status/_

# アイテム名
    data modify storage ui: Result.display.Name set from storage ui: ItemData.display.Name

# アイテムLoreの下2行
    data modify storage ui: Result.display.Lore append value '{"text": "                          ","color": "dark_gray","strikethrough": true}'
    execute store result storage ui: ItemData.rarity int 0.999 run data get storage ui: ItemData.rarity
    function ui:smithing/upgrade/item/rarity with storage ui: ItemData

# displayの適用
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:item_name set from storage ui: Result.display.Name
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:lore set from storage ui: Result.display.Lore

# 演出
    execute if entity @s[tag=PlaysoundOnce] run playsound entity.villager.work_weaponsmith master @a ~ ~ ~ 0.4 1.1
    execute if entity @s[tag=PlaysoundOnce] run playsound block.anvil.place master @a ~ ~ ~ 0.3 1.4

# リセット
    tag @s remove PlaysoundOnce
    data remove storage ui: ItemData
    data remove storage ui: Result
    scoreboard players reset $ItemLore Temporary
    scoreboard players reset $ItemBonus Temporary