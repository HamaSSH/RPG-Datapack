#> ui:brewing/place
# UIの設置 #TODO: シロクマのscaleをフルブロックくらいに小さくする

setblock ~ ~ ~ brewing_stand
execute align xyz run summon polar_bear ~0.5 ~ ~0.5 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["InteruptLeftClick","BrewingBear"]}