#> player:combat/main/bow/skill/meteor/init
# ため攻撃矢の初期化

tag @s add BowSkillMeteor
data modify entity @s NoGravity set value 1b

# 寿命1秒(もしくは着弾したら消滅)
    scoreboard players set @s Timer 12
    tag @s add Timer

# ダメージの設定
    scoreboard players operation @s DmgDealt = @p DEX
    scoreboard players add @s DmgDealt 5
    scoreboard players operation @s DmgDealt *= #2 Constant