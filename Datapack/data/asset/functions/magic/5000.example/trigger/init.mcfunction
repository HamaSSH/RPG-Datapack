#> asset:magic/5000.example/trigger/init
# 魔法の弾のinit処理

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @a[tag=Target,limit=1] PlayerID
    execute store result score @s dmg_dealt run data get storage magic: Data.Damage
    execute store result score @s MagicID run data get storage magic: ItemData.tag.CustomModelData
# 向きを合わせる
    execute anchored eyes positioned ^ ^ ^ run tp @s ~ ~1 ~ ~ ~
# 初期タグ削除
    tag @s remove MagicInit