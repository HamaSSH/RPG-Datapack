# Data.Items[{Slot:10b}]にあるアイテムのbonus_statusを取得
    execute store result score $HPCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.hp
    execute store result score $MPCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.mp
    execute store result score $HPRegenCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.hp_regen
    execute store result score $MPRegenCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.mp_regen
    execute store result score $ADCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.ad
    execute store result score $APCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.ap
    execute store result score $DEXCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.dex
    execute store result score $DEFCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.def
    execute store result score $SPDCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.spd
    execute store result score $CRTCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.crt
    execute store result score $LUKCombine Temporary run data get storage menu:temp Data.Items[{Slot:10b}].tag.bonus.luk