#> player:combat/main/bow/skill/charging
# 溜め攻撃チャージ中の演出

scoreboard players add @s UsingBow 1
execute if score @s UsingBow matches 18..22 run particle crit ~ ~0.1 ~ 0.3 0.3 0.3 0.1 3 force
execute if score @s UsingBow matches 18..22 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.05 1.4
execute if score @s UsingBow matches 23..26 run particle crit ~ ~0.1 ~ 0.3 0.3 0.3 0.2 5 force
execute if score @s UsingBow matches 23..26 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.075 1.4
execute if score @s UsingBow matches 27..29 run particle crit ~ ~0.1 ~ 0.4 0.4 0.4 0.3 8 force
execute if score @s UsingBow matches 27..29 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1.4
execute if score @s UsingBow matches 30 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score @s UsingBow matches 31.. run particle crit ~ ~0.1 ~ 0.5 0.5 0.5 0.5 12 force
execute if score @s UsingBow matches 31.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.15 1.4