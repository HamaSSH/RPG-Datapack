# 基礎ステータス・スコアの設定
  scoreboard players set @s level 1
  scoreboard players set @s xp_next 50
  scoreboard players set @s xp 0
  scoreboard players set @s gold 0
  scoreboard players set @s hp 50
  scoreboard players set @s mp 50
  scoreboard players set @s hp_base 50
  scoreboard players set @s mp_base 50
  scoreboard players set @s hp_regen_base 50
  scoreboard players set @s mp_regen_base 50
  scoreboard players set @s ad_base 1
  scoreboard players set @s ap_base 0
  scoreboard players set @s dex_base 0
  scoreboard players set @s def_base 0
  scoreboard players set @s spd_base 0
  scoreboard players set @s crt_base 0
  scoreboard players set @s luk_base 0
  function player:status/update/_
# 内部スコアの初期化
  scoreboard players set @s sneak 0
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