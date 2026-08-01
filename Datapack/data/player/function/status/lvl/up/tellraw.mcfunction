#> player:status/lvl/up/tellraw
# レベルアップ時のチャット欄への通知

# 通知
    tag @s add LevelUp
    tellraw @a[tag=!LevelUp] [{text:"⭐ "},{selector:"@s"},{text:"のレベルが上がった！ ( "},{score:{name:"$PreviousLVL",objective:"Temporary"}},{text:"→"},{score:{name:"@s",objective:"LVL"},color:"yellow",bold:true},{text:" )"}]
    tellraw @s ["\n",{text:"⭐ レベルが上がった！ ( "},{score:{name:"$PreviousLVL",objective:"Temporary"}},{text:"→"},{score:{name:"@s",objective:"LVL"},color:"yellow",bold:true},{text:" )"}]

# 演出
    particle totem_of_undying ~ ~ ~ 0.1 0.2 0.1 0.5 100 force
    playsound entity.player.levelup master @s ~ ~ ~ 0.5 1

# リセット
    tag @s remove LevelUp
    scoreboard players reset $PreviousLVL Temporary
