#> player:on_death/message/melee
# 物理攻撃による死

execute store result score $Random Temporary run random value 1..3
execute if score $Random Temporary matches 1 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"translate": "%1$sは%2$sにボコボコにされた。","with":[{"selector":"@s"},{"nbt":"DeathMessage.Attacker","storage":"player:","interpret":true,"color":"red"}]}]
execute if score $Random Temporary matches 2 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"translate": "%1$sは%2$sの攻撃に耐えられなかった。","with":[{"selector":"@s"},{"nbt":"DeathMessage.Attacker","storage":"player:","interpret":true,"color":"red"}]}]
execute if score $Random Temporary matches 3 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"translate": "%1$sは%2$sに倒された。","with":[{"selector":"@s"},{"nbt":"DeathMessage.Attacker","storage":"player:","interpret":true,"color":"red"}]}]
scoreboard players reset $Random Temporary