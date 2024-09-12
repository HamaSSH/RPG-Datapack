#> player:on_death/message/drown
# 水没ダメージによる死

execute store result score $Random Temporary run random value 1..3
execute if score $Random Temporary matches 1 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は水の中で静かに息絶えた。"}]
execute if score $Random Temporary matches 2 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は酸素が尽きてしまった。"}]
execute if score $Random Temporary matches 3 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は深い水底へと沈んだ。"}]
scoreboard players reset $Random Temporary