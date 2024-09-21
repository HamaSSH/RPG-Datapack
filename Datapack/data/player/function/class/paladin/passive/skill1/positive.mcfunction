#> player:class/paladin/passive/skill1/positive
# バフの強化

# 効果時間 I=1.4｜II=1.6｜III=1.8｜IV=2.0
    execute store result score $BuffDuration Temporary run data get storage player: buff.duration
    scoreboard players operation $Multiplier Temporary = @s PassiveSkill1
    scoreboard players operation $Multiplier Temporary *= #2 Constant
    scoreboard players add $Multiplier Temporary 12
    scoreboard players operation $BuffDuration Temporary *= $Multiplier Temporary
    execute store result storage player: buff.duration int 0.1 run scoreboard players get $BuffDuration Temporary

# 効力 I=1.3｜II=1.4｜III=1.5｜IV=1.6
    execute store result score $BuffAmplifier Temporary run data get storage player: buff.amplifier
    scoreboard players add $BuffAmplifier Temporary 1
    scoreboard players operation $Multiplier Temporary = @s PassiveSkill1
    scoreboard players add $Multiplier Temporary 12
    scoreboard players operation $BuffAmplifier Temporary *= $Multiplier Temporary
    execute store result storage player: buff.amplifier int 0.1 run scoreboard players get $BuffAmplifier Temporary

# リセット
    scoreboard players reset $BuffDuration Temporary
    scoreboard players reset $BuffAmplifier Temporary
    scoreboard players reset $Multiplier Temporary