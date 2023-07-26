#> mob:on_death/drop/exp/display
# EXP表示用エンティティの設定

data merge entity @s {billboard:"center",Tags:["AutoKill","Timer"]}
data modify entity @s text set value '[{"text":"獲得XP: ","color":"#A3FEFF"},{"score":{"name":"$XPDrop","objective":"Temporary"},"color":"#EDFFFE"}]'
scoreboard players set @s Timer 60