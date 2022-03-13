summon slime ~ ~ ~ {Size:1,CustomNameVisible:1b,Health:1000f,Team:Enemy,Tags:["Init","Enemy"],Attributes:[{Name:"generic.max_health",Base:1000}],DeathLootTable:"none"}
# 見た目
    data modify storage mob:temp Data.CustomName set value '{"text":"スラ"}'
    data modify storage mob:temp Data.Armor set value [{},{},{},{}]
# ステータス
    data modify storage mob:temp Data.lvl set value 3
    data modify storage mob:temp Data.hp set value 80
    data modify storage mob:temp Data.xp set value 25
# データの適用
    execute as @e[type=#mob:mobs,tag=Init,sort=nearest,limit=1] run function mob:init