# チェスト/メニューGUIを開かせたい時は召喚しない
    execute if entity @e[tag=Container,distance=..5,sort=nearest,limit=1] run function attack:left_click/container
# 左クリック検知用のmagma_cube召喚
    execute unless entity @s[tag=Container] positioned ~ ~1.2 ~ run summon magma_cube ~ ~ ~ {PortalCooldown:1,Silent:1b,DeathLootTable:"none",NoAI:1b,Health:1000f,Size:0,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    execute unless entity @s[tag=Container] unless block ~ ~ ~ #attack:tall positioned ~ ~1.2 ~ positioned ^ ^ ^1 if block ~ ~ ~ #attack:air run summon magma_cube ~ ~ ~ {PortalCooldown:1,Silent:1b,DeathLootTable:"none",NoAI:1b,Health:1000f,Size:0,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# リセット
    tag @s remove Container
    advancement revoke @s only attack:left_click/summon