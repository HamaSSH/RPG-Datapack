# クールダウンの計算
  execute store result score $Cooldown Temporary run data get storage actionbar:temp offhand.tag.cooldown
  execute store result score $TimeUsed Temporary run data get storage actionbar:temp offhand.tag.gametime
  execute store result score $Time Temporary run time query gametime
  execute if score @s cdr matches 1.. run function player:status/cd/reduction
  scoreboard players operation $Time Temporary -= $TimeUsed Temporary
  scoreboard players operation $Time Temporary *= #15 Constant
  scoreboard players operation $Time Temporary /= $Cooldown Temporary
# CD表示
  execute if score $Time Temporary matches ..0 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE160"}'
  execute if score $Time Temporary matches 1 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE161"}'
  execute if score $Time Temporary matches 2 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE162"}'
  execute if score $Time Temporary matches 3 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE163"}'
  execute if score $Time Temporary matches 4 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE164"}'
  execute if score $Time Temporary matches 5 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE165"}'
  execute if score $Time Temporary matches 6 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE166"}'
  execute if score $Time Temporary matches 7 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE167"}'
  execute if score $Time Temporary matches 8 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE168"}'
  execute if score $Time Temporary matches 9 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE169"}'
  execute if score $Time Temporary matches 10 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE16A"}'
  execute if score $Time Temporary matches 11 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE16B"}'
  execute if score $Time Temporary matches 12 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE16C"}'
  execute if score $Time Temporary matches 13 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE16D"}'
  execute if score $Time Temporary matches 14 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE16E"}'
  execute if score $Time Temporary matches 15.. run data modify storage actionbar:temp weapon2 set value '{"text":"\\uE16F"}'
# リセット
  scoreboard players reset $Cooldown
  scoreboard players reset $TimeUsed
  scoreboard players reset $Time