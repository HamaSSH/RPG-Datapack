#> player:combat/main/bow/arrow/player
# プレイヤーから放たれた矢であるか検知

execute store result score $UUID Temporary run data get entity @s Owner[0]
execute if score $UUID Temporary = @p[tag=Shooter] UUID run function player:combat/main/bow/arrow/init
scoreboard players reset $UUID Temporary