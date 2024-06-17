#> player:status/mp/check/fail
# 行動に必要なMPを十分に持っていない

# チェック成功タグの削除
    tag @s remove MPCheckPass

# 失敗演出
    tellraw @s ["",{"text":"ＭＰが足りない！","color":"red"},{"text":"  ( 必要ＭＰ: ","color":"gray"},{"score":{"name":"$MPCost","objective":"Temporary"},"color":"yellow"},{"text":" )","color":"gray"}]
    playsound block.candle.extinguish master @s ~ ~ ~ 1 2
    playsound block.candle.extinguish master @s ~ ~ ~ 1 2
    playsound block.candle.extinguish master @s ~ ~ ~ 1 2