#> player:status/gold/display/init
# ゴールド表示用エンティティの設定

# 3秒後に自動で消す
    tag @s add AutoKill
    tag @s add Timer
    scoreboard players set @s Timer 60

# 表示
    data modify entity @s text set value [{text:"獲得G: ",color:"#FBFFA3"},{score:{name:"$GoldDisplay",objective:"Temporary"},color:"#EDFFFE"}]
