#> player:combat/main/wand/charged
# 武器の当たり判定呼び出し

# 魔法の弾の初期設定
    summon area_effect_cloud ~ ~ ~ {Tags:["WandAEC","WandInit"],Duration:20}
    execute as @e[type=area_effect_cloud,tag=WandInit,distance=..0.01] run function player:combat/main/wand/init

# 演出
    particle witch ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
    playsound resource:custom.weapon.wand master @a ~ ~ ~ 1.0 1.0