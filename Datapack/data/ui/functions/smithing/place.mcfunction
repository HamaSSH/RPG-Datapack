#> ui:smithing/place
# UIの設置

setblock ~ ~ ~ anvil
execute align xyz run summon polar_bear ~0.5 ~ ~0.5 {Team:"NoCollision",PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["InteruptLeftClick","UIBear","SmithingBear"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}