# チェスト/メニューGUIを開かせたい時は召喚しない
    execute if entity @e[tag=Container,distance=..5,sort=nearest,limit=1] run function combat:left_click/container
    execute if entity @e[type=villager,tag=NPC,distance=..5,sort=nearest,limit=1] anchored eyes positioned ^ ^ ^ run function combat:left_click/npc
# 左クリック検知用のパンダ召喚
    execute unless entity @s[tag=DisableLC] anchored eyes positioned ^ ^ ^ run summon panda ~ ~-0.8 ~ {PortalCooldown:1,Silent:1b,DeathLootTable:"none",Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# リセット
    tag @s remove DisableLC
    advancement revoke @s only combat:left_click/summon