#> player:class/paladin/passive/skill1/negative
# デバフの弱化

# 効果時間 I=0.5｜II=0.25｜III=0
    execute store result score $BuffDuration Temporary run data get storage player: buff.duration
    execute if score @s PassiveSkill1 matches 1 run scoreboard players set $Multiplier Temporary 50
    execute if score @s PassiveSkill1 matches 2 run scoreboard players set $Multiplier Temporary 25
    execute if score @s PassiveSkill1 matches 3.. run scoreboard players set $Multiplier Temporary 0
    scoreboard players operation $BuffDuration Temporary *= $Multiplier Temporary
    execute store result storage player: buff.duration int 0.01 run scoreboard players get $BuffDuration Temporary

# 効力 I=0.6｜II=0.4｜III=0.2｜IV=0
    execute store result score $BuffAmplifier Temporary run data get storage player: buff.amplifier
    scoreboard players operation $Multiplier Temporary = @s PassiveSkill1
    scoreboard players operation $Multiplier Temporary *= #-2 Constant
    scoreboard players add $Multiplier Temporary 8
    scoreboard players operation $BuffAmplifier Temporary *= $Multiplier Temporary
    execute store result storage player: buff.amplifier int 0.1 run scoreboard players get $BuffAmplifier Temporary

# リセット
    scoreboard players reset $BuffDuration Temporary
    scoreboard players reset $BuffAmplifier Temporary
    scoreboard players reset $Multiplier Temporary