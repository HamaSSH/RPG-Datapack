##########
#>
#

# スロット12の未合成アイテムを合成
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.hp store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.hp
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.hp run scoreboard players operation $HPCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.mp store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.mp
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.mp run scoreboard players operation $MPCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.hp_regen store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.hp_regen
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.hp_regen run scoreboard players operation $HPRegenCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.mp_regen store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.mp_regen
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.mp_regen run scoreboard players operation $MPRegenCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.ad store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.ad
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.ad run scoreboard players operation $ADCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.ap store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.ap
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.ap run scoreboard players operation $APCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.dex store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.dex
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.dex run scoreboard players operation $DEXCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.def store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.def
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.def run scoreboard players operation $DEFCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.spd store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.spd
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.spd run scoreboard players operation $SPDCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.crt store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.crt
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.crt run scoreboard players operation $CRTCombine Temporary += $Bonus Temporary
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.luk store result score $Bonus Temporary run data get storage menu:temp Data.Items[{Slot:12b}].tag.bonus.luk
    execute if data storage menu:temp Data.Items[{Slot:12b}].tag.bonus.luk run scoreboard players operation $LUKCombine Temporary += $Bonus Temporary