#> ui:smithing/upgrade/page/init
# UIの初期化

data modify entity @s Items set value [{Slot:0b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:1b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:2b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:3b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:4b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:5b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:6b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:7b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:8b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:9b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:11b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:12b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:13b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:14b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:15b,id:"glass_bottle",components:{"minecraft:custom_model_data":3005,"minecraft:custom_data":{ui:{item_type:"upgrade"}},"minecraft:item_name":'{"text":"強化","bold":true}'}},{Slot:16b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:17b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:18b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:19b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:20b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:21b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:22b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:23b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:24b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:25b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:26b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}}]
data modify entity @s Items append from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.upgrade[0][]

# 強化に必要な金を取得
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data
    execute if data storage ui: ItemData run function ui:smithing/upgrade/item/gold
    execute if score $UpgradeGold Temporary matches 1.. run item modify entity @s container.15 ui:smithing/upgrade_gold

# 強化値の表示
    item modify entity @s container.15 ui:smithing/upgrade_value/line
    # アイテムの強化
    # base_bonusの強化
        execute if data storage ui: ItemData.base_bonus[] run function ui:smithing/upgrade/item/bonus_status/base with storage ui: ItemData.base_bonus[0]
    # base_bonusとcombine_bonusを足し合わせる
        data modify storage ui: ItemData.new_bonus set value [{status:"HP",value:0},{status:"HPR",value:0},{status:"MP",value:0},{status:"MPR",value:0},{status:"STR",value:0},{status:"INT",value:0},{status:"DEX",value:0},{status:"DEF",value:0},{status:"AGI",value:0},{status:"CRT",value:0},{status:"LUK",value:0}]
        execute if data storage ui: ItemData.new_base_bonus[] run function ui:smithing/upgrade/item/bonus_status/add_base with storage ui: ItemData.new_base_bonus[0]
        execute if data storage ui: ItemData.combine_bonus[] run function ui:smithing/upgrade/item/bonus_status/add_combine with storage ui: ItemData.combine_bonus[0]
        data remove storage ui: ItemData.new_bonus[{value:0}]
    # bonusに代入/確定
        data modify storage ui: ItemData.bonus set from storage ui: ItemData.new_bonus
    # bonusをもとにlore作成
        execute if data storage ui: ItemData.bonus[] run function ui:smithing/upgrade/item/value/_
    item modify entity @s container.15 ui:smithing/upgrade_value/line

# リセット
    scoreboard players reset $ItemRarity Temporary
    scoreboard players reset $ItemGrade Temporary
    scoreboard players reset $UpgradeGold Temporary
    data remove storage ui: ItemData