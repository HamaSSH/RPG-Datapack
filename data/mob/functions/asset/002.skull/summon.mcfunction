summon skeleton ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"mob:asset/001.skeleton",Health:1000f,Team:Enemy,Tags:["MobInit","Enemy"],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.movement_speed",Base:0.25}]}
# 見た目
    data modify storage mob:temp Data.CustomName set value '{"text":"スカル"}'
    data modify storage mob:temp Data.Armor set value [{},{},{},{}]
# ステータス
    data modify storage mob:temp Data.lvl set value 3
    data modify storage mob:temp Data.hp set value 60
    data modify storage mob:temp Data.ad set value 5
    data modify storage mob:temp Data.xp set value 40
# データの適用
    execute as @e[type=#mob:mobs,tag=MobInit,sort=nearest,limit=1] run function mob:init