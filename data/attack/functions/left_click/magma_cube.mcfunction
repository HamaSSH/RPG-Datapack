# 左クリック検知用のmagma_cube召喚
  execute positioned ~ ~1.2 ~ run summon magma_cube ~ ~ ~ {PortalCooldown:1,Silent:1b,DeathLootTable:"none",NoAI:1b,Health:1000f,Size:0,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
  execute anchored eyes run summon magma_cube ^ ^-0.2 ^0.7 {PortalCooldown:1,Silent:1b,DeathLootTable:"none",NoAI:1b,Health:1000f,Size:0,Tags:["LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# リセット
  advancement revoke @s only attack:left_click/magma_cube