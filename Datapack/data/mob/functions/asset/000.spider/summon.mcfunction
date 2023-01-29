summon spider 194.40 64 348.00 {DeathLootTable:"",Health:1000f,Team:Enemy,Tags:["MobInit","Enemy"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# 見た目
    data modify storage mob:temp Data.CustomName set value '{"text":"Dinnerbone"}'
    data modify storage mob:temp Data.NameChar set value 5
    data modify storage mob:temp Data.Armor set value [{},{},{},{}]
# ステータス
    data modify storage mob:temp Data.lvl set value 6
    data modify storage mob:temp Data.hp set value 80
    data modify storage mob:temp Data.ad set value 7
    data modify storage mob:temp Data.xp set value 24
# データの適用
    execute as @e[type=#mob:mobs,tag=MobInit,sort=nearest,limit=1] run function mob:init
    #execute if entity @s[type=spider] run data modify entity @s CustomName set from storage mob:temp Data.CustomName