#> ui:cooking/place
# UIの設置

setblock ~ ~ ~ campfire
execute align xyz run summon mule ~0.5 ~-0.1 ~0.5 {Team:"NoCollision",PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["InterruptLeftClick","UIMule","CookingMule"],attributes:[{id:"minecraft:generic.scale",base:0.725}],Passengers:[{id:"minecraft:vex",PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["AutoKill","HasVehicle"],attributes:[{id:"minecraft:generic.scale",base:0.3}]}]}