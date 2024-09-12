#> player:on_death/message/fire
# 炎上ダメージによる死

execute store result score $Random Temporary run random value 1..3
execute if score $Random Temporary matches 1 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は丸焦げになった。"}]
execute if score $Random Temporary matches 2 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は燃え尽き灰と化した。"}]
execute if score $Random Temporary matches 3 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は炎に飲み込まれた。"}]
scoreboard players reset $Random Temporary