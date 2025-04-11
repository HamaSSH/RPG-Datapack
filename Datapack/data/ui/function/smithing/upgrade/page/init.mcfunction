#> ui:smithing/upgrade/page/init
# UIの初期化

data modify entity @s Items set value [{Slot:0b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:1b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:2b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:3b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:4b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:5b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:6b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:7b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:8b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:9b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:11b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:12b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:13b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:14b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:15b,id:"glass_bottle",components:{"item_model":"smithing_table","custom_data":{ui:{item_type:"upgrade"}},"item_name":'{"text":"強化","bold":true}'}},{Slot:16b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:17b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:18b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:19b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:20b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:21b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:22b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:23b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:24b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:25b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:26b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}}]
data modify entity @s Items append from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.upgrade[0][]

# 強化に必要な金を取得
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data
    execute if data storage ui: ItemData run function ui:smithing/upgrade/item/gold
    execute if score $UpgradeGold Temporary matches 1.. run item modify entity @s container.15 ui:smithing/upgrade_gold

# 強化値の表示
    # --装備時--のLore表示
        item modify entity @s container.15 ui:smithing/upgrade_value/when_equipped
    # 強化後のbonus値の表示
        # base_bonusの強化
            execute if data storage ui: ItemData.base_bonus[] run function ui:smithing/upgrade/item/bonus_status/base with storage ui: ItemData.base_bonus[0]
        # base_bonusとcombine_bonusを足し合わせる
            data modify storage ui: ItemData.new_bonus set value [{status:"HP",value:0},{status:"HPR",value:0},{status:"MP",value:0},{status:"MPR",value:0},{status:"STR",  value:0},{status:"INT",value:0},{status:"DEX",value:0},{status:"DEF",value:0},{status:"AGI",value:0},{status:"CRT",value:0},{status:"LUK",value:0}]
            execute if data storage ui: ItemData.new_base_bonus[] run function ui:smithing/upgrade/item/bonus_status/add_base with storage ui: ItemData.new_base_bonus[0]
            execute if data storage ui: ItemData.combine_bonus[] run function ui:smithing/upgrade/item/bonus_status/add_combine with storage ui: ItemData.combine_bonus[0]
            data remove storage ui: ItemData.new_bonus[{value:0}]
        # bonusに代入/確定
            data modify storage ui: ItemData.bonus set from storage ui: ItemData.new_bonus
        # bonusをもとにlore作成
            execute if data storage ui: ItemData.bonus[] run function ui:smithing/upgrade/item/value/_
    # 区切りLore
        item modify entity @s container.15 ui:smithing/upgrade_value/line
    # レアリティ表示
        execute store result score $ItemRarity Temporary run data get storage ui: ItemData.rarity
        execute store result score $ItemGrade Temporary run data get storage ui: ItemData.grade
        execute if score $ItemGrade Temporary matches 2 run scoreboard players add $ItemRarity Temporary 1
        execute if score $ItemRarity Temporary matches 1 run data modify storage ui: ItemData.rarity_star set value '"\\uE150"'
        execute if score $ItemRarity Temporary matches 2 run data modify storage ui: ItemData.rarity_star set value '"\\uE151"'
        execute if score $ItemRarity Temporary matches 3 run data modify storage ui: ItemData.rarity_star set value '"\\uE152"'
        execute if score $ItemRarity Temporary matches 4 run data modify storage ui: ItemData.rarity_star set value '"\\uE153"'
        execute if score $ItemRarity Temporary matches 5.. run data modify storage ui: ItemData.rarity_star set value '"\\uE154"'
        item modify entity @s container.15 ui:smithing/upgrade_value/rarity

# リセット
    scoreboard players reset $ItemRarity Temporary
    scoreboard players reset $ItemGrade Temporary
    scoreboard players reset $UpgradeGold Temporary
    data remove storage ui: ItemData