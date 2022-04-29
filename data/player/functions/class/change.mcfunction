# 職業ステータスリセット
    scoreboard players reset @s hp_regen_class
    scoreboard players reset @s mp_regen_class
    scoreboard players reset @s ad_class
    scoreboard players reset @s ap_class
    scoreboard players reset @s dex_class
    scoreboard players reset @s def_class
    scoreboard players reset @s spd_class
    scoreboard players reset @s crt_class
    scoreboard players reset @s luk_class
# パッシブスキル関連リセット
    execute if entity @s[team=Warrior] run function player:class/warrior/reset
    execute if entity @s[team=Wizard] run scoreboard players set @s cdr 0