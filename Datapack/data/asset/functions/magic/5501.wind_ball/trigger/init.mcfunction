#> asset:magic/5501.wind_ball/trigger/init
# 魔法の弾のinit処理

# NBTデータ
    data merge entity @s {Marker:1b,Invisible:1b,Small:1b}

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @p[tag=TriggerMagic] PlayerID
    execute store result score @s DmgDealt run data get storage player: magic.damage
    execute store result score @s MagicID run data get storage asset:magic id

# 向きを合わせる
    execute anchored eyes positioned ^ ^ ^ run tp @s ~ ~1 ~ ~ ~

# 魔法用タグ付与
    tag @s add Magic