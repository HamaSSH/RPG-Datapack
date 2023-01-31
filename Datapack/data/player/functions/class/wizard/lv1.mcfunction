##########
#>
#

# 初期ステータス
    scoreboard players set @s level 1
    scoreboard players set @s lv_wizard 1
    scoreboard players set @s skill_level 1
    scoreboard players set @s xp 0
    scoreboard players set @s xp_next 50
    scoreboard players set @s hp 50
    scoreboard players set @s mp 80
    scoreboard players set @s hp_base 50
    scoreboard players set @s mp_base 80
    scoreboard players set @s hp_regen_base 25
    scoreboard players set @s mp_regen_base 25
    scoreboard players set @s ad_base 1
    scoreboard players set @s ap_base 3
    scoreboard players set @s dex_base 0
    scoreboard players set @s def_base 0
    scoreboard players set @s spd_base 0
    scoreboard players set @s crt_base 0
    scoreboard players set @s luk_base 0
    scoreboard players set @s cdr 0
    function player:status/update/_
    function player:class/wizard/on_levelup