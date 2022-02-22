# 失敗処理
  tellraw @s ["",{"text":"ＭＰが足りない！","color":"red"},{"text":"   ( 必要ＭＰ: ","color":"gray"},{"score":{"name":"$MPCost","objective":"Temporary"},"color":"yellow"},{"text":" )","color":"gray"}]
  playsound minecraft:block.candle.extinguish master @s ~ ~ ~ 1 2
  playsound minecraft:block.candle.extinguish master @s ~ ~ ~ 1 2
  playsound minecraft:block.candle.extinguish master @s ~ ~ ~ 1 2
# 溜め攻撃リセット
  function core:trigger/sneak/reset