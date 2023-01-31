##########
#>
#

# Inventory → storage
    data modify storage player:temp Inventory set from entity @s Inventory
# 基礎ステータス(regen)
    scoreboard players operation $HPRegen Temporary = @s hp_regen_base
    scoreboard players operation $MPRegen Temporary = @s mp_regen_base
# 装備品の補正ステータス(regen)
    # ヘルメット
        execute if data storage player:temp Inventory.[{Slot:103b}].tag{equipment:"helmet"} run data modify storage player:temp helmet set from storage player:temp Inventory[{Slot:103b}].tag.bonus
        execute if data storage player:temp helmet.hp_regen store result score $Bonus Temporary run data get storage player:temp helmet.hp_regen
        execute if data storage player:temp helmet.hp_regen run scoreboard players operation $HPRegen Temporary += $Bonus Temporary
        execute if data storage player:temp helmet.mp_regen store result score $Bonus Temporary run data get storage player:temp helmet.mp_regen
        execute if data storage player:temp helmet.mp_regen run scoreboard players operation $MPRegen Temporary += $Bonus Temporary
    # 装備品(スロット9)
        execute if data storage player:temp Inventory[{Slot:9b}].tag{equipment:"accessory"} run data modify storage player:temp accessory set from storage player:temp Inventory[{Slot:9b}].tag.bonus
        execute if data storage player:temp accessory.hp_regen store result score $Bonus Temporary run data get storage player:temp accessory.hp_regen
        execute if data storage player:temp accessory.hp_regen run scoreboard players operation $HPRegen Temporary += $Bonus Temporary
        execute if data storage player:temp accessory.mp_regen store result score $Bonus Temporary run data get storage player:temp accessory.mp_regen
        execute if data storage player:temp accessory.mp_regen run scoreboard players operation $MPRegen Temporary += $Bonus Temporary
    # 装備品(スロット10)
        execute if data storage player:temp Inventory[{Slot:10b}].tag{equipment:"accessory"} run data modify storage player:temp accessory set from storage player:temp Inventory[{Slot:10b}].tag.bonus
        execute if data storage player:temp accessory.hp_regen store result score $Bonus Temporary run data get storage player:temp accessory.hp_regen
        execute if data storage player:temp accessory.hp_regen run scoreboard players operation $HPRegen Temporary += $Bonus Temporary
        execute if data storage player:temp accessory.mp_regen store result score $Bonus Temporary run data get storage player:temp accessory.mp_regen
        execute if data storage player:temp accessory.mp_regen run scoreboard players operation $MPRegen Temporary += $Bonus Temporary
    # 装備品(スロット11)
        execute if data storage player:temp Inventory[{Slot:11b}].tag{equipment:"accessory"} run data modify storage player:temp accessory set from storage player:temp Inventory[{Slot:11b}].tag.bonus
        execute if data storage player:temp accessory.hp_regen store result score $Bonus Temporary run data get storage player:temp accessory.hp_regen
        execute if data storage player:temp accessory.hp_regen run scoreboard players operation $HPRegen Temporary += $Bonus Temporary
        execute if data storage player:temp accessory.mp_regen store result score $Bonus Temporary run data get storage player:temp accessory.mp_regen
        execute if data storage player:temp accessory.mp_regen run scoreboard players operation $MPRegen Temporary += $Bonus Temporary
# リセット
    data remove storage player:temp Inventory
    data remove storage player:temp helmet
    data remove storage player:temp accessory
    scoreboard players reset $Bonus Temporary