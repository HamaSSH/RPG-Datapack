#> asset:npc/301.rinne/summon/_
# NPCの召喚時の処理

summon villager ~ ~ ~ {Tags:["301.NPC"],NoAI:1b,HandItems:[{id:"minecraft:cod",Count:1b,tag:{CustomModelData:7}},{}],ArmorItems:[{},{},{},{id:"minecraft:cod",Count:1b,tag:{CustomModelData:8}}],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{}}
execute as @e[type=villager,tag=301.NPC,distance=..0] run scoreboard players set @s NPCID 301