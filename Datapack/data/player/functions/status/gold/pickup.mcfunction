#> player:status/gold/pickup
# ゴールドを取得した時の処理

# Gold換算
    execute store result score $GoldNugget Temporary run clear @s gold_nugget{ItemType:"Gold"}
    execute store result score $GoldIngot Temporary run clear @s gold_ingot{ItemType:"Gold"}
    execute store result score $GoldBlock Temporary run clear @s gold_block{ItemType:"Gold"}
    scoreboard players operation $GoldIngot Temporary *= #10 Constant
    scoreboard players operation $GoldBlock Temporary *= #100 Constant

# ゴールド獲得量表示用スコア
    scoreboard players set @s GoldTimer 20
    scoreboard players operation @s GoldDisplay += $GoldNugget Temporary
    scoreboard players operation @s GoldDisplay += $GoldIngot Temporary
    scoreboard players operation @s GoldDisplay += $GoldBlock Temporary

# ゴールドスコアに加算
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1.5
    scoreboard players operation @s Gold += $GoldNugget Temporary
    scoreboard players operation @s Gold += $GoldIngot Temporary
    scoreboard players operation @s Gold += $GoldBlock Temporary

# リセット
    scoreboard players reset $GoldNugget Temporary
    scoreboard players reset $GoldIngot Temporary
    scoreboard players reset $GoldBlock Temporary
    advancement revoke @s only player:trigger/pickup_gold