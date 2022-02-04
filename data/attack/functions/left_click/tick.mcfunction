# 溜め攻撃ループ
  execute if entity @s[tag=DaggerTick] run function attack:left_click/dagger/skill/tick
  execute if entity @s[tag=SwordTick] run function attack:left_click/sword/skill/tick
  execute if entity @s[tag=HammerTick] run function attack:left_click/hammer/skill/tick
# クールダウンスコアボード
  scoreboard players remove @s skill_cd 1