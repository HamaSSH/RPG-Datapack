#> mob:trigger/on_death/drop/exp/display
# EXP表示用エンティティの設定

# 3秒後に自動で消す
    tag @s add AutoKill
    tag @s add Timer
    scoreboard players set @s Timer 60

# 表示
    data modify entity @s text set value [{text:"獲得XP: ",color:"#A3FEFF"},{score:{name:"$EXPDrop",objective:"Temporary"},color:"#EDFFFE"}]
