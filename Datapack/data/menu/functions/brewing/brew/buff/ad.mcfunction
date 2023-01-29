# ポーションのバフ
    execute store result score $ADBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"ad"}].value
    execute store result score $ADDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"ad"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ    
    scoreboard players operation $ADBuff Temporary += $AddBuff Temporary
    scoreboard players operation $ADDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"ad"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"ad"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $ADBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $ADDuration Temporary
# リセット
    scoreboard players reset $ADBuff
    scoreboard players reset $ADDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration