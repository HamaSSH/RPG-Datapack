# 失敗処理
  tellraw @s ["",{"text":"ＭＰが足りない！","color":"red"},{"text":"   ( 必要ＭＰ: ","color":"gray"},{"score":{"name":"$MPCost","objective":"Temporary"},"color":"yellow"},{"text":" )","color":"gray"}]
  playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1.0 2.0
# 溜め攻撃リセット
  function core:trigger/sneak/reset