##########
#> item:fishing/chest/_
#

# チェストの召喚
    summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Marker:1b,Invisible:1b,Tags:["Chest","Top"],ArmorItems:[{},{},{},{id:"minecraft:cod",Count:1b,tag:{CustomModelData:2}}],Pose:{Head:[0.0001f,0.0f,0.0f]}}
    summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Marker:1b,Invisible:1b,Tags:["Chest","Bot"],ArmorItems:[{},{},{},{id:"minecraft:cod",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0.0001f,0.0f,0.0f]}}
# 釣りアイテムに乗せる
    ride @e[type=armor_stand,tag=Chest,tag=Top,distance=..0.01,limit=1] mount @s
    ride @e[type=armor_stand,tag=Chest,tag=Bot,distance=..0.01,limit=1] mount @s