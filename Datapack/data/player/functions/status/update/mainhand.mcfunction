##########
#>
#

# storage mainhandにSelectedItem.tag.bonusを代入
    data modify storage player:temp mainhand set from storage player:temp SelectedItem.tag.bonus
# mainhandにステータス加算アイテムがあれば加算
    execute if data storage player:temp mainhand.hp store result score $Bonus Temporary run data get storage player:temp mainhand.hp
    execute if data storage player:temp mainhand.hp run scoreboard players operation @s hp_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.mp store result score $Bonus Temporary run data get storage player:temp mainhand.mp
    execute if data storage player:temp mainhand.mp run scoreboard players operation @s mp_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.hp_regen store result score $Bonus Temporary run data get storage player:temp mainhand.hp_regen
    execute if data storage player:temp mainhand.hp_regen run scoreboard players operation @s hp_regen_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.mp_regen store result score $Bonus Temporary run data get storage player:temp mainhand.mp_regen
    execute if data storage player:temp mainhand.mp_regen run scoreboard players operation @s mp_regen_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.ad store result score $Bonus Temporary run data get storage player:temp mainhand.ad
    execute if data storage player:temp mainhand.ad run scoreboard players operation @s ad_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.ap store result score $Bonus Temporary run data get storage player:temp mainhand.ap
    execute if data storage player:temp mainhand.ap run scoreboard players operation @s ap_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.dex store result score $Bonus Temporary run data get storage player:temp mainhand.dex
    execute if data storage player:temp mainhand.dex run scoreboard players operation @s dex_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.def store result score $Bonus Temporary run data get storage player:temp mainhand.def
    execute if data storage player:temp mainhand.def run scoreboard players operation @s def_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.spd store result score $Bonus Temporary run data get storage player:temp mainhand.spd
    execute if data storage player:temp mainhand.spd run scoreboard players operation @s spd_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.crt store result score $Bonus Temporary run data get storage player:temp mainhand.crt
    execute if data storage player:temp mainhand.crt run scoreboard players operation @s crt_bonus += $Bonus Temporary
    execute if data storage player:temp mainhand.luk store result score $Bonus Temporary run data get storage player:temp mainhand.luk
    execute if data storage player:temp mainhand.luk run scoreboard players operation @s luk_bonus += $Bonus Temporary
# リセット
    data remove storage player:temp mainhand
    scoreboard players reset $Bonus