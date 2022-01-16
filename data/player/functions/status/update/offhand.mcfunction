# storage offhandにInventory[{Slot:-106b}].tag.bonusを代入
  data modify storage player:temp offhand set from storage player:temp Inventory[{Slot:-106b}].tag.bonus
# offhandにステータス加算アイテムがあれば加算
  execute if data storage player:temp offhand.hp store result score $Bonus Temporary run data get storage player:temp offhand.hp
  execute if data storage player:temp offhand.hp run scoreboard players operation @s hp_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.mp store result score $Bonus Temporary run data get storage player:temp offhand.mp
  execute if data storage player:temp offhand.mp run scoreboard players operation @s mp_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.hp_regen store result score $Bonus Temporary run data get storage player:temp offhand.hp_regen
  execute if data storage player:temp offhand.hp_regen run scoreboard players operation @s hp_regen_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.mp_regen store result score $Bonus Temporary run data get storage player:temp offhand.mp_regen
  execute if data storage player:temp offhand.mp_regen run scoreboard players operation @s mp_regen_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.ad store result score $Bonus Temporary run data get storage player:temp offhand.ad
  execute if data storage player:temp offhand.ad run scoreboard players operation @s ad_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.ap store result score $Bonus Temporary run data get storage player:temp offhand.ap
  execute if data storage player:temp offhand.ap run scoreboard players operation @s ap_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.dex store result score $Bonus Temporary run data get storage player:temp offhand.dex
  execute if data storage player:temp offhand.dex run scoreboard players operation @s dex_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.def store result score $Bonus Temporary run data get storage player:temp offhand.def
  execute if data storage player:temp offhand.def run scoreboard players operation @s def_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.spd store result score $Bonus Temporary run data get storage player:temp offhand.spd
  execute if data storage player:temp offhand.spd run scoreboard players operation @s spd_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.crt store result score $Bonus Temporary run data get storage player:temp offhand.crt
  execute if data storage player:temp offhand.crt run scoreboard players operation @s crt_bonus += $Bonus Temporary
  execute if data storage player:temp offhand.luk store result score $Bonus Temporary run data get storage player:temp offhand.luk
  execute if data storage player:temp offhand.luk run scoreboard players operation @s luk_bonus += $Bonus Temporary
# リセット
  data remove storage player:temp offhand
  scoreboard players reset $Bonus