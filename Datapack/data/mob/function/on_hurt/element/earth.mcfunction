#> mob:on_hurt/element/earth
# 土デバフ

# スピード20%+カット
    scoreboard players operation $SlownessAmplifier Temporary = $ElementRank Temporary
    scoreboard players operation $SlownessDuration Temporary = $ElementRank Temporary
    scoreboard players operation $SlownessDuration Temporary *= #20 Constant
    scoreboard players add $SlownessDuration Temporary 20
    tellraw @a {"score":{"name": "$SlownessAmplifier","objective": "Temporary"}}
    tellraw @a {"score":{"name": "$SlownessDuration","objective": "Temporary"}}

# バフの付与
    data modify storage mob: NewBuff set value [{effect:"slowness"}]
    execute store result storage mob: NewBuff[0].amplifier int 1 run scoreboard players get $SlownessAmplifier Temporary
    execute store result storage mob: NewBuff[0].duration int 1 run scoreboard players get $SlownessDuration Temporary
    function mob:buff/_

# リセット
    scoreboard players reset $SlownessAmplifier Temporary
    scoreboard players reset $SlownessDuration Temporary