summon skeleton ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"mob:asset/000.zombie",Health:1000f,Team:Enemy,Tags:["MobInit","Enemy"],HandItems:[{id:"minecraft:bow",Count:1b},{}],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.movement_speed",Base:0.2}]}
# 見た目
    data modify storage mob:temp Data.CustomName set value '{"text":"スケアーチャー"}'
    data modify storage mob:temp Data.NameChar set value 0
    data modify storage mob:temp Data.Armor set value [{},{},{},{}]
# ステータス
    data modify storage mob:temp Data.lvl set value 2
    data modify storage mob:temp Data.hp set value 100
    data modify storage mob:temp Data.ad set value 7
    data modify storage mob:temp Data.xp set value 20
# データの適用
    execute as @e[type=#mob:mobs,tag=MobInit,sort=nearest,limit=1] run function mob:init