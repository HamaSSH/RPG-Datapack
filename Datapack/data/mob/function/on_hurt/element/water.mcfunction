#> mob:on_hurt/element/water
# 水デバフ

# ダメージと防御力30%+カット
    scoreboard players operation $WaterDebuff Temporary = $ElementRank Temporary
    scoreboard players operation $WaterDebuff Temporary *= #40 Constant
    scoreboard players add $WaterDebuff Temporary 100
    scoreboard players operation $DmgDealtBuff Temporary = @s DmgDealt
    scoreboard players operation $DmgDealtBuff Temporary *= $WaterDebuff Temporary
    scoreboard players operation $DmgDealtBuff Temporary /= #100 Constant
    scoreboard players operation $DEFBuff Temporary = @s DEF
    scoreboard players operation $DEFBuff Temporary *= $WaterDebuff Temporary
    scoreboard players operation $DEFBuff Temporary /= #100 Constant

# バフの付与
    data modify storage mob: NewBuff set value [{status:"DmgDealt",duration:40},{status:"DEF",duration:40}]
    execute store result storage mob: NewBuff[0].amplifier int -0.3 run scoreboard players get $DmgDealtBuff Temporary
    execute store result storage mob: NewBuff[1].amplifier int -0.3 run scoreboard players get $DEFBuff Temporary
    function mob:buff/_

# リセット
    scoreboard players reset $WaterDebuff Temporary
    scoreboard players reset $DmgDealtBuff Temporary
    scoreboard players reset $DEFBuff Temporary