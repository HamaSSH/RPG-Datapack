summon zombie ~ ~ ~ {CustomNameVisible:1b,Health:1000f,Tags:["Init","Enemy"],CustomName:'{"text":"ゾンビィ"}',Attributes:[{Name:"generic.max_health",Base:1000}]}
execute as @e[type=#mob:mobs,tag=Init,sort=nearest,limit=1] run function mob:init