##########
#>
#

# 範囲攻撃
    function combat:main/hit
# 弱体効果
    data modify storage mob:temp Data.newBuff set value [{source:"weakness",value:-10,bonus:"ad",duration:20},{source:"weakness",value:-10,bonus:"ap",duration:20},{source:"weakness",value:-10,bonus:"dex",duration:20}]
    function mob:buff/manager/_