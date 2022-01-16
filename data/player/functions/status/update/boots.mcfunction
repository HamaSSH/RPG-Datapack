# storage bootsにInventory[{Slot:100b}].tag.bonusを代入
  data modify storage player:temp boots set from storage player:temp Inventory[{Slot:100b}].tag.bonus
# bootsスロットにステータス加算アイテムがあれば加算
  execute if data storage player:temp boots.hp store result score $Bonus Temporary run data get storage player:temp boots.hp
  execute if data storage player:temp boots.hp run scoreboard players operation @s hp_bonus += $Bonus Temporary
  execute if data storage player:temp boots.mp store result score $Bonus Temporary run data get storage player:temp boots.mp
  execute if data storage player:temp boots.mp run scoreboard players operation @s mp_bonus += $Bonus Temporary
  execute if data storage player:temp boots.hp_regen store result score $Bonus Temporary run data get storage player:temp boots.hp_regen
  execute if data storage player:temp boots.hp_regen run scoreboard players operation @s hp_regen_bonus += $Bonus Temporary
  execute if data storage player:temp boots.mp_regen store result score $Bonus Temporary run data get storage player:temp boots.mp_regen
  execute if data storage player:temp boots.mp_regen run scoreboard players operation @s mp_regen_bonus += $Bonus Temporary
  execute if data storage player:temp boots.ad store result score $Bonus Temporary run data get storage player:temp boots.ad
  execute if data storage player:temp boots.ad run scoreboard players operation @s ad_bonus += $Bonus Temporary
  execute if data storage player:temp boots.ap store result score $Bonus Temporary run data get storage player:temp boots.ap
  execute if data storage player:temp boots.ap run scoreboard players operation @s ap_bonus += $Bonus Temporary
  execute if data storage player:temp boots.dex store result score $Bonus Temporary run data get storage player:temp boots.dex
  execute if data storage player:temp boots.dex run scoreboard players operation @s dex_bonus += $Bonus Temporary
  execute if data storage player:temp boots.def store result score $Bonus Temporary run data get storage player:temp boots.def
  execute if data storage player:temp boots.def run scoreboard players operation @s def_bonus += $Bonus Temporary
  execute if data storage player:temp boots.spd store result score $Bonus Temporary run data get storage player:temp boots.spd
  execute if data storage player:temp boots.spd run scoreboard players operation @s spd_bonus += $Bonus Temporary
  execute if data storage player:temp boots.crt store result score $Bonus Temporary run data get storage player:temp boots.crt
  execute if data storage player:temp boots.crt run scoreboard players operation @s crt_bonus += $Bonus Temporary
  execute if data storage player:temp boots.luk store result score $Bonus Temporary run data get storage player:temp boots.luk
  execute if data storage player:temp boots.luk run scoreboard players operation @s luk_bonus += $Bonus Temporary
# リセット
  data remove storage player:temp boots
  scoreboard players reset $Bonus