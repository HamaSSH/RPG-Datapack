#> player:on_death/message/ranged
# 遠距離攻撃による死


execute store result score $Random Temporary run random value 1..3
execute if score $Random Temporary matches 1 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"translate": "%1$sは%2$sに射抜かれた。","with":[{"selector":"@s"},{"nbt":"DeathMessage.Attacker","storage":"player:","interpret":true,"color":"red"}]}]
execute if score $Random Temporary matches 2 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"translate": "%1$sは%2$sに命を絶たれた。","with":[{"selector":"@s"},{"nbt":"DeathMessage.Attacker","storage":"player:","interpret":true,"color":"red"}]}]
execute if score $Random Temporary matches 3 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"translate": "%1$sは%2$sの射撃に沈んだ。","with":[{"selector":"@s"},{"nbt":"DeathMessage.Attacker","storage":"player:","interpret":true,"color":"red"}]}]
scoreboard players reset $Random Temporary