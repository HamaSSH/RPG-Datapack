#> player:combat/main/bow/skill/shot/init
# ため攻撃矢の初期化

tag @s add BowSkillShot
data modify entity @s NoGravity set value 1b
data modify entity @s PierceLevel set value 30

# プレイヤーID
    scoreboard players operation @s PlayerID = @p[tag=Shooter] PlayerID

# 寿命1秒(もしくは着弾したら消滅)
    scoreboard players set @s Timer 15
    tag @s add Timer

# ダメージの設定
    scoreboard players operation @s DmgDealt = @p DEX
    scoreboard players add @s DmgDealt 5
    scoreboard players operation @s DmgDealt *= #4 Constant
    scoreboard players operation @s ElementRank = @p[tag=Shooter] ElementRank