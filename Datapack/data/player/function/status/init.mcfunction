#> player:status/init
# ステータスの初期化

# 初期値の設定
    scoreboard players set @s HP 50
    scoreboard players set @s MP 0
    scoreboard players set @s BaseHP 50
    scoreboard players set @s BaseMP 0
    scoreboard players set @s BaseHPR 20
    scoreboard players set @s BaseMPR 20
    scoreboard players set @s BaseSTR 1
    scoreboard players set @s BaseINT 0
    scoreboard players set @s BaseDEX 0
    scoreboard players set @s BaseDEF 0
    scoreboard players set @s BaseAGI 0
    scoreboard players set @s BaseCRT 0
    scoreboard players set @s BaseLUK 0
    scoreboard players set @s BuffHP 0
    scoreboard players set @s BuffMP 0
    scoreboard players set @s BuffHPR 0
    scoreboard players set @s BuffMPR 0
    scoreboard players set @s BuffSTR 0
    scoreboard players set @s BuffINT 0
    scoreboard players set @s BuffDEX 0
    scoreboard players set @s BuffDEF 0
    scoreboard players set @s BuffAGI 0
    scoreboard players set @s BuffCRT 0
    scoreboard players set @s BuffLUK 0
    scoreboard players set @s LVL 1
    scoreboard players set @s EXP 0
    scoreboard players set @s NextEXP 50
    scoreboard players set @s Gold 200

# ステータスの適用
    function player:status/update

###################################
# HP/MaxHP ... 現在のHP/最大HP MAX-99999
# MP/MaxMP ... 現在のHP/最大MP MAX-99999
# HPR ... HP回復速度 MAX-∞
# MPR ... MP回復速度 MAX-∞
# STR ... 物理攻撃力 MAX-∞
# INT ... 魔法攻撃力 MAX-∞
# DEX ... 遠距離攻撃力 MAX-∞
# DEF ... 防御力 MAX-999
# AGI ... 移動速度上昇 MAX-999
# CRT ... 会心率・攻撃倍率上昇 MAX-999
# LUK ... 経験値・ドロップ増加 MAX-999
###################################