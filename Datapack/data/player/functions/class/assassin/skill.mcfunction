##########
#>
#

# 保持スコア設定
    scoreboard players operation @s assassin_crt %= #1000 Constant
    scoreboard players operation @s assassin_crt += @s skill_level
    execute if score @s skill_level matches 1 run scoreboard players operation @s assassin_crt *= #15 Constant
    execute if score @s skill_level matches 1 run scoreboard players operation @s assassin_crt /= #10 Constant
    execute if score @s skill_level matches 2 run scoreboard players operation @s assassin_crt *= #14 Constant
    execute if score @s skill_level matches 2 run scoreboard players operation @s assassin_crt /= #10 Constant
    execute if score @s skill_level matches 3 run scoreboard players operation @s assassin_crt *= #13 Constant
    execute if score @s skill_level matches 3 run scoreboard players operation @s assassin_crt /= #10 Constant
    execute if score @s skill_level matches 4 run scoreboard players operation @s assassin_crt *= #12 Constant
    execute if score @s skill_level matches 4 run scoreboard players operation @s assassin_crt /= #10 Constant
    execute if score @s skill_level matches 5 run scoreboard players operation @s assassin_crt *= #11 Constant
    execute if score @s skill_level matches 5 run scoreboard players operation @s assassin_crt /= #10 Constant
# バフの上限
    execute if score @s skill_level matches 1 if score @s assassin_crt matches 16.. run scoreboard players set @s assassin_crt 16
    execute if score @s skill_level matches 2 if score @s assassin_crt matches 24.. run scoreboard players set @s assassin_crt 24
    execute if score @s skill_level matches 3 if score @s assassin_crt matches 40.. run scoreboard players set @s assassin_crt 40
    execute if score @s skill_level matches 4 if score @s assassin_crt matches 64.. run scoreboard players set @s assassin_crt 64
    execute if score @s skill_level matches 5 if score @s assassin_crt matches 96.. run scoreboard players set @s assassin_crt 96
    # 8 16 24 32 40 48
# バフを重ねるか検知
    scoreboard players operation $ADValue Temporary += @s assassin_crt
    scoreboard players operation $SPDValue Temporary += @s assassin_crt
    scoreboard players operation $SPDValue Temporary *= #4 Constant
# 攻撃力バフ＋素早さバフ
    data modify storage player:temp Data.buff set value [{bonus:"ad",source:"class",duration:5},{bonus:"spd",source:"class",duration:5}]
    execute store result storage player:temp Data.buff[{bonus:"ad"}].value int 1 run scoreboard players get $ADValue Temporary
    execute store result storage player:temp Data.buff[{bonus:"spd"}].value int 1 run scoreboard players get $SPDValue Temporary
    data modify storage player:temp Data.newBuff set from storage player:temp Data.buff
    function player:buff/manager/_
# バフタイマー
    scoreboard players add @s assassin_crt 200000
# リセット
    scoreboard players reset $ADValue
    scoreboard players reset $SPDValue
    scoreboard players reset $SkillLevel
    scoreboard players reset $CrtTimer