##########
#>
#

# bonusタグ消す
    data remove storage menu:temp Data.refresh[{Slot:10b}].tag.bonus
# 新しいbonusタグを代入
    execute unless score $HPCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.hp int 1 run scoreboard players get $HPCombine Temporary
    execute unless score $MPCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.mp int 1 run scoreboard players get $MPCombine Temporary
    execute unless score $HPRegenCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.hp_regen int 1 run scoreboard players get $HPRegenCombine Temporary
    execute unless score $MPRegenCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.mp_regen int 1 run scoreboard players get $MPRegenCombine Temporary
    execute unless score $ADCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.ad int 1 run scoreboard players get $ADCombine Temporary
    execute unless score $APCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.ap int 1 run scoreboard players get $APCombine Temporary
    execute unless score $DEXCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.dex int 1 run scoreboard players get $DEXCombine Temporary
    execute unless score $DEFCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.def int 1 run scoreboard players get $DEFCombine Temporary
    execute unless score $SPDCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.spd int 1 run scoreboard players get $SPDCombine Temporary
    execute unless score $CRTCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.crt int 1 run scoreboard players get $CRTCombine Temporary
    execute unless score $LUKCombine Temporary matches 0 store result storage menu:temp Data.refresh[{Slot:10b}].tag.bonus.luk int 1 run scoreboard players get $LUKCombine Temporary