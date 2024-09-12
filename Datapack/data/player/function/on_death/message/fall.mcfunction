#> player:on_death/message/fall
# 落下ダメージによる死

execute store result score $Random Temporary run random value 1..3
execute if score $Random Temporary matches 1 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は地面に強く衝突した。"}]
execute if score $Random Temporary matches 2 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は高所から急降下した。"}]
execute if score $Random Temporary matches 3 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は重力に抗えなかった。"}]
scoreboard players reset $Random Temporary