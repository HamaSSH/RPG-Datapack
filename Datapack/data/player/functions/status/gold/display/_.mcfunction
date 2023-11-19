#> player:status/gold/display/_
# ゴールド表示用エンティティの設定

data merge entity @s {billboard:"center",Tags:["AutoKill","Timer"]}
execute positioned ~ ~-1.62 ~ run data modify entity @s text set value '[{"text":"獲得G: ","color":"#FBFFA3"},{"score":{"name":"@p[tag=GoldDisplay]","objective":"GoldDisplay"},"color":"#EDFFFE"}]'
scoreboard players set @s Timer 60