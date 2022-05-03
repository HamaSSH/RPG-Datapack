# 毎回
    scoreboard players operation @s hp_base += /10 Temporary
    scoreboard players operation @s mp_base += /10 Temporary
    scoreboard players add @s hp_base 3
    scoreboard players add @s mp_base 3
    scoreboard players add @s dex_base 1
# 数レベルごと
    # HP(+自然回復)
        execute if score %2 Temporary matches 0 run scoreboard players add @s hp_base 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s hp_base 3
        execute if score %5 Temporary matches 0 run scoreboard players add @s hp_base 4
        execute if score %7 Temporary matches 0 run scoreboard players add @s hp_base 5
        execute if score %10 Temporary matches 1 run scoreboard players add @s hp_regen_base 10
        execute if score %10 Temporary matches 3 run scoreboard players add @s hp_regen_base 15
        execute if score %10 Temporary matches 7 run scoreboard players add @s hp_regen_base 20
        execute if score %10 Temporary matches 9 run scoreboard players add @s hp_regen_base 15
        execute if score %10 Temporary matches 0 run scoreboard players add @s hp_regen_base 50
    # MP(+自然回復)
        execute if score %2 Temporary matches 0 run scoreboard players add @s mp_base 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s mp_base 3
        execute if score %5 Temporary matches 0 run scoreboard players add @s mp_base 4
        execute if score %7 Temporary matches 0 run scoreboard players add @s mp_base 5
        execute if score %10 Temporary matches 1 run scoreboard players add @s mp_regen_base 20
        execute if score %10 Temporary matches 3 run scoreboard players add @s mp_regen_base 15
        execute if score %10 Temporary matches 7 run scoreboard players add @s mp_regen_base 10
        execute if score %10 Temporary matches 9 run scoreboard players add @s mp_regen_base 15
        execute if score %10 Temporary matches 0 run scoreboard players add @s mp_regen_base 60
    # 物理攻撃力
        execute if score %3 Temporary matches 0 run scoreboard players add @s ad_base 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s ad_base 1
    # 器用さ
        execute if score %3 Temporary matches 0 run scoreboard players add @s dex_base 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s dex_base 1
    # 防御力
        execute if score %3 Temporary matches 0 run scoreboard players add @s def_base 2
        execute if score %5 Temporary matches 0 run scoreboard players add @s def_base 3
    # 素早さ
        execute if score %2 Temporary matches 0 run scoreboard players add @s spd_base 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s spd_base 3
        execute if score %5 Temporary matches 0 run scoreboard players add @s spd_base 4
    # 幸運
        execute if score %2 Temporary matches 0 run scoreboard players add @s luk_base 2
        execute if score %3 Temporary matches 0 run scoreboard players add @s luk_base 3
        execute if score %5 Temporary matches 0 run scoreboard players add @s luk_base 4