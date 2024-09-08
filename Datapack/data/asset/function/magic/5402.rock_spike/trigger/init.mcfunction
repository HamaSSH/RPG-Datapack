#> asset:magic/5402.rock_spike/trigger/init
# 魔法の弾のinit処理

# NBTデータ
    data merge entity @s {Marker:1b,Invisible:1b,Small:1b}

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @p[tag=TriggerMagic] PlayerID
    execute store result score @s DmgDealt run data get storage player: magic.damage
    execute store result score @s MagicID run data get storage asset:magic id

# 位置を合わせる
    execute rotated ~ 0 positioned ^ ^ ^3 align y run tp @s ~ ~ ~
    execute positioned as @s rotated ~ 0 if block ~ ~-3 ~ #lib:no_collision if block ~ ~-2 ~ #lib:no_collision if block ~ ~-1 ~ #lib:no_collision run tp @s ^ ^ ^-1
    execute positioned as @s rotated ~ 0 if block ~ ~-3 ~ #lib:no_collision if block ~ ~-2 ~ #lib:no_collision if block ~ ~-1 ~ #lib:no_collision run tp @s ^ ^ ^-1
    execute positioned as @s rotated ~ 0 if block ~ ~-3 ~ #lib:no_collision if block ~ ~-2 ~ #lib:no_collision if block ~ ~-1 ~ #lib:no_collision run tp @s ^ ^ ^-1
    execute positioned as @s if block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~-1 ~
    execute positioned as @s if block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~-1 ~

# 魔法用タグ付与
    tag @s add Magic