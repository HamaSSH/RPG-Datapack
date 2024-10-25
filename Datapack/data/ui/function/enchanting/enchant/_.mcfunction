#> ui:enchanting/enchant/_
# エンチャント処理

# 素材アイテムのエンチャント取得
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data
    data modify storage ui: ItemData.lore set from storage ui: NewItems[{Slot:10b}].components.minecraft:lore
    data modify storage ui: Material set from storage ui: NewItems[{Slot:12b}].components.minecraft:custom_data
    data modify storage ui: Material.lore set from storage ui: NewItems[{Slot:12b}].components.minecraft:lore

# エンチャント上書き処理
    # camera_overlay
        data remove storage ui: NewItems[{Slot:10b}].components.minecraft:equippable.camera_overlay
        execute if data storage ui: ItemData.weapon run data remove storage ui: NewItems[{Slot:10b}].components.minecraft:equippable.slot
        execute if data storage ui: Material.custom_enchant{id:"bad_sight"} run function ui:enchanting/enchant/camera_overlay
    # custom_data
        data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.custom_enchant set from storage ui: Material.custom_enchant
    # enchantment_glint_override
        data modify storage ui: NewItems[{Slot:10b}].components.minecraft:enchantment_glint_override set value true
    # lore
        # 説明文
            data modify storage ui: NewLore append from storage ui: ItemData.lore[0]
            data modify storage ui: NewLore append from storage ui: ItemData.lore[1]
            execute if data storage ui: ItemData{lore_length:2} run data modify storage ui: NewLore append from storage ui: ItemData.lore[2]
            execute if data storage ui: ItemData{lore_length:5} run data modify storage ui: NewLore append from storage ui: ItemData.lore[2]
        # エンチャント文
            execute if data storage ui: Material{lore_length:4} run data modify storage ui: NewLore append from storage ui: Material.lore[2]
            execute if data storage ui: Material{lore_length:4} run data modify storage ui: NewLore append from storage ui: Material.lore[3]
            execute if data storage ui: Material{lore_length:5} run data modify storage ui: NewLore append from storage ui: Material.lore[3]
            execute if data storage ui: Material{lore_length:5} run data modify storage ui: NewLore append from storage ui: Material.lore[4]
        # 残り部分
            data modify storage ui: NewLore append value '{"text": "                          ","color": "dark_gray","strikethrough": true}'
            execute store result score $LoreLength Temporary run data get storage ui: ItemData.lore_length
            scoreboard players add $LoreLength Temporary 1
            function ui:enchanting/enchant/lore/remove
            function ui:enchanting/enchant/lore/add
        data modify storage ui: NewItems[{Slot:10b}].components.minecraft:lore set from storage ui: NewLore
    # lore_length
        execute store result score $NewLoreLength Temporary run data get storage ui: ItemData.lore_length
        execute if score $NewLoreLength Temporary matches 1..2 run scoreboard players add $NewLoreLength Temporary 3
        execute store result storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.lore_length int 1 run scoreboard players get $NewLoreLength Temporary

# 素材アイテムの消費
    execute store result storage ui: NewItems[{Slot:12b}].count byte 0.999 run data get storage ui: NewItems[{Slot:12b}].count
    execute store result storage ui: NewItems[{Slot:13b}].count byte 0.999 run data get storage ui: NewItems[{Slot:13b}].count
    data remove storage ui: NewItems[{count:0b}]

# 演出
    playsound entity.elder_guardian.curse master @a ~ ~ ~ 0.1 1.8
    playsound block.enchantment_table.use master @a ~ ~ ~ 0.4 1.2
    playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.5 1.75
    playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 1.5

# リセット
    tag @s remove PlaysoundOnce
    scoreboard players reset $LoreLength Temporary
    scoreboard players reset $NewLoreLength Temporary
    data remove storage ui: ItemData
    data remove storage ui: Material
    data remove storage ui: NewLore