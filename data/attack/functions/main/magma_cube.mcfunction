# 左クリック検知用のmagma_cube召喚
  execute positioned ~ ~1.2 ~ run summon magma_cube ~ ~ ~ {PortalCooldown:1,Silent:1b,DeathLootTable:"none",NoAI:1b,Health:1000f,Size:0,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
  execute unless block ~ ~ ~ #attack:tall positioned ~ ~1.2 ~ positioned ^ ^ ^1 if block ~ ~ ~ #attack:air run summon magma_cube ~ ~ ~ {PortalCooldown:1,Silent:1b,DeathLootTable:"none",NoAI:1b,Health:1000f,Size:0,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# リセット
  advancement revoke @s only attack:main/magma_cube