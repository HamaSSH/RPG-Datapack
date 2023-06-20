##########
#>
#

# 麻痺効果
    attribute @s generic.movement_speed modifier add 1-0-0-1-A "Paralize" -1.0 add
# 演出用buff
    data modify storage mob:temp Data.newBuff set value [{source:"paralize",value:-1000,bonus:"spd",duration:2}]
    function mob:buff/manager/_