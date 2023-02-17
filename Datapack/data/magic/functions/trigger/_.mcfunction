#> magic:trigger/_
# 魔法アイテムを右クリックした際のトリガー処理

# TODO: id → ID
# 魔法のデータを取得
    data modify storage magic: ItemData set from entity @s Inventory[{Slot:-106b}]
    data modify storage magic: Data set from storage magic: ItemData.tag.Magic
    data modify storage asset:magic id set from storage magic: ItemData.tag.CustomModelData
    execute store result storage magic: UsedTick int 1 run time query gametime

# 魔法の呼び出し
    function magic:trigger/cd_check/_
    execute if entity @s[tag=CDCheck] run function magic:trigger/mp_check/_
    # トリガー
        tag @s add Target
        execute if entity @s[tag=CDCheck,tag=MPCheck] run function #asset:magic/trigger
    # クールダウン
        execute if entity @s[tag=CDCheck,tag=MPCheck] run item modify entity @s weapon.offhand magic:store_gametime
    # 属性を纏う
        execute if entity @s[tag=CDCheck,tag=MPCheck] run function magic:element

# リセット
    data remove storage magic: ItemData
    data remove storage magic: Data
    data remove storage asset:magic ID
    data remove storage magic: UsedTick
    tag @s remove Target
    tag @s remove CDCheck
    tag @s remove MPCheck