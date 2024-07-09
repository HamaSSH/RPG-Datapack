#> mob:on_death/drop/exp/display
# EXP表示用エンティティの設定

tag @s add AutoKill
tag @s add Timer
data modify entity @s text set value '[{"text":"獲得XP: ","color":"#A3FEFF"},{"score":{"name":"$EXPDrop","objective":"Temporary"},"color":"#EDFFFE"}]'
scoreboard players set @s Timer 60