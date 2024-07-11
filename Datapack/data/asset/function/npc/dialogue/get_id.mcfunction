#> asset:npc/get_id
# プレイヤーごとの会話文管理

$execute store result storage npc: dialogue.id int 1 run data get entity @s ArmorItems[3].components.minecraft:custom_data.$(MCID).id