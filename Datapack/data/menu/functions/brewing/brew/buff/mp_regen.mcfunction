##########
#>
#

# ポーションのバフ
    execute store result score $MPRegenBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"mp_regen"}].value
    execute store result score $MPRegenDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"mp_regen"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ
    scoreboard players operation $MPRegenBuff Temporary += $AddBuff Temporary
    scoreboard players operation $MPRegenDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"mp_regen"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"mp_regen"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $MPRegenBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $MPRegenDuration Temporary
# リセット
    scoreboard players reset $MPRegenBuff
    scoreboard players reset $MPRegenDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration