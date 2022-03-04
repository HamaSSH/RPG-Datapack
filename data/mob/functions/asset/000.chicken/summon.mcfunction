summon chicken ~ ~ ~ {CustomNameVisible:1b,Health:1000f,Tags:["Init","Enemy"],Attributes:[{Name:"generic.max_health",Base:1000}],DeathLootTable:"none"}
# 見た目
  data modify storage mob:temp Data.CustomName set value '{"text":"チケン"}'
  data modify storage mob:temp Data.Armor set value [{},{},{},{}]
# ステータス
  data modify storage mob:temp Data.lvl set value 4
  data modify storage mob:temp Data.hp set value 200
  data modify storage mob:temp Data.xp set value 10
# データの適用
  execute as @e[type=#mob:mobs,tag=Init,sort=nearest,limit=1] run function mob:init