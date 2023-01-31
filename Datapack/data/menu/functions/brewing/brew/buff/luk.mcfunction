##########
#>
#

# ポーションのバフ
    execute store result score $LUKBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"luk"}].value
    execute store result score $LUKDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"luk"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ
    scoreboard players operation $LUKBuff Temporary += $AddBuff Temporary
    scoreboard players operation $LUKDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"luk"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"luk"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $LUKBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $LUKDuration Temporary
# リセット
    scoreboard players reset $LUKBuff
    scoreboard players reset $LUKDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration