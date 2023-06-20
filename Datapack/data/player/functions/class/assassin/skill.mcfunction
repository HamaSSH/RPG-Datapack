##########
#>
#

# 保持スコア設定
    scoreboard players operation @s AssassinCRT %= #1000 Constant
    scoreboard players operation @s AssassinCRT += @s SkillLevel
    execute if score @s SkillLevel matches 1 run scoreboard players operation @s AssassinCRT *= #15 Constant
    execute if score @s SkillLevel matches 1 run scoreboard players operation @s AssassinCRT /= #10 Constant
    execute if score @s SkillLevel matches 2 run scoreboard players operation @s AssassinCRT *= #14 Constant
    execute if score @s SkillLevel matches 2 run scoreboard players operation @s AssassinCRT /= #10 Constant
    execute if score @s SkillLevel matches 3 run scoreboard players operation @s AssassinCRT *= #13 Constant
    execute if score @s SkillLevel matches 3 run scoreboard players operation @s AssassinCRT /= #10 Constant
    execute if score @s SkillLevel matches 4 run scoreboard players operation @s AssassinCRT *= #12 Constant
    execute if score @s SkillLevel matches 4 run scoreboard players operation @s AssassinCRT /= #10 Constant
    execute if score @s SkillLevel matches 5 run scoreboard players operation @s AssassinCRT *= #11 Constant
    execute if score @s SkillLevel matches 5 run scoreboard players operation @s AssassinCRT /= #10 Constant
# バフの上限
    execute if score @s SkillLevel matches 1 if score @s AssassinCRT matches 16.. run scoreboard players set @s AssassinCRT 16
    execute if score @s SkillLevel matches 2 if score @s AssassinCRT matches 24.. run scoreboard players set @s AssassinCRT 24
    execute if score @s SkillLevel matches 3 if score @s AssassinCRT matches 40.. run scoreboard players set @s AssassinCRT 40
    execute if score @s SkillLevel matches 4 if score @s AssassinCRT matches 64.. run scoreboard players set @s AssassinCRT 64
    execute if score @s SkillLevel matches 5 if score @s AssassinCRT matches 96.. run scoreboard players set @s AssassinCRT 96
    # 8 16 24 32 40 48
# バフを重ねるか検知
    scoreboard players operation $ADValue Temporary += @s AssassinCRT
    scoreboard players operation $SPDValue Temporary += @s AssassinCRT
    scoreboard players operation $SPDValue Temporary *= #4 Constant
# 攻撃力バフ＋素早さバフ
    data modify storage player:temp Data.buff set value [{bonus:"ad",source:"class",duration:5},{bonus:"spd",source:"class",duration:5}]
    execute store result storage player:temp Data.buff[{bonus:"ad"}].value int 1 run scoreboard players get $ADValue Temporary
    execute store result storage player:temp Data.buff[{bonus:"spd"}].value int 1 run scoreboard players get $SPDValue Temporary
    data modify storage player:temp Data.newBuff set from storage player:temp Data.buff
    function player:buff/manager/_
# バフタイマー
    scoreboard players add @s AssassinCRT 200000
# リセット
    scoreboard players reset $ADValue
    scoreboard players reset $SPDValue
    scoreboard players reset $SkillLevel
    scoreboard players reset $CrtTimer