# バフを重ねるか検知
    scoreboard players operation @s assassin_crt %= #1000 Constant
    scoreboard players set $ADValue Temporary 2
    scoreboard players operation $ADValue Temporary *= @s skill_level
    scoreboard players operation $ADValue Temporary += @s assassin_crt
    scoreboard players set $SPDValue Temporary 4
    scoreboard players operation $SPDValue Temporary *= @s skill_level
    scoreboard players operation $SPDValue Temporary += @s assassin_crt
    scoreboard players operation $SPDValue Temporary += @s assassin_crt
# 保持スコア設定
    scoreboard players operation $SkillLevel Temporary = @s skill_level
    scoreboard players operation @s assassin_crt += $SkillLevel Temporary
    scoreboard players add $SkillLevel Temporary 20
    scoreboard players operation @s assassin_crt *= $SkillLevel Temporary
    scoreboard players operation @s assassin_crt /= #20 Constant
    execute if score @s skill_level matches 1 if score @s assassin_crt matches 32.. run scoreboard players set @s assassin_crt 32
    execute if score @s skill_level matches 2 if score @s assassin_crt matches 64.. run scoreboard players set @s assassin_crt 64
    execute if score @s skill_level matches 3 if score @s assassin_crt matches 128.. run scoreboard players set @s assassin_crt 128
    execute if score @s skill_level matches 4 if score @s assassin_crt matches 256.. run scoreboard players set @s assassin_crt 256
    execute if score @s skill_level matches 5 if score @s assassin_crt matches 512.. run scoreboard players set @s assassin_crt 512
# バフタイマー(徐々に短く)
    scoreboard players operation $CrtTimer Temporary = @s assassin_crt
    scoreboard players operation $CrtTimer Temporary *= #-1000 Constant
    scoreboard players operation @s assassin_crt += $CrtTimer Temporary
    scoreboard players add @s assassin_crt 600000
# 攻撃力バフ＋素早さバフ
    data modify storage player:temp Data.buff set value [{bonus:"ad",source:"class",duration:15},{bonus:"spd",source:"class",duration:15}]
    execute store result storage player:temp Data.buff[{bonus:"ad"}].value int 1 run scoreboard players get $ADValue Temporary
    #execute store result storage player:temp Data.buff[{bonus:"ad"}].duration int 1 run scoreboard players get $ADDuration Temporary
    execute store result storage player:temp Data.buff[{bonus:"spd"}].value int 1 run scoreboard players get $SPDValue Temporary
    #execute store result storage player:temp Data.buff[{bonus:"spd"}].duration int 1 run scoreboard players get $SPDDuration Temporary
    data modify storage core:temp Data.newBuff set from storage player:temp Data.buff
    function core:buff/manager/_
# リセット
    scoreboard players reset $ADValue
    scoreboard players reset $ADDuration
    scoreboard players reset $SPDValue
    scoreboard players reset $SPDDuration
    scoreboard players reset $SkillLevel
    scoreboard players reset $CrtTimer
    data remove storage player:temp Data