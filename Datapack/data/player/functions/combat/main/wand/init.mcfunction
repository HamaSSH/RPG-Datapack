#> player:combat/main/wand/init
# 杖の弾の初期処理

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID
    scoreboard players operation @s DmgDealt = @p[tag=Attacker] DmgDealt
    execute if entity @p[tag=Attacker,tag=CriticalHit] run tag @s add CriticalHit

# 寿命20tick
    scoreboard players set @s Timer 20

# 向きを合わせる
    execute rotated as @p[tag=Attacker] run tp @s ~ ~1.5 ~ ~ ~

# 初期タグ削除
    tag @s remove WandInit