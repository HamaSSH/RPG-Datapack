#> asset:magic/5101.fire_ball/trigger/_
# 魔法発動時の処理

# 魔法の弾の召喚
    execute summon armor_stand run function asset:magic/5101.fire_ball/trigger/init

# 演出
    playsound item.firecharge.use master @a ~ ~ ~ 0.8 1.4