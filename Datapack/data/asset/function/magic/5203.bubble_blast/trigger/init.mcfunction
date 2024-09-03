#> asset:magic/5203.bubble_blast/trigger/init
# 魔法の弾のinit処理

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @p[tag=TriggerMagic] PlayerID
    execute store result score @s DmgDealt run data get storage player: magic.damage
    execute store result score @s MagicID run data get storage asset:magic id

# 寿命ランダム
    execute store result score @s Timer run random value 1..5

# 向きを合わせる
    $execute anchored eyes positioned ^ ^ ^0.0$(forward) run tp @s ~ ~1.4 ~ ~$(yaw) ~$(pitch)

# 魔法用タグ付与
    tag @s add Magic
    tag @s remove BubbleInit