##########
#>
#

# ポーションのバフ
    execute store result score $DEXBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"dex"}].value
    execute store result score $DEXDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"dex"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ
    scoreboard players operation $DEXBuff Temporary += $AddBuff Temporary
    scoreboard players operation $DEXDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"dex"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"dex"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $DEXBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $DEXDuration Temporary
# リセット
    scoreboard players reset $DEXBuff
    scoreboard players reset $DEXDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration