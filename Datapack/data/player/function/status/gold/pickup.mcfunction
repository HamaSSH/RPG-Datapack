#> player:status/gold/pickup
# ゴールドを取得した時の処理

# Gold換算
    execute store result score $1G Temporary run clear @s nautilus_shell[item_model="resource:other/gold/1",custom_data={item_type:"gold"}]
    execute store result score $10G Temporary run clear @s nautilus_shell[item_model="resource:other/gold/10",custom_data={item_type:"gold"}]
    execute store result score $100G Temporary run clear @s nautilus_shell[item_model="resource:other/gold/100",custom_data={item_type:"gold"}]
    scoreboard players operation $10G Temporary *= #10 Constant
    scoreboard players operation $100G Temporary *= #100 Constant

# ゴールド獲得量表示用スコア
    scoreboard players set @s GoldTimer 20
    scoreboard players operation @s GoldDisplay += $1G Temporary
    scoreboard players operation @s GoldDisplay += $10G Temporary
    scoreboard players operation @s GoldDisplay += $100G Temporary

# ゴールドスコアに加算
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1.5
    scoreboard players operation @s Gold += $1G Temporary
    scoreboard players operation @s Gold += $10G Temporary
    scoreboard players operation @s Gold += $100G Temporary
    execute if score @s Gold matches 10000.. run advancement grant @s only asset:achievement/1.5

# リセット
    scoreboard players reset $1G Temporary
    scoreboard players reset $10G Temporary
    scoreboard players reset $100G Temporary
    advancement revoke @s only player:trigger/pickup_gold