# 最終的なステータス = baseステータス
  scoreboard players operation @s hp_max = @s hp_base
  scoreboard players operation @s mp_max = @s mp_base
  scoreboard players operation @s hp_regen = @s hp_regen_base
  scoreboard players operation @s mp_regen = @s mp_regen_base
  scoreboard players operation @s ad = @s ad_base
  scoreboard players operation @s ap = @s ap_base
  scoreboard players operation @s dex = @s dex_base
  scoreboard players operation @s def = @s def_base
  scoreboard players operation @s spd = @s spd_base
  scoreboard players operation @s crt = @s crt_base
  scoreboard players operation @s luk = @s luk_base
# classステータス
#  scoreboard players operation @s hp_regen_bonus += @s hp_regen_class
#  scoreboard players operation @s mp_regen_bonus += @s mp_regen_class
#  scoreboard players operation @s ad_bonus += @s ad_class
#  scoreboard players operation @s ap_bonus += @s ap_class
#  scoreboard players operation @s dex_bonus += @s dex_class
#  scoreboard players operation @s def_bonus += @s def_class
#  scoreboard players operation @s spd_bonus += @s spd_class
# 補正ステータスリセット
  scoreboard players set @s hp_bonus 0
  scoreboard players set @s mp_bonus 0
  scoreboard players set @s hp_regen_bonus 0
  scoreboard players set @s mp_regen_bonus 0
  scoreboard players set @s ad_bonus 0
  scoreboard players set @s ap_bonus 0
  scoreboard players set @s dex_bonus 0
  scoreboard players set @s def_bonus 0
  scoreboard players set @s spd_bonus 0
  scoreboard players set @s crt_bonus 0
  scoreboard players set @s luk_bonus 0
# 装備の補正ステータス
  data modify storage player:temp Inventory set from entity @s Inventory
  data modify storage player:temp SelectedItem set from entity @s SelectedItem
  execute if data storage player:temp SelectedItem.tag.weapon run function player:status/update/mainhand
  execute if data storage player:temp Inventory[{Slot:-106b}].tag{weapon:"bow"} unless data storage player:temp SelectedItem.tag{weapon:"bow"} run function player:status/update/offhand
  # 職業のパッシブスキルからの補正
    function player:class/bonus/_
  execute if data storage player:temp Inventory[{Slot:-106b}].tag.offhand run function player:status/update/offhand
  execute if data storage player:temp Inventory.[{Slot:103b}].tag{armor:"helmet"} run function player:status/update/helmet
  execute if data storage player:temp Inventory.[{Slot:102b}].tag{armor:"chestplate"} run function player:status/update/chestplate
  execute if data storage player:temp Inventory.[{Slot:101b}].tag{armor:"leggings"} run function player:status/update/leggings
  execute if data storage player:temp Inventory.[{Slot:100b}].tag{armor:"boots"} run function player:status/update/boots
  execute if data storage player:temp Inventory[{Slot:9b}].tag.accessory run function player:status/update/accessory9
  execute if data storage player:temp Inventory[{Slot:10b}].tag.accessory run function player:status/update/accessory10
  execute if data storage player:temp Inventory[{Slot:11b}].tag.accessory run function player:status/update/accessory11
# 最終的なステータス += 補正ステータス
  scoreboard players operation @s hp_max += @s hp_bonus
  scoreboard players operation @s mp_max += @s mp_bonus
  scoreboard players operation @s hp_regen += @s hp_regen_bonus
  scoreboard players operation @s mp_regen += @s mp_regen_bonus
  scoreboard players operation @s ad += @s ad_bonus
  scoreboard players operation @s ap += @s ap_bonus
  scoreboard players operation @s dex += @s dex_bonus
  scoreboard players operation @s def += @s def_bonus
  scoreboard players operation @s spd += @s spd_bonus
  scoreboard players operation @s crt += @s crt_bonus
  scoreboard players operation @s luk += @s luk_bonus
# 最大値を超えた場合の調整
  function player:status/maxed
# attribute操作
  execute unless score @s PreviousSPD = @s spd run function player:status/spd/apply
# バフ、最大値を超えるように
#  scoreboard players operation @s hp_max += @s hp_buff
#  scoreboard players operation @s mp_max += @s mp_buff
#  scoreboard players operation @s hp_regen += @s hp_regen_buff
#  scoreboard players operation @s mp_regen += @s mp_regen_buff
#  scoreboard players operation @s ad += @s ad_buff
#  scoreboard players operation @s ap += @s ap_buff
#  scoreboard players operation @s dex += @s dex_buff
#  scoreboard players operation @s def += @s def_buff
#  scoreboard players operation @s spd += @s spd_buff
#  scoreboard players operation @s crt += @s crt_buff
#  scoreboard players operation @s luk += @s luk_buff

# scoreboard objectives add status dummy
# scoreboard players operation HP status = @s hp_max
# scoreboard players operation MP status = @s mp_max
# scoreboard players operation HP_regen status = @s hp_regen
# scoreboard players operation MP_regen status = @s mp_regen
# scoreboard players operation ad status = @s ad
# scoreboard players operation ap status = @s ap
# scoreboard players operation dex status = @s dex
# scoreboard players operation def status = @s def
# scoreboard players operation spd status = @s spd
# scoreboard players operation crt status = @s crt
# scoreboard players operation luk status = @s luk
# scoreboard players operation ad_class status = @s ad_class
# scoreboard players operation def_class status = @s def_class
# scoreboard players operation hp_ratio status = @s hp_ratio
# リセット
  data remove storage player:temp Inventory
  data remove storage player:temp SelectedItem
  data remove storage player:temp Data