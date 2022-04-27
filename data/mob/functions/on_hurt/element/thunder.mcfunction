# 麻痺効果
    effect give @s slowness 1 127 true
# 演出用buff
    #data modify storage core:temp Data.newBuff set value [{source:"paralize",value:-1000,bonus:"spd",duration:4}]
    #function core:buff/manager/_