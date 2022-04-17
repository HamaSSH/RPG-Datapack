# ポーションのバフ
    execute store result score $MPBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"mp"}].value
    execute store result score $MPDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"mp"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ    
    scoreboard players operation $MPBuff Temporary += $AddBuff Temporary
    scoreboard players operation $MPDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"mp"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"mp"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $MPBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $MPDuration Temporary
# リセット
    scoreboard players reset $MPBuff
    scoreboard players reset $MPDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration