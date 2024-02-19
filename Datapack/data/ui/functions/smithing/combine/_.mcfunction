#> ui:smithing/combine/_
# 合成処理

# 強化するアイテムのデータ→storage
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].tag
    data remove storage ui: ItemData.AttributeModifiers

# 合成スロットの保存
    data remove storage ui: NewItems[{Slot:10b}].tag.UI.Combine[{tag:{UI:{Combinable:1b}}}]
    data modify storage ui: NewItems[{Slot:10b}].tag.UI.Combine append from storage ui: NewItems[{Slot:12b}]
    data modify storage ui: NewItems[{Slot:10b}].tag.UI.Combine append from storage ui: NewItems[{Slot:13b}]
    data modify storage ui: NewItems[{Slot:10b}].tag.UI.Combine append from storage ui: NewItems[{Slot:14b}]

# アイテムの説明文はそのまま
    execute store result score $ItemLore Temporary if data storage ui: ItemData.display.Lore[]
    execute store result score $ItemBonus Temporary if data storage ui: ItemData.Bonus[]
    scoreboard players operation $ItemLore Temporary -= $ItemBonus Temporary
    scoreboard players remove $ItemLore Temporary 3
    execute if score $ItemLore Temporary matches 1.. run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[0]
    execute if score $ItemLore Temporary matches 2 run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[1]
    data modify storage ui: Result.display.Lore append value '[{"text":"","color":"dark_gray","italic": false,"strikethrough":true},{"text":"         "},{"text":"\\uF822装備時\\uF822","color":"#777777","strikethrough":false},{"text":"         "}]'
    data remove storage ui: ItemData.display.Lore

# アイテムの合成
    data remove storage ui: ItemData.ExBonus
    data modify storage ui: ItemData.Queue append from storage ui: NewItems[{Slot:12b}].tag.Bonus[]
    data modify storage ui: ItemData.Queue append from storage ui: NewItems[{Slot:13b}].tag.Bonus[]
    data modify storage ui: ItemData.Queue append from storage ui: NewItems[{Slot:14b}].tag.Bonus[]
    execute if data storage ui: ItemData.Queue[] run function ui:smithing/combine/item/bonus_status/extra/add with storage ui: ItemData.Queue[0]
    data modify storage ui: NewItems[{Slot:10b}].tag.ExBonus set from storage ui: ItemData.ExBonus
    execute unless data storage ui: ItemData.Bonus[] run function ui:smithing/upgrade/item/bonus_status/new
    execute if data storage ui: ItemData.Bonus[] run function ui:smithing/combine/item/bonus_status/_

# アイテム名
    data modify storage ui: Result.display.Name set from storage ui: ItemData.display.Name

# アイテムLoreの下2行
    data modify storage ui: Result.display.Lore append value '{"text": "                          ","color": "dark_gray","strikethrough": true}'
    execute store result storage ui: ItemData.Rarity int 0.999 run data get storage ui: ItemData.Rarity
    function ui:smithing/upgrade/item/rarity with storage ui: ItemData

# displayの適用
    data modify storage ui: NewItems[{Slot:10b}].tag.display set from storage ui: Result.display

# 演出
    playsound entity.villager.work_weaponsmith master @p ~ ~ ~ 0.8 1.2
    playsound block.anvil.place master @p ~ ~ ~ 0.7 1.8

# リセット
    data remove storage ui: Result
    scoreboard players reset $ItemLore Temporary
    scoreboard players reset $ItemBonus Temporary