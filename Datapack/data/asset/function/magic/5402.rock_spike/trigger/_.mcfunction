#> asset:magic/5402.rock_spike/trigger/_
# 魔法発動時の処理

# 魔法の弾の召喚
    execute summon armor_stand run function asset:magic/5402.rock_spike/trigger/init

# 演出
    playsound block.stem.step master @a ~ ~ ~ 1.0 0.9
    playsound block.shroomlight.step master @a ~ ~ ~ 1.0 0.9