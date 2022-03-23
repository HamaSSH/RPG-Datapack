# Inventory → storage
    data modify storage player:temp Data.Inventory set from entity @s Inventory
# 基礎ステータス(regen)
    scoreboard players operation $HPRegen Temporary = @s hp_regen_base
    scoreboard players operation $MPRegen Temporary = @s mp_regen_base
# 装備品の補正ステータス(regen)
    # ヘルメット
        execute if data storage player:temp Data.Inventory.[{Slot:103b}].tag{equipment:"helmet"} run data modify storage player:temp Data.helmet set from storage player:temp Data.Inventory[{Slot:103b}].tag.bonus
        execute if data storage player:temp Data.helmet.hp_regen store result score $Bonus Temporary run data get storage player:temp Data.helmet.hp_regen
        execute if data storage player:temp Data.helmet.hp_regen run scoreboard players operation $HPRegen Temporary += $Bonus Temporary
        execute if data storage player:temp Data.helmet.mp_regen store result score $Bonus Temporary run data get storage player:temp Data.helmet.mp_regen
        execute if data storage player:temp Data.helmet.mp_regen run scoreboard players operation $MPRegen Temporary += $Bonus Temporary
    # 装備品(スロット9)
        execute if data storage player:temp Data.Inventory[{Slot:9b}].tag.accessory run data modify storage player:temp Data.accessory set from storage player:temp Data.Inventory[{Slot:9b}].tag.bonus
        execute if data storage player:temp Data.accessory.hp_regen store result score $Bonus Temporary run data get storage player:temp Data.accessory.hp_regen
        execute if data storage player:temp Data.accessory.hp_regen run scoreboard players operation $HPRegen Temporary += $Bonus Temporary
        execute if data storage player:temp Data.accessory.mp_regen store result score $Bonus Temporary run data get storage player:temp Data.accessory.mp_regen
        execute if data storage player:temp Data.accessory.mp_regen run scoreboard players operation $MPRegen Temporary += $Bonus Temporary
    # 装備品(スロット10)
        execute if data storage player:temp Data.Inventory[{Slot:10b}].tag.accessory run data modify storage player:temp Data.accessory set from storage player:temp Data.Inventory[{Slot:10b}].tag.bonus
        execute if data storage player:temp Data.accessory.hp_regen store result score $Bonus Temporary run data get storage player:temp Data.accessory.hp_regen
        execute if data storage player:temp Data.accessory.hp_regen run scoreboard players operation $HPRegen Temporary += $Bonus Temporary
        execute if data storage player:temp Data.accessory.mp_regen store result score $Bonus Temporary run data get storage player:temp Data.accessory.mp_regen
        execute if data storage player:temp Data.accessory.mp_regen run scoreboard players operation $MPRegen Temporary += $Bonus Temporary
    # 装備品(スロット11)
        execute if data storage player:temp Data.Inventory[{Slot:11b}].tag.accessory run data modify storage player:temp Data.accessory set from storage player:temp Data.Inventory[{Slot:11b}].tag.bonus
        execute if data storage player:temp Data.accessory.hp_regen store result score $Bonus Temporary run data get storage player:temp Data.accessory.hp_regen
        execute if data storage player:temp Data.accessory.hp_regen run scoreboard players operation $HPRegen Temporary += $Bonus Temporary
        execute if data storage player:temp Data.accessory.mp_regen store result score $Bonus Temporary run data get storage player:temp Data.accessory.mp_regen
        execute if data storage player:temp Data.accessory.mp_regen run scoreboard players operation $MPRegen Temporary += $Bonus Temporary
# リセット
    data remove storage player:temp Data
    scoreboard players reset $Bonus Temporary