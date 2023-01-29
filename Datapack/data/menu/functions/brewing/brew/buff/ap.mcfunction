# ポーションのバフ
    execute store result score $APBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"ap"}].value
    execute store result score $APDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"ap"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ    
    scoreboard players operation $APBuff Temporary += $AddBuff Temporary
    scoreboard players operation $APDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"ap"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"ap"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $APBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $APDuration Temporary
# リセット
    scoreboard players reset $APBuff
    scoreboard players reset $APDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration