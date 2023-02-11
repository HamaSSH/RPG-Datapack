##########
#>
#

# 基礎ステータス・スコアの設定
    scoreboard players set @s level 1
    scoreboard players set @s xp_next 50
    scoreboard players set @s xp 0
    scoreboard players set @s gold 200
    scoreboard players set @s hp 50
    scoreboard players set @s mp 50
    scoreboard players set @s BaseHP 50
    scoreboard players set @s BaseMP 50
    scoreboard players set @s BaseHPRegen 50
    scoreboard players set @s BaseMPRegen 50
    scoreboard players set @s BaseAD 1
    scoreboard players set @s BaseAP 0
    scoreboard players set @s BaseDEX 0
    scoreboard players set @s BaseDEF 0
    scoreboard players set @s BaseSPD 0
    scoreboard players set @s BaseCRT 0
    scoreboard players set @s BaseLUK 0
    scoreboard players set @s Arrow 0
    scoreboard players set @s LCArrow 0
    scoreboard players set @s PreviousArrow 0
    function player:status/update/_
# 内部スコアの初期化
    scoreboard players set @s sneak 0
    scoreboard players set @s HurtTime 0
    scoreboard players set @s skill_level 1
    scoreboard players set @s xp_assassin 0
    scoreboard players set @s xp_fighter 0
    scoreboard players set @s xp_knight 0
    scoreboard players set @s xp_warrior 0
    scoreboard players set @s xp_wizard 0
    scoreboard players set @s xp_hunter 0
    scoreboard players set @s lv_assassin 1
    scoreboard players set @s lv_fighter 1
    scoreboard players set @s lv_knight 1
    scoreboard players set @s lv_warrior 1
    scoreboard players set @s lv_wizard 1
    scoreboard players set @s lv_hunter 1
    scoreboard players set @s skill_cd 0
    scoreboard players set @s ElementAttack 0
    scoreboard players set @s FireAttack 0
    scoreboard players set @s WaterAttack 0
    scoreboard players set @s ThunderAttack 0
    scoreboard players set @s EarthAttack 0
    scoreboard players set @s WindAttack 0
    scoreboard players set @s cdr 0
# 当たり判定の無効化
    team join NoCollision @s

###################################
# hp 最大HP
# mp 最大MP
# hp_regen HP回復速度
# mp_regen MP回復速度
# ad 物理攻撃力
# ap 魔法攻撃力
# dex 遠距離(弓)攻撃力
# def 物理・魔法攻撃耐性
# spd 移動速度、回避率上昇
# crt クリティカル率、攻撃力上昇
# luk ドロップ率、命中率上昇
###################################