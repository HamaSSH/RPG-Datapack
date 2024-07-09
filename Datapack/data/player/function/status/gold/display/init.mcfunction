#> player:status/gold/display/init
# ゴールド表示用エンティティの設定

tag @s add AutoKill
tag @s add Timer
execute positioned ~ ~-1.62 ~ run data modify entity @s text set value '[{"text":"獲得G: ","color":"#FBFFA3"},{"score":{"name":"@p[tag=GoldDisplay]","objective":"GoldDisplay"},"color":"#EDFFFE"}]'
scoreboard players set @s Timer 60