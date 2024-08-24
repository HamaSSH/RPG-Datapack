#> asset:magic/5501.wind_ball/trigger/init
# 魔法の弾のinit処理

# NBTデータ
    data merge entity @s {Invisible:1b,Small:1b}

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @p[tag=TriggerMagic] PlayerID
    scoreboard players operation @s HPRegen = @p[tag=TriggerMagic] INT
    scoreboard players operation @s HPRegen *= #200 Constant
    execute store result score @s MagicID run data get storage asset:magic id

# 魔法用タグ付与
    tag @s add Magic