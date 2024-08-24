#> asset:magic/5204.heal_rain/trigger/_
# 魔法発動時の処理

# ヒールエリアの召喚
    execute summon armor_stand run function asset:magic/5204.heal_rain/trigger/init

# 演出
    playsound entity.dolphin.splash master @a ~ ~ ~ 0.7 1.3
    playsound block.amethyst_block.chime master @a ~ ~ ~ 1 1.2