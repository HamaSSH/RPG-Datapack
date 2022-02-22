# 残り秒数計算
  scoreboard players operation $CDSec Temporary = $Cooldown Temporary
  scoreboard players operation $CDSec Temporary -= $Time Temporary
  scoreboard players operation $CDDec Temporary = $CDSec Temporary
  scoreboard players operation $CDSec Temporary /= #20 Constant
  scoreboard players operation $CDDec Temporary %= #20 Constant
  scoreboard players operation $CDDec Temporary /= #2 Constant
# 失敗処理
  tellraw @s ["",{"text":"クールダウン中！","color":"red"},{"text":"   ( 残り: ","color":"gray"},{"score":{"name":"$CDSec","objective":"Temporary"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"$CDDec","objective":"Temporary"},"color":"yellow"},{"text":"s","color":"yellow"},{"text":" )","color":"gray"}]
  playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 0.7 0.75
# リセット
  scoreboard players reset $CDSec
  scoreboard players reset $CDDec