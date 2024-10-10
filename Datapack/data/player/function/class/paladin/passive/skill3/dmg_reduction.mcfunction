#> player:class/paladin/passive/skill3/dmg_reduction
# ダメージ50%カット！

# 防御計算式 → DmgReceived = DmgReceived / 2
    scoreboard players operation @s DmgReceived /= #2 Constant

# Shieldスコアを減らす
    scoreboard players remove @s Shield 1

# 演出
    playsound item.shield.block master @s ~ ~ ~ 0.15 1.2
    playsound entity.zombie.attack_wooden_door master @s ~ ~ ~ 0.15 1.6