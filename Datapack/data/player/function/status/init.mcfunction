#> player:status/init
# ステータス関連スコアの初期化

scoreboard players set @s BaseHP 50
scoreboard players set @s BaseMP 50
scoreboard players set @s HP 50
scoreboard players set @s MP 50
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
scoreboard players set @s SkillTimer 0
scoreboard players set @s ElementTimer 0
scoreboard players set @s HunterEXP 0
scoreboard players set @s FighterEXP 0
scoreboard players set @s PaladinEXP 0
scoreboard players set @s WizardEXP 0
scoreboard players set @s HunterLVL 1
scoreboard players set @s FighterLVL 1
scoreboard players set @s PaladinLVL 1
scoreboard players set @s WizardLVL 1
scoreboard players set @s ChargeSkill 0
scoreboard players set @s PassiveWeapon 0
scoreboard players set @s PassiveSkill1 0
scoreboard players set @s PassiveSkill2 0
scoreboard players set @s PassiveSkill3 0
scoreboard players set @s PassiveSkill4 0
scoreboard players set @s TaskID 0
scoreboard players set @s TaskProgress 0
function player:status/update

###################################
# HP/HPMax ... 現在のHP/最大HP MAX-∞
# MP/MPMax ... 現在のHP/最大MP MAX-∞
# HPRegen ... HP回復速度 MAX-∞
# MPRegen ... MP回復速度 MAX-∞
# STR ... 物理攻撃力 MAX-∞
# INT ... 魔法攻撃力 MAX-∞
# DEX ... 遠距離攻撃力 MAX-∞
# DEF ... 防御力 MAX-999
# AGI ... 移動速度上昇 MAX-999
# CRT ... 会心率・攻撃倍率上昇 MAX-999
# LUK ... 経験値・ドロップ増加 MAX-999
###################################