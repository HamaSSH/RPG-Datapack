##########
#>
#

# 職業のパッシブスキルによるステータス加算
    execute if predicate player:assassin/weapon run function player:class/bonus/ad
    execute if predicate player:fighter/weapon run function player:class/bonus/ad
    execute if predicate player:hunter/weapon run function player:class/bonus/dex
    execute if predicate player:knight/weapon run function player:class/bonus/ad
    execute if predicate player:warrior/weapon run function player:class/bonus/ad
    execute if predicate player:wizard/weapon run function player:class/bonus/ap
# 職業ステータスを加算
    scoreboard players operation @s hp_regen_bonus += @s hp_regen_class
    scoreboard players operation @s mp_regen_bonus += @s mp_regen_class
    scoreboard players operation @s ad_bonus += @s ad_class
    scoreboard players operation @s ap_bonus += @s ap_class
    scoreboard players operation @s dex_bonus += @s dex_class
    scoreboard players operation @s def_bonus += @s def_class
    scoreboard players operation @s spd_bonus += @s spd_class
    scoreboard players operation @s crt_bonus += @s crt_class
    scoreboard players operation @s luk_bonus += @s luk_class