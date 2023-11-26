#> core:load/gamerule
# ゲームルールの設定

gamerule announceAdvancements false
gamerule blockExplosionDropDecay false
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 32768
gamerule disableElytraMovementCheck false
gamerule disableRaids true
execute if data storage global: {IsProduction:1b} run gamerule doDaylightCycle true
execute if data storage global: {IsProduction:0b} run gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule doWardenSpawning false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule forgiveDeadPlayers false
gamerule freezeDamage true
gamerule globalSoundEvents true
gamerule keepInventory true
gamerule lavaSourceConversion true
execute if data storage global: {IsProduction:1b} run gamerule logAdminCommands false
execute if data storage global: {IsProduction:0b} run gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobExplosionDropDecay false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule randomTickSpeed 3
execute if data storage global: {IsProduction:1b} run gamerule reducedDebugInfo true
execute if data storage global: {IsProduction:0b} run gamerule reducedDebugInfo false
execute if data storage global: {IsProduction:1b} run gamerule sendCommandFeedback false
execute if data storage global: {IsProduction:0b} run gamerule sendCommandFeedback true
gamerule showDeathMessages true
gamerule snowAccumulationHeight 1
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule tntExplosionDropDecay false
gamerule universalAnger false
gamerule waterSourceConversion true