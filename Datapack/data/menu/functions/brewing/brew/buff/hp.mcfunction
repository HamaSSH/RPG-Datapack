# ポーションのバフ
    execute store result score $HPBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"hp"}].value
    execute store result score $HPDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"hp"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ    
    scoreboard players operation $HPBuff Temporary += $AddBuff Temporary
    scoreboard players operation $HPDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"hp"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"hp"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $HPBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $HPDuration Temporary
# リセット
    scoreboard players reset $HPBuff
    scoreboard players reset $HPDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration