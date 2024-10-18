#> item:fishing/chest/summon
# 釣り宝箱の召喚

# 拾えないようにする
    data modify entity @s PickupDelay set value 32767s
    data modify entity @s Motion set from storage item: Motion
    execute as @e[type=item,distance=..0] run damage @s 0.0 generic

# チェストの召喚
    execute if data storage item: {chest_type:"gold"} run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Marker:1b,Invisible:1b,Tags:["GoldChest","Top"],ArmorItems:[{},{},{},{id:"glass_bottle",components:{"item_model":"resource:custom/chest/top"}}],Pose:{Head:[0.0001f,0.0f,0.0f]}}
    execute if data storage item: {chest_type:"gold"} run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Marker:1b,Invisible:1b,Tags:["GoldChest","Bot"],ArmorItems:[{},{},{},{id:"glass_bottle",components:{"item_model":"resource:custom/chest/bottom"}}],Pose:{Head:[0.0001f,0.0f,0.0f]}}
    execute if data storage item: {chest_type:"loot"} run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Marker:1b,Invisible:1b,Tags:["LootChest","Top"],ArmorItems:[{},{},{},{id:"glass_bottle",components:{"item_model":"resource:custom/chest/top"}}],Pose:{Head:[0.0001f,0.0f,0.0f]}}
    execute if data storage item: {chest_type:"loot"} run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Marker:1b,Invisible:1b,Tags:["LootChest","Bot"],ArmorItems:[{},{},{},{id:"glass_bottle",components:{"item_model":"resource:custom/chest/bottom"}}],Pose:{Head:[0.0001f,0.0f,0.0f]}}

# 釣りアイテムに乗せる
    ride @e[type=armor_stand,tag=Top,distance=..0.01,limit=1] mount @s
    ride @e[type=armor_stand,tag=Bot,distance=..0.01,limit=1] mount @s