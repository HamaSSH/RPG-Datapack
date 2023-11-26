#> asset:magic/5101.fire_ball/trigger/init
# 魔法の弾のinit処理

# NBTデータ
    data merge entity @s {Marker:1b,Invisible:1b,Small:1b}

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @p[tag=TriggerMagic] PlayerID
    execute store result score @s DmgDealt run data get storage player: Magic.Damage
    execute store result score @s MagicID run data get storage asset:magic ID

# 向きを合わせる
    execute anchored eyes positioned ^ ^ ^ run tp @s ~ ~1 ~ ~ ~

# 魔法用タグ付与
    tag @s add Magic