execute align xyz run summon slime ~2.5 ~ ~2.5 {Size:1,NoAI:1b,Silent:1b,CustomNameVisible:1b,Health:1000f,Team:Enemy,Tags:["MobInit","Enemy"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# 見た目
    data modify storage mob:temp Data.CustomName set value '{"text":""}'
    data modify storage mob:temp Data.NameChar set value 0
    data modify storage mob:temp Data.Armor set value [{},{},{},{}]
# ステータス
    data modify storage mob:temp Data.lvl set value 1
    data modify storage mob:temp Data.hp set value 1000
    data modify storage mob:temp Data.ad set value 20
    data modify storage mob:temp Data.xp set value 20
# データの適用
    execute as @e[type=#mob:mobs,tag=MobInit,sort=nearest,limit=1] run function mob:init