# ポーションのバフ
    execute store result score $DEFBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"def"}].value
    execute store result score $DEFDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"def"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ    
    scoreboard players operation $DEFBuff Temporary += $AddBuff Temporary
    scoreboard players operation $DEFDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"def"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"def"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $DEFBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $DEFDuration Temporary
# リセット
    scoreboard players reset $DEFBuff
    scoreboard players reset $DEFDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration