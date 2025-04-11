#> player:buff/manager/root/_
# バフ管理マーカーを乗せるAECの設定

# バフ管理マーカーをTargetタグのついたAECに乗せる
    execute unless entity @e[type=area_effect_cloud,tag=Target,distance=..0.01] run tag @s add Target
    execute as @e[type=marker,tag=BuffInit,distance=..0.01] run ride @s mount @e[type=area_effect_cloud,tag=Target,distance=..0.01,limit=1]

# Targetタグがついていなければkill
    execute unless entity @s[tag=Target] run kill @s

# 既に異なるバフによってAECが存在していなければ初期化処理
    execute if entity @s[tag=Target] run function player:buff/manager/root/init