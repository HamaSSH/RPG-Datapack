##########
#>
#

# ポーションのバフ
    execute store result score $SPDBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"spd"}].value
    execute store result score $SPDDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"spd"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ
    scoreboard players operation $SPDBuff Temporary += $AddBuff Temporary
    scoreboard players operation $SPDDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"spd"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"spd"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $SPDBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $SPDDuration Temporary
# リセット
    scoreboard players reset $SPDBuff
    scoreboard players reset $SPDDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration