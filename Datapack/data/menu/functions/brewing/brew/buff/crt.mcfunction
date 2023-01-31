##########
#>
#

# ポーションのバフ
    execute store result score $CRTBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"crt"}].value
    execute store result score $CRTDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"crt"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ
    scoreboard players operation $CRTBuff Temporary += $AddBuff Temporary
    scoreboard players operation $CRTDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"crt"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"crt"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $CRTBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $CRTDuration Temporary
# リセット
    scoreboard players reset $CRTBuff
    scoreboard players reset $CRTDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration