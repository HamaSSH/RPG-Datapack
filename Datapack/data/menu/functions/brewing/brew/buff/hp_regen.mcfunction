##########
#>
#

# ポーションのバフ
    execute store result score $HPRegenBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"hp_regen"}].value
    execute store result score $HPRegenDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"hp_regen"}].duration
# 素材アイテムのバフ
    execute store result score $AddBuff Temporary run data get storage menu:temp Data.buff.value
    execute store result score $AddDuration Temporary run data get storage menu:temp Data.buff.duration
# 足し合わせ
    scoreboard players operation $HPRegenBuff Temporary += $AddBuff Temporary
    scoreboard players operation $HPRegenDuration Temporary += $AddDuration Temporary
# バフ情報をstorageに格納
    data remove storage menu:temp Data.potionBuff[{bonus:"hp_regen"}]
    data modify storage menu:temp Data.potionBuff append value {source:"consumables",bonus:"hp_regen"}
    execute store result storage menu:temp Data.potionBuff[-1].value int 1.3 run scoreboard players get $HPRegenBuff Temporary
    execute store result storage menu:temp Data.potionBuff[-1].duration int 1.4 run scoreboard players get $HPRegenDuration Temporary
# リセット
    scoreboard players reset $HPRegenBuff
    scoreboard players reset $HPRegenDuration
    scoreboard players reset $AddBuff
    scoreboard players reset $AddDuration