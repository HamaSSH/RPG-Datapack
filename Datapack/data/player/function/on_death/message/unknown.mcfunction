#> player:on_death/message/unknown
# 未知のダメージによる死

execute store result score $Random Temporary run random value 1..3
execute if score $Random Temporary matches 1 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は未知の力により命を落とした。"}]
execute if score $Random Temporary matches 2 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は忽然と命を奪われた。"}]
execute if score $Random Temporary matches 3 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は静かにその場に倒れた。"}]
scoreboard players reset $Random Temporary