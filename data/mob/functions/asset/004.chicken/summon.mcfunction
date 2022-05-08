summon chicken ~ ~ ~ {CustomNameVisible:1b,Health:1000f,Team:Enemy,Tags:["MobInit","Enemy"],Attributes:[{Name:"generic.max_health",Base:1000}],DeathLootTable:"mob:asset/004.chicken"}
# 見た目
    data modify storage mob:temp Data.CustomName set value '{"text":"チケン"}'
    data modify storage mob:temp Data.Armor set value [{},{},{},{}]
# ステータス
    data modify storage mob:temp Data.lvl set value 1
    data modify storage mob:temp Data.hp set value 20
    data modify storage mob:temp Data.xp set value 10
# データの適用
    execute as @e[type=#mob:mobs,tag=MobInit,sort=nearest,limit=1] run function mob:init