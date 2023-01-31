# チェスト/メニューGUIを開かせたい時は召喚しない
    execute if entity @e[tag=Container,distance=..5,sort=nearest,limit=1] run function combat:left_click/container
    execute if entity @e[type=villager,tag=NPC,distance=..5,sort=nearest,limit=1] anchored eyes positioned ^ ^ ^ run function combat:left_click/npc
# 左クリック検知用のVex召喚

# 1. 目前のVex
    execute unless entity @s[tag=DisableLC] anchored eyes positioned ^ ^ ^ run summon vex ~ ~-0.4 ~ {PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    execute unless entity @s[tag=DisableLC] anchored eyes positioned ^ ^ ^ run summon vex ~ ~-1.2 ~ {PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# 2. ^^^0.5のVex
    execute unless entity @s[tag=DisableLC] anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #combat:air positioned ^ ^ ^0.5 if block ~ ~ ~ #combat:air positioned as @s anchored eyes positioned ^ ^ ^0.5 run summon minecraft:vex ~ ~-0.45 ~ {PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}

# 没(コリジョン無しブロックの中からの左クリック検知不可): ^^^3のVex
    #execute unless entity @s[tag=DisableLC] anchored eyes positioned ^ ^ ^3 positioned ~-1 ~-1 ~-1 if entity @e[type=#mob:mobs,tag=Enemy,dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 run summon vex ~ ~-0.4 ~ {PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    #execute unless entity @s[tag=DisableLC] anchored eyes positioned ^ ^ ^3 positioned ~-1 ~-1 ~-1 if entity @e[type=#mob:mobs,tag=Enemy,dx=1,dy=1,dz=1,limit=1] positioned ~1 ~1 ~1 run summon vex ~ ~-1.2 ~ {PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# 没(フルブロックに埋まった際、左クリック検知不可→解決したがVexでいい): パンダ
    #execute unless entity @s[tag=DisableLC] anchored eyes positioned ^ ^ ^ run summon minecraft:panda ~ ~-0.7 ~ {PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    #execute unless entity @s[tag=DisableLC] anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #combat:air positioned ^ ^ ^0.5 if block ~ ~ ~ #combat:air positioned as @s anchored eyes positioned ^ ^ ^1 run summon minecraft:panda ~ ~-0.7 ~ {PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# 没(フルブロックに埋まった際、左クリック検知不可→解決したがVexでいい): マグマキューブ
    #execute unless entity @s[tag=DisableLC] if entity @s[nbt={SelectedItem:{tag:{weapon:spear}}}] anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ run summon minecraft:magma_cube ~ ~ ~ {Size:0,PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    #execute unless entity @s[tag=DisableLC] if entity @s[nbt={SelectedItem:{tag:{weapon:spear}}}] anchored eyes positioned ^ ^ ^0.5 positioned ~ ~-0.5 ~ run summon minecraft:magma_cube ~ ~ ~ {Size:0,PortalCooldown:1,Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}

# リセット
    tag @s remove DisableLC
    advancement revoke @s only combat:left_click/summon