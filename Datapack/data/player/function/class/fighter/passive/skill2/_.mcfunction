#> player:class/fighter/passive/skill2/_
# スキルレベルごとの効果

# HPの割合を取得
    scoreboard players operation $FighterHPRatio Temporary = @s HP
    scoreboard players operation $FighterHPRatio Temporary *= #100 Constant
    scoreboard players operation $FighterHPRatio Temporary /= @s HPMax
    scoreboard players remove $FighterHPRatio Temporary 100

# ステータス補正
    # 物理攻撃力最大+ I=20｜II=40｜III=60｜IV=80
        scoreboard players operation $ClassSTR Temporary = @s PassiveSkill2
        scoreboard players operation $ClassSTR Temporary *= #20 Constant
        scoreboard players operation $ClassSTR Temporary *= $FighterHPRatio Temporary
        scoreboard players operation $ClassSTR Temporary /= #100 Constant
        scoreboard players operation $ClassSTR Temporary *= #-1 Constant
    # その他ステータス最大+ I=60｜II=90｜III=120｜IV=150
        scoreboard players operation $ClassStatus Temporary = @s PassiveSkill2
        scoreboard players operation $ClassStatus Temporary *= #30 Constant
        scoreboard players add $ClassStatus Temporary 30
        scoreboard players operation $ClassStatus Temporary *= $FighterHPRatio Temporary
        scoreboard players operation $ClassStatus Temporary /= #100 Constant
        scoreboard players operation $ClassStatus Temporary *= #-1 Constant

# ステータス適用
    scoreboard players operation @s STR += $ClassSTR Temporary
    scoreboard players operation @s DEF += $ClassStatus Temporary
    scoreboard players operation @s AGI += $ClassStatus Temporary
    scoreboard players operation @s CRT += $ClassStatus Temporary
    scoreboard players operation @s LUK += $ClassStatus Temporary

# リセット
    scoreboard players reset $FighterHPRatio Temporary
    scoreboard players reset $ClassSTR Temporary
    scoreboard players reset $ClassStatus Temporary