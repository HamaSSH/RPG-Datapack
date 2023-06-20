##########
#> item:fishing/chest/_
#

# 浮きのPlayerID ＝ 釣った人 #TODO: ちゃんと釣った人のPlayerIDをゲットする
    scoreboard players operation $PlayerID Temporary = @s PlayerID
# チェストの召喚
    summon armor_stand ~-0.275 ~-1.25 ~-0.275 {DisabledSlots:4144959,Invisible:1b,Tags:["Chest","Top"],ArmorItems:[{},{},{},{id:"minecraft:cod",Count:1b,tag:{CustomModelData:2}}],Pose:{Head:[0.0001f,0.0f,0.0f]}}
    summon armor_stand ~-0.275 ~-1.25 ~-0.275 {DisabledSlots:4144959,Invisible:1b,Tags:["Chest","Bot"],ArmorItems:[{},{},{},{id:"minecraft:cod",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0.0001f,0.0f,0.0f]}}
# Motionの設定
    data modify storage item:fishing FishPos set from entity @s Pos
    execute as @e[type=armor_stand,tag=Chest] run function item:fishing/chest/motion
# リセット
    scoreboard players reset $PlayerID Temporary
    data remove storage item:fishing FishPos
    kill @s