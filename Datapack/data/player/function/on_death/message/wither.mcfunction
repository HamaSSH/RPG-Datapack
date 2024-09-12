#> player:on_death/message/wither
# ウィザーダメージによる死

execute store result score $Random Temporary run random value 1..3
execute if score $Random Temporary matches 1 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は体を蝕まれ力尽きた。"}]
execute if score $Random Temporary matches 2 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"はウィザーの力に浸食された。"}]
execute if score $Random Temporary matches 3 run tellraw @a [{"text":"\uF822☠ ","color":"red"},{"selector":"@s"},{"text":"は呪いにより朽ち果てた。"}]
scoreboard players reset $Random Temporary