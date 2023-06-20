##########
#>
#

# 弱体効果
    data modify storage mob:temp Data.newBuff set value [{source:"weakness",value:-10,bonus:"ad",duration:8},{source:"weakness",value:-10,bonus:"ap",duration:8},{source:"weakness",value:-10,bonus:"dex",duration:8}]
    function mob:buff/manager/_