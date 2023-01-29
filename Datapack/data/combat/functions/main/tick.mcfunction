# 攻撃するプレイヤーをタグ付け
    tag @s add this
# 溜め攻撃ループ
    execute if entity @s[tag=DaggerTick] run function combat:main/dagger/skill/tick
    execute if entity @s[tag=SwordTick] run function combat:main/sword/skill/tick
    execute if entity @s[tag=HammerTick] run function combat:main/hammer/skill/tick
    execute if entity @s[tag=WandTick] run function combat:main/wand/skill/tick
# クールダウンスコアボード
    scoreboard players remove @s skill_cd 1
# リセット
    tag @s remove this