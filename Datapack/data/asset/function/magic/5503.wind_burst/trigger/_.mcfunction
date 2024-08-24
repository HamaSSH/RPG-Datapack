#> asset:magic/5503.wind_burst/trigger/_
# 魔法発動時の処理

# 魔法の弾の召喚
    execute summon armor_stand run function asset:magic/5503.wind_burst/trigger/init

# 演出
    playsound entity.breeze.shoot master @a ~ ~ ~ 0.7 1.2
    playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 0.5 1.3
    playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 1.0 1.0
    playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 1.0 1.0
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.5 1.0
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.5 1.0