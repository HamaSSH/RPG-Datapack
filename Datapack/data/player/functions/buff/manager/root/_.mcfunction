#> player:buff/manager/root/_
# バフ管理マーカーを乗せるAECの設定

# バフ管理マーカーを乗せる
    execute as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary run tag @s add Target
    execute unless entity @e[type=area_effect_cloud,tag=Target,distance=..0.01] run tag @s add Target
    execute as @e[type=marker,tag=BuffManager] unless predicate lib:has_vehicle run ride @s mount @e[type=area_effect_cloud,tag=Target,distance=..0.01,limit=1]

# 既に異なるバフによってAECが存在していなければ初期化処理
    execute if entity @s[tag=Target] run function player:buff/manager/root/init

# リセット
    tag @e[type=area_effect_cloud,tag=BuffRoot,tag=Target,distance=..0.01] remove Target