#> asset:magic/5103.flame_pillar/tick/pillar/init
# 魔法の弾のinit処理

# NBTデータ
    tag @s add 5103.Pillar
    data merge entity @s {Marker:1b,Invisible:1b,Small:1b}

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = $PlayerID Temporary
    scoreboard players operation @s DmgDealt = $DmgDealt Temporary
    scoreboard players operation @s MagicID = $MagicID Temporary

# 向きを合わせる
    execute anchored eyes positioned ^ ^ ^ run tp @s ~ ~ ~ ~ 0

# 魔法用タグ付与
    tag @s add Magic