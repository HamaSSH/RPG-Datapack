#> asset:magic/5501.wind_ball/trigger/_
# 魔法発動時の処理

# 魔法の弾の召喚
    execute summon armor_stand run function asset:magic/5501.wind_ball/trigger/init

# 演出
    playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 1.0 1.0
    playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 1.0 1.0
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.9 1.0
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.9 1.0