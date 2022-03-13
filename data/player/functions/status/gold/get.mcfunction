# Gold換算
    execute store result score $GoldNugget Temporary run clear @s gold_nugget{gold:1b}
    execute store result score $GoldIngot Temporary run clear @s gold_ingot{gold:1b}
    execute store result score $GoldBlock Temporary run clear @s gold_block{gold:1b}
    scoreboard players operation $GoldIngot Temporary *= #10 Constant
    scoreboard players operation $GoldBlock Temporary *= #100 Constant
# スコア
    scoreboard players set @s gold_timer 20
    scoreboard players operation @s GoldDisplay += $GoldNugget Temporary
    scoreboard players operation @s GoldDisplay += $GoldIngot Temporary
    scoreboard players operation @s GoldDisplay += $GoldBlock Temporary
# 直接加算
    playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1.5
    scoreboard players operation @s gold += $GoldNugget Temporary
    scoreboard players operation @s gold += $GoldIngot Temporary
    scoreboard players operation @s gold += $GoldBlock Temporary
# リセット
    scoreboard players reset $GoldNugget
    scoreboard players reset $GoldIngot
    scoreboard players reset $GoldBlock
    advancement revoke @s only player:get_gold