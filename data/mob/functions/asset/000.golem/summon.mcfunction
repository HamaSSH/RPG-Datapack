summon iron_golem ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"none",Health:1000f,Team:Enemy,Tags:["Init","Enemy"],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.movement_speed",Base:0.23}]}
# 見た目
    data modify storage mob:temp Data.CustomName set value '{"text":"ガウレム"}'
    data modify storage mob:temp Data.Armor set value [{},{},{},{}]
# ステータス
    data modify storage mob:temp Data.lvl set value 8
    data modify storage mob:temp Data.hp set value 220
    data modify storage mob:temp Data.ad set value 24
    data modify storage mob:temp Data.xp set value 80
# データの適用
    execute as @e[type=#mob:mobs,tag=Init,sort=nearest,limit=1] run function mob:init