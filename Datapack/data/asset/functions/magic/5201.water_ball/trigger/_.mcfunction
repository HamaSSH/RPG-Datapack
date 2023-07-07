#> asset:magic/5201.water_ball/trigger/_
# 魔法発動時の処理

# 魔法の弾の召喚
    execute summon armor_stand run function asset:magic/5201.water_ball/trigger/init

# 演出
    playsound ambient.underwater.exit master @a ~ ~ ~ 0.8 1.3
    playsound entity.bee.sting master @a ~ ~ ~ 1 1.3
    playsound block.shroomlight.place master @a ~ ~ ~ 0.6 1.5
    playsound entity.glow_squid.hurt master @a ~ ~ ~ 0.6 1